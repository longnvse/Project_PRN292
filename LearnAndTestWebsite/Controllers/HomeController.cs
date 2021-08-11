using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using Group3_Project.Models;

namespace Group3_Project.Controllers {
    public class HomeController : Controller {
        DBProject db = new DBProject();
        [HttpGet]
        public ActionResult Demo() {
            var lessions = db.Lessons.SqlQuery("select * from Lessons");
            ViewBag.listL = lessions;
            return View();
        }

        public ActionResult Index() {
            var lessions = db.Lessons.SqlQuery("select * from Lessons");
            ViewBag.listL = lessions;
            return View();
        }

        [HttpGet]
        public ActionResult SignUp() {
            ViewBag.success = false;
            return View();
        }
        [HttpPost]
        public ActionResult SignUp(Account a) {
            if(db.Accounts.SqlQuery("select * from Accounts where username='" + a.Username + "'").Count() > 0) {
                ViewBag.success = false;
                ViewBag.userExist = "User already exist in system";
                return View();
            }
            if(!Regex.IsMatch(a.Email, @"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$")) {
                ViewBag.emailInvalid = "Email was invalid format! Example: abc@abc.com";
                return View();
            }
            a.Roles = "user";
            db.Accounts.Add(a);
            db.SaveChanges();
            a.Password = "";
            ViewBag.success = true;
            return View("Login");


        }
        [HttpGet]
        public ActionResult Login() {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Account a) {
            Account acc = db.Accounts.SingleOrDefault(n => n.Username == a.Username && n.Password == a.Password);
            if(acc != null) {
                Session["user"] = acc;
                return RedirectToAction("Index");
            } else {
                ViewBag.wrong = "Invalid username or password!";
                return View();
            }
        }

        public ActionResult Logout() {
            Session["user"] = null;
            return RedirectToAction("Index");
        }
        public ActionResult DetailViewCourse() {
            var lessions = db.Lessons.SqlQuery("select * from Lessons");
            ViewBag.listL = lessions;
            string lessid = Request.QueryString["lessid"];
            ViewBag.loadID = lessid;
            //var contents = db.Contents.SqlQuery("select * from Contents");
            //ViewBag.listC = contents;

            int id = Convert.ToInt32(lessid);
            var viewContent = db.Contents.SqlQuery("select * from Contents where lessonId = " + id + "");
            ViewBag.listC = viewContent;
            return View();
        }


        public ActionResult Test() {
            var lessions = db.Lessons.SqlQuery("select * from Lessons");
            ViewBag.listL = lessions;
            string lessid = Request.QueryString["lessid"];
            var questions = db.Questions.SqlQuery("select * from Question where  lessId = '" + lessid + "'");
            ViewBag.listQ = questions;
            var answers = db.Answers.SqlQuery("select * from Answer ");
            ViewBag.listA = answers;
            ViewBag.lid = lessid;

            return View();
        }

        [HttpPost]
        public ActionResult Result(FormCollection f) {
            var lessions = db.Lessons.SqlQuery("select * from Lessons");
            ViewBag.listL = lessions;
            string lessid = f["lessid"];

            string lessName = db.Lessons.SqlQuery("select * from Lessons where LessonId = '" + lessid + "'").FirstOrDefault().LessonName1;
            int lid = Convert.ToInt32(lessid);
            int totalQuestion = db.Questions.Where(o => o.lessId == lid).Count();
            Question[] quesid = db.Questions.SqlQuery("select * from Question where lessid = '" + lessid + "'").ToArray();
            int count = 0;
            List<int> listAnswer = new List<int>();
            foreach(var item in quesid) {
                string answerid = f[item.questionId + ""];
                listAnswer.Add(int.Parse(answerid));
                Answer a = db.Answers.SqlQuery("select * from Answer where answerid='" + answerid + "'").First();
                if(a.isAswer == true) {
                https://www.facebook.com/jasmine.studio.21/photos/p.202531551785581/202531551785581/?type=3&__cft__[0]=AZUHm3M0Adt1WIot-2zcqh-A0xuEYuHV5m8u6xXtmZK5CA6qyk3shM2nyXXRPI0omUtQaBG2yecGhoE5FMO_zvGzKkDFoUIA-rUJgM75ni-47c5guUr3cGY03eXlANbkwn4brEfBr-l2PAh6li3u4Z_jMW-gDga21Ip7veAN7a9i-q8YGn340ELg6moTPBRi1Fk&__tn__=R]-R
                    count++;
                }
            }
            Session["listAnswer"] = listAnswer;
            //int qid = Convert.ToInt32(questionid);
            double result = count * 100.0 / totalQuestion;
            string fresult = (string)string.Format("{0:0.##}", result);
            double ConverResult = Convert.ToDouble(fresult);
            string resultName = "";
            if(ConverResult <= 60) {
                resultName = "You must try harder!!";
            } else if(ConverResult > 60 && ConverResult <= 90) {
                resultName = "Good jobs!!";
            } else {
                resultName = "Great!!!";
            }
            ViewBag.count = count;
            ViewBag.result = ConverResult;
            ViewBag.lessname = lessName;
            ViewBag.totalQuestion = totalQuestion;
            ViewBag.lid = lessid;
            ViewBag.resultName = resultName;

            Session["lessid"] = lessid;
            Session["persenResult"] = fresult;
            Session["totalQ"] = totalQuestion;
            Session["totalCorrect"] = count;
            return View();
        }


        public ActionResult ViewResult() {
            var lessions = db.Lessons.SqlQuery("select * from Lessons");
            ViewBag.listL = lessions;
            string id = Session["lessid"].ToString();
            var questions = db.Questions.SqlQuery("select  * from Question where lessId = '" + id + "'");
            var answers = db.Answers.SqlQuery("select * from Answer");
            string persenResult = Session["persenResult"].ToString();
            string totalQ = Session["totalQ"].ToString();
            string totalCorrect = Session["totalCorrect"].ToString();


            ViewBag.lesid = id;
            ViewBag.persenResult = persenResult;
            ViewBag.totalQ = totalQ;
            ViewBag.totalCorrect = totalCorrect;
            ViewBag.listQResult = questions;
            ViewBag.listAResult = answers;
            return View();
        }

        [HttpGet]
        public ActionResult ChangePassword() {

            return View();
        }

        [HttpPost]
        public ActionResult ChangePassword(FormCollection f) {
            Account acc = (Account)Session["user"];
            if(!acc.Password.Equals(f["OldPassword"])) {
                ViewBag.errorPassword = "Old Password not correct";
                return View();
            } else {
                Account acc1 = db.Accounts.Find(acc.Username);
                db.Accounts.Remove(acc1);
                db.SaveChanges();
                acc.Password = f["Password"];
                db.Accounts.Add(acc);
                db.SaveChanges();
                ViewBag.success = true;
                return View();
            }
        }
    }
}
