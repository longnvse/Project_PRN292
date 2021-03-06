USE [master]
GO
/****** Object:  Database [SE1434_Group3]    Script Date: 16/07/2021 10:46:08 PM ******/
CREATE DATABASE [SE1434_Group3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SE1434_Group3', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SE1434_Group3.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SE1434_Group3_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SE1434_Group3_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SE1434_Group3] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SE1434_Group3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SE1434_Group3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SE1434_Group3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SE1434_Group3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SE1434_Group3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SE1434_Group3] SET ARITHABORT OFF 
GO
ALTER DATABASE [SE1434_Group3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SE1434_Group3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SE1434_Group3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SE1434_Group3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SE1434_Group3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SE1434_Group3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SE1434_Group3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SE1434_Group3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SE1434_Group3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SE1434_Group3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SE1434_Group3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SE1434_Group3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SE1434_Group3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SE1434_Group3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SE1434_Group3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SE1434_Group3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SE1434_Group3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SE1434_Group3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SE1434_Group3] SET  MULTI_USER 
GO
ALTER DATABASE [SE1434_Group3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SE1434_Group3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SE1434_Group3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SE1434_Group3] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SE1434_Group3] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SE1434_Group3]
GO
/****** Object:  User [SE1434]    Script Date: 16/07/2021 10:46:08 PM ******/
CREATE USER [SE1434] FOR LOGIN [SE1434] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 16/07/2021 10:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 16/07/2021 10:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Role] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Answer]    Script Date: 16/07/2021 10:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[answerId] [int] IDENTITY(1,1) NOT NULL,
	[answerName] [nvarchar](max) NULL,
	[isAswer] [bit] NULL,
	[quesid] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contents]    Script Date: 16/07/2021 10:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contents](
	[ContentID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Contents] [nvarchar](max) NULL,
	[Example] [nvarchar](max) NULL,
	[lessonId] [int] NULL,
 CONSTRAINT [PK_dbo.Contents] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lessons]    Script Date: 16/07/2021 10:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lessons](
	[LessonId] [int] IDENTITY(1,1) NOT NULL,
	[LessonName1] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Lessons] PRIMARY KEY CLUSTERED 
(
	[LessonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persons]    Script Date: 16/07/2021 10:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persons](
	[PersonID] [int] NULL,
	[LastName] [varchar](255) NULL,
	[FirstName] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[City] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Question]    Script Date: 16/07/2021 10:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[questionId] [int] IDENTITY(1,1) NOT NULL,
	[questionName] [nvarchar](max) NULL,
	[lessId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Results]    Script Date: 16/07/2021 10:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[ResultId] [int] IDENTITY(1,1) NOT NULL,
	[Mark] [real] NOT NULL,
	[Username] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Results] PRIMARY KEY CLUSTERED 
(
	[ResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 16/07/2021 10:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [nvarchar](max) NULL,
	[QuestionId] [int] NOT NULL,
	[Lessonid] [int] NOT NULL,
	[ResultID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Subjects] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202107080832296_InitialCreate', N'Project_PRN_SE1434_Group3.Models.ProjectDBContext', 0x1F8B0800000000000400CD57CD6EE33610BE17E83B083CB540D68CE33DB481B40BAF9D2C82AE9320CAEE35A0A5B1C3963F2A4965ED67EBA18FD457E8D0FAB514C776BA2D0A5D2472E69B998FF343FDF5C79FE1FB9514C11318CBB58AC870704A0250894EB95A4624778B373F91F7EFBEFF2EBC48E52AF852C98DBC1C6A2A1B9147E7B2734A6DF20892D981E489D1562FDC20D192B254D3B3D3D39FE9704801210862054178972BC7256C3EF073A2550299CB9998E914842DD77127DEA006D74C82CD580211B935FA5748DCC3EDDDF5437C317C3B7AFBF0D1E83C1B0D0A5D128C0567E8570C624102A69476CCA1D7E79F2DC4CE68B58C335C60E27E9D01CA2D98B0504673DE881F1AD8E9990F8C368A1554925BA7E59180C351C914EDAABF8A6F5233895C5E20E76EEDA3DEF019917192683C0812746D9D4F84F172FBD91E941827C14EC9933A6D30BBFC73124C72E172039182DC192650399F0B9EFC02EB7BFD1BA848E542B45D47E7716F6B0197D06206C6ADEF605106749592806EEBD1AE62ADD6D22962BD526E7446826B34CEE602EACC68F1123B6DE0232830CC417ACB9C03A33C066CB8ED59EFD8C20C340ADF2A8B988E58672498B1D527504BF718117C25C1255F415AAD945E7C561CCB12959CC9619FA15B66ED576DD27FDDD09D16DF3A9A903689DA4F5F6C158E713C802AD222EDA61FFC06AC9E4B6664BDCC675BDADB0EA9008EC19590AC4869EC248D23453B19D415F39CC3B56B4DFBA245FFAAFA1CDDD1E8C219CB32E4AED5F8CA95202EBADEE44D7C7C039005064DEC337DA0F6B6B684B9CD96D0D945D3E8E92537D64D996373E64F6F92CA9E58EF2076905C99EB70DD2DEE86FA4AC1BF6F9DF9DEA6D4056D68BDC44825D6EC2668A87D6B5A624F73338B9860E699F631D122976A570B7A49BB69086D8C66F570A4A6E2DB48CDEAE1484549B7518A953E42483B74760F91F64EB1D39CBB59F1525575456AEB757575AA282C337AFF9DA297E28508F143ED89A73EBDE3B57520075E6010FF2E268283EF0395C08C29BE00EB8AF94570909F752E22FF9F4B01B5361587DD0CFEF319CC3DA97BA76C6F441F3776D51333C923333F48B6FAB18DF69AD1FA8FC0DAE3F308A0E34664BF81BF3CFFEA21B77BFC15F5119174AED1FDC2CD713D365F391CFBE51AD2F68F423805CB970D84FF6D503807B00E1AD04AE64A2D74453686D6F6A812E99CC50C1C4B91A1B1717CC11287DB0958BBB9D27C612247910B3987F44ADDE42ECBDDD85A9073B175E90BE9CBF63737806D9FC39BCC7FD96F1102BAC93104B8511F722ED2DAEFCB7E95EC82F0C952961E7A85573A845BAE6BA46BAD0E042AE99B4206CA17EE3DC84C2098BD51317B82D7F88675FC09962C59575D7737C8FE83D8A63D9C72B6344CDA12A3D1F73FBFD4FFFDBEFB1B6D2FE86D2F0F0000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202107081412256_InitialCreate', N'Project_PRN_SE1434_Group3.Models.ContentDBContext', 0x1F8B0800000000000400CD57CD6EE33610BE17E83B083CB540D68CE33DB481B48BAC9D2C8CAE9320CAEE35A0A5B1C3962255920AEC67EBA18FD457E850BF3665C776B0400B5F246AE6E3371FE787FEE7AFBFC38FAB4C042FA00D573222C3C1390940262AE5721991C22EDEFD423E7EF8F187F03ACD56C1B7C66EE4ECD0539A883C5B9B5F526A9267C89819643CD1CAA8851D242AA32C55F4E2FCFC573A1C524008825841103E14D2F20CCA177C1D2B99406E0B26662A0561EA75FC1297A8C12DCBC0E42C8188DC6BF53B24F6E9FEE1F629BE1EBE1FBD7FFAAC55918F06952F09AE0467C82B06B120019352596691F5E55703B1D54A2EE31C1798785CE780760B260CD4D15C76E6C706767EE102A39D63039514C6AAEC44C0E1A8568AFAEE6FD29BB44AA296D7A8B95DBBA84B3D2382B25B909604FE5E9763A19DDD61B50735C659B0D7F2AC4D1BCC2EF73B0BC685B085864842613513E85CCC054F7E83F5A3FA0364240B2136A92379FCB6B5804BB8630EDAAE1F60B11DD0744202BAED4E7DFFD6BBEF5A453E95767441825BA4C2E602DA3CD95029B64AC36790A09985F49E590B1A8F799A42A9748F84B7E523B7029AED3033B1E4483063AB2F2097F63922F848821BBE82B459A9297C951C2B149DAC2EE0D02E7560E63B6F14D22E9DFA49E636651C85D92631F9543EAC76A51C56679D75A6DE6F3BAC0A38065B43266D5C1D91AAE8076D5EEF22DC52EB9A0CADBA4CD38DE89E7614CE589EA3761BEDA95E09E2AA378DDFC5A797695661D0C4ECA8D6966DBB13E61C5B82F7D5299CC20DD7C64E986573E64E6F9C663BCCBC83D82372B39DA7B55F829DF48D837BAE9C8E6D1D3E6827EB0D469AA1451934B4DCBAC6D5F32C2706134CEFAFEEB11245260FF48BD7B0EAB2DDC4A9978EC7E88A72071DB30B29A49E28FE51D0DE59781DD03FDBD76AC33769776F6BC4AB85B0CECBC3F3BB97A895097103E485A72E49E3B5B1900D9CC120FE538C052FABB9319831C917606C352B080ECD0B6FE8FF7F0630352615C74DE1FF78DE7127F1C189D61B87278C38F9C274F2CCF44F195BFDBC09F596317602D8A9A3CA6FA4AFCFA176D8EC1F43558647249D2BA45FD1DC5DEB270CA97EC18574F35A1D4EC0F06507E12ED912FB31667207DAD84CE542358263689B8C1A13EF3C6660598A0A5D69CB172CB1F8390163CAABC537260A34B9CEE6904EE55D61F3C25E1903D95C6C5D8A42FAFAFEE524DEE61CDEE5EECD7C8F109026C710E04E7E2AB8485BDE37FDCCDE07E192A52E176485572B845BAE5BA45B258F04AAE59B400ED215DB2364B94030732763F6026FE18617AA2FB064C9BAE99BFB410E1FC4B6ECE184B3A56699A9313A7FF75791BAFF8A1FFE05F135E47A5D0E0000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202107081432443_InitialCreate', N'Project_PRN_SE1434_Group3.Models.LessonDBContext', 0x1F8B0800000000000400CD57CD6EDB3810BE2FD0771078EA02A919C73D6C03B9452A2785B171124469AF012D8D1DB614A925A9C07EB63DEC23ED2B74A85F4BF25F8202BBF045A2663E7E339C998FFEF7EF7FFC4FAB4478CFA00D57724C868353E2818C54CCE5724C32BB78F707F9F4F1CD6FFE659CACBC6F95DDC8D9A1A73463F2646D7A4EA9899E20616690F0482BA3167610A984B258D1B3D3D30F7438A4801004B13CCFBFCFA4E509E42FF81A2819416A3326662A0661CA75FC12E6A8DE0D4BC0A42C8231B9D3EA3B44F6F1EEFEE631BC1CBE1FBD7FFCA255968E06852FF12E0467C82B04B1201E9352596691F5F95703A1D54A2EC31417987858A780760B260C94D19C37E6C706767AE602A38D63051565C6AAE48580C3519929DA757F55BE499D49CCE525E6DCAE5DD4793EC7E41A8C71C0DDADCE03A19DD9E1640F0A88136FA7E1495D34585BEE77E20599B09986B184CC6A26D0399B0B1EFD09EB07F503E45866426C1247EAF8ADB5804BB8630ADAAEEF61D10A671A138FB6BD69D7BD76EE7916614FA51D9D11EF0689B0B980BA463652145AA5E10B48D0CC427CC7AC058D473C8D21CF728FC3D61DDDF3B0DA146B139B8E7833B6BA06B9B44F63828FC4BBE22B88AB9592C857C9B147D1C9EA0C0EED151C13DA26844F9B52E91710C259C631F0562893CF6E1D56764B3961E39515654AC66DBE056E08B644143922767243A368E74155B1DBD8D6BC9AE9418BF1518D19BA63CEF83396A698FB8DB953AE786131748277E1CBFB2F29306864B6B461CDB6DE090B8A2DA1F3D59D5E0C575C1B3B6196CD993BAB204E7A66DD53D891E16AB776A2BBBDD5E4BDB277CF85CF9123A18BD9E4F40AC34CB04BF288A166568FA39E632E034C30BDB36B0325B244EE9F028791CA6EEC83951F8EC70BFAB4825D9C7CDAC94BF73068EF343AD3AD7BB8FB7AA36B52EF5EF748A717FCB22E0F0B73AF500B13E2B4E199C7AE48C3B5B1900C9CC120FC4B048263BC8DC18C49BE00630B1920A886671D35FFFF282B35261647C9EB7FAA64DCE5F7A056ED5583A3C44B3E331D3D31FD3661ABDF37015F2C5039E35F284FFDF9B95F7C2A89D9A93D45598F493C57C8B960795D29D62B85A9DF643EDDBC23FB13307CD940B81BB3C4298CD5DB80563653B950558631AE4D469549E7006660598CE9B9D0962F5864F1738411E5D7916F4C64687299CC219ECADBCCA699BD300692B968DD727CBA7FFF5C7DDB9CFDDBD4BD995F1102D2E41802DCCACF191771CDFB6A4BFDEC807095527609B2C2EB18C22DD735D28D92470295E99B400AD2F5D80324A94030732B43F60CAFE18657A86B58B2685DCDCADD20870FA29D767FC2D952B3C494188DBFFBDF47DD1FBF8F3F010A3C9DD42A0E0000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202107081441278_InitialCreate', N'Project_PRN_SE1434_Group3.Models.SubjectDBcontext', 0x1F8B0800000000000400CD57DD6EDB3614BE1FD0771078D501A919C7BDD802B9456A2785B138C9A2B4B7012D1D3B6C295223A9C07EB65DEC91F60A3BD4BF253B72DC011B7C6351E77CFCCEC7F343FDFDE75FFEC7752CBC67D0862B3926C3C129F140862AE2723526A95DBEFB857CFCF0E627FF328AD7DED7D26EE4ECD0539A3179B23639A7D4844F1033338879A895514B3B08554C59A4E8D9E9E9AF7438A4801004B13CCFBF4FA5E531640FF838513284C4A64CCC5504C214EBF826C850BD1B16834958086372A7D53708EDE3DDFDCD6370397C3F7AFFF859AB34190D725FE25D08CE90570062493C26A5B2CC22EBF32F0602AB955C05092E30F1B04900ED964C1828A239AFCD0F0DECF4CC05466BC7122A4C8D55F12B0187A34229DA763F4A6F5229895A5EA2E676E3A2CEF44485D285939278EDBDCE27423BBB7EB50705C689B7D7F2A44A1BCC2EF73BF126A9B0A986B184D46A26D0395D081EFE069B07F51DE458A64234A923797CB7B5804BB86302DA6EEE61B91DD06C4A3CBAED4EDBFE9577D7358F7C26EDE88C783748852D045479D25029B04AC36790A09985E88E590B1A8F791641A67487C4EE2DDD43B929E627161EF1E66C7D0D72659FC604FF12EF8AAF212A570A225F24C73A4527AB53E8DBEBF7148CE33C8BFAE27B19E71A8C5192FF20CA3D18CC807EAD9B283EADF3B79BD5D8412CE37812DBDA4E3F85F802D6BB721CDB4191E6A6D0709B730E1C802D204D0E890DA626927799415548BB0857D4EAAE46F3B656B63FBAA7FFF9739624980F8D7E58AC7841DE0C27EF82D7F78538C7A0A1D9D11E2AB6D54E98E46C05ADB7B83532BDE2DAD829B36CC1DC714DA2B863D639883D2297DBB5B46ED77C2D7DE9E0FEE74E87F6AA36682DEB15461A63F1664143C5ADEE941DCF6C4431C1F4FE763251228D654F833A002BEF133BD0F21787E3357B4113AEB97E385ADD119A58F5EAE14875576822D5AB5D249FB60EAE9D2EB4932FADB1D0CEBF97EAB76D52ED5ED571AB5EFDA276FA2F359D62CA4D889BAACF3CCA0A69632CC403673008FE1013C131DEDA60CE245FE2F9E50394E04DE2AC7513FAFFDC4AA8319138EC6AF21F5F02B893B877CCBF72FAED98FBF299E9F089E9B7315BFFDC043C6EB667B47F70B21F83D19EEBFD18AF9BEADD99F3F2C8AEE6F2FE899D17DA98440B85AC739E4135E98F9CE7DDBAF769F393C79F82E1AB1AC27D0049DC110FB1062D6D6672A94A9D31B426A3D2A4750C73B02C42852EB4E54B165A7C1DE2E96637CBAF4CA46872192F209AC9DBD426A9BD3006E285D8BAB0FAF4E5FDB34BCB3667FF36714FE6DF080169720C016EE5A7948BA8E27DB52385F640B86429AA1659E1CD1AE1569B0AE946C903810AF9A690807435FF00712210CCDCCA803DC331DCF0EE790D2B166ECAF6BD1FA4FF20B665F7A79CAD348B4D8151FBBBCF78EABEE33FFC034071F126F90F0000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202107081449014_InitialCreate', N'Project_PRN_SE1434_Group3.Models.ResultDBContext', 0x1F8B0800000000000400CD57DB6EDB46107D2FD07F20F6A9051CAD65E5A131A8048E64074223DB109DBC1A2B72246FB31776776948DFD6877E527F21B3BC8BB464D929D0422FD272E6CC99B373A1FEF9EBEFF0C3468AE0118CE55A8DC970704A0250B14EB85A8F49E6566F7E231FDEFFFC537899C84DF0B5B21B793BF454764C1E9C4BCF29B5F10348660792C7465BBD7283584BCA124DCF4E4FDFD1E190024210C40A82709129C725E43FF0E744AB1852973131D709085B9EE39328470DAE99049BB218C6E4D6E83F2076F7B78BEBFBE872F876F4F6FE93D1593A1A14BE24B8109C21AF08C48A044C29ED9843D6E75F2C44CE68B58E523C60E26E9B02DAAD98B0506673DE981F9BD8E9994F8C368E15549C59A7E50B0187A35229DA757F95DEA45612B5BC44CDDDD6679DEB39260BB0997024E8863A9F08E3CD9E177B50409C047B0D4FEAA2C1DAF29F9360821E9981B182CC1926D0395B0A1EFF0EDB3BFD0DD4586542B48923757CB6738047183105E3B60B58EDA4334B484077BD69D7BD76EE791669CF941B9D91E01A89B0A580BA465A12454E1BF8040A0C7390DC32E7C0E015CF12C855EE71E8449C33F3AD8A1661AF097822DC61082C67A3F05B0DE30C029160CE369F41ADDD838FB221C115DF40529D94C85F14C71E472767B24EA0903675D2AF1EEC54C73866BDA3DCF4A33F87CD53B58434CB72B265B8DDAC0ADC085C896872446CE38646D1CB83AA5C9F625BF36A46072D66473563E89E2113CE599AA270ADA1539E04513171266FA297379F2C30686C9FE8C19A6D1D09AB89ADA1F3144323D32B6EAC9B32C796CC5FDD24913DB3EE2DEC51B88AB62B74B7B11ADD2B7BFFBDF039721E74311B4DAF304D892D92670C35B37A16F51CF31DC004337B5B76A24526D5E1117008A968C5364A71723C42D3896D94E6B48F14D28E1EDD4BA0BD5BE88CB4EEA51EEA89AE491DBDEE8D4E0F84653D3EBF8D7B055A9810BF101E79E28B33DA5A0772E00D06D19F622238E6DB18CC99E22BB0AE98FD0457E0596785FF7FD629B5361147EDD4FF747D71AFEFB30BEA85EBA6BDB10C30F1C3FB4A3D32133F30F38B649B5FDB683FBA93FA43F3F0C6A9F6CADE8553D4F498244B8DE40B928B6A4DBD721BF53B2CA4EDB7E2700A96AF1B08FF8EAC70F462E936A095CD4CAD74A536E6D5665499746F131C4B509E0BE3F88AC50E1FC7606DFE02F195890C4D2EE5129299BAC95C9AB90B6B412EC5CE7B4D480FC7CF57EE2EE7F026F5BFECBF9102D2E49802DCA88F191749CDFBAA5F8CFB207CA5942D82ACF0050AE1D6DB1AE95AAB23814AF9A69082F20D7607321508666F54C41EE135DCB05D3EC39AC5DB6A50EE0779FE2276650FA79CAD0D93B6C468FCFD3F3DEAFFEABDFF0EFED422CE1C0E0000, N'6.1.3-40302')
INSERT [dbo].[Accounts] ([Username], [Password], [Role]) VALUES (N'hoang1', N'1', N'Admin')
INSERT [dbo].[Accounts] ([Username], [Password], [Role]) VALUES (N'hoang2', N'2', N'User')
INSERT [dbo].[Accounts] ([Username], [Password], [Role]) VALUES (N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Answer] ON 

INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (1, N'System.out.println("Hello World");', 0, 1)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (2, N'cout << "Hello World";', 0, 1)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (3, N' Console.WriteLine("Hello World");', 1, 1)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (4, N' print ("Hello World");', 0, 1)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (5, N' True', 0, 2)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (6, N' False', 1, 2)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (7, N' //This is a comment', 1, 3)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (8, N' # This is a comment', 0, 3)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (9, N' /* This is a comment', 0, 3)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (10, N' str', 0, 4)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (11, N' string', 1, 4)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (12, N' Txt', 0, 4)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (13, N' myString', 0, 4)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (14, N'double x = 5;', 0, 5)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (15, N'
num x = 5', 0, 5)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (16, N'x = 5;
', 0, 5)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (17, N'int x = 5;  ', 1, 5)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (18, N'int x = 2.8;
', 0, 6)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (19, N'int x = 2.8D;
', 0, 6)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (20, N'byte x = 2.8
', 0, 6)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (21, N'double x = 2.8D;  ', 1, 6)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (22, N'length', 0, 7)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (23, N'Length    ', 1, 7)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (24, N'getLength()', 0, 7)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (25, N'length()
', 0, 7)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (26, N'The & sign
', 0, 8)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (27, N'The + sign  ', 1, 8)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (28, N'The * sign
', 0, 8)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (29, N'True', 0, 9)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (30, N'False', 1, 9)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (31, N'True', 1, 10)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (32, N'False', 0, 10)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (33, N'><', 0, 11)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (34, N'<>', 0, 11)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (35, N'=', 0, 11)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (36, N'==', 1, 11)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (37, N'[]', 1, 12)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (38, N'()', 0, 12)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (39, N'{}', 0, 12)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (40, N'0', 1, 13)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (41, N'1', 0, 13)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (42, N'(MyMethod)
', 0, 14)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (43, N'MyMethod.', 0, 14)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (44, N'myMethod[]', 0, 14)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (45, N'MyMethod()  ', 1, 14)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (46, N'myMethod[];', 0, 15)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (47, N'MyMethod;', 0, 15)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (48, N'(MyMethod);', 0, 15)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (49, N'MyMethod();  ', 1, 15)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (50, N'MyClass', 0, 16)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (51, N'class()', 0, 16)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (52, N'class', 1, 16)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (53, N'className', 0, 16)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (54, N'class MyClass = new myObj();', 0, 17)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (55, N'MyClass myObj = new MyClass();  ', 1, 17)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (56, N'new myObj = MyClass();', 0, 17)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (57, N'class myObj = new MyClass();', 0, 17)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (58, N'True', 1, 18)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (59, N'False', 0, 18)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (60, N'const', 0, 19)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (61, N'special', 0, 19)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (62, N'enum', 1, 19)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (63, N'void', 0, 19)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (64, N'x', 0, 20)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (65, N'%', 0, 20)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (66, N'*', 1, 20)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (67, N'#', 0, 20)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (68, N'final', 0, 21)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (69, N'public', 0, 21)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (70, N'private', 1, 21)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (71, N'abstract', 0, 21)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (72, N'if x > y:', 0, 22)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (73, N'if x > y then:', 0, 22)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (74, N'if (x > y)  ', 1, 22)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (75, N'x > y while {', 0, 23)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (76, N'while x > y:', 0, 23)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (77, N'while x > y {', 0, 23)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (78, N'while (x > y)  ', 1, 23)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (79, N'break', 0, 24)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (80, N'get', 0, 24)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (81, N'void', 0, 24)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (82, N'return', 1, 24)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (83, N'break', 1, 25)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (84, N'exit', 0, 25)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (85, N'stop', 0, 25)
INSERT [dbo].[Answer] ([answerId], [answerName], [isAswer], [quesid]) VALUES (86, N'return', 0, 25)
SET IDENTITY_INSERT [dbo].[Answer] OFF
SET IDENTITY_INSERT [dbo].[Contents] ON 

INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (1, N'Examples in Each Chapter', N'<p>Our "Try it Yourself" tool makes it easy to learn C#. You can edit C# code and view the result in your browser.</p>', N'<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-using">using</span> System<span class="token punctuation">;</span>

<span class="token keyword keyword-namespace">namespace</span> HelloWorld
<span class="token punctuation">{</span>
  <span class="token keyword keyword-class">class</span> <span class="token class-name">Program</span>
  <span class="token punctuation">{</span>
    <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">Main</span><span class="token punctuation">(</span><span class="token keyword keyword-string">string</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span>
    <span class="token punctuation">{</span>
      Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span><span class="token string">"Hello World!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>    
    <span class="token punctuation">}</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span></code></pre>
</div>', 1)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (2, N'Learn by Examples', N'<p>Learn by examples! This tutorial supplements all explanations with clarifying examples.</p>', N'<p><a href="cs_examples.asp" class="w3-button w3-light-grey w3-round">See All C# Examples</a></p>', 1)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (5, N'Why Use C#?', N'<p>This tutorial will teach you the basics of C#.</p><p>It is not necessary to have any prior programming experience.</p>', N'<ul>
<li>It is one of the most popular programming language in the world</li>
<li>It is easy to learn and simple to use</li>
<li>It has a huge community support</li>
<li>C# is an object oriented language which gives a clear structure to programs and allows code to be reused, lowering development costs.</li>
<li>As C# is close to C, <a href="/cpp/default.asp">C++</a> and <a href="/java/default.asp">Java</a>, it makes it easy for programmers to switch to C# or vice versa</li>
</ul>', 2)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (6, N'Get Started', N'<p>This tutorial will teach you the basics of C#.</p><p>It is not necessary to have any prior programming experience.</p>', N'<a class="w3-button ws-black w3-round" href="cs_getstarted.php">Get Started »</a>', 2)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (7, N'C# IDE', N'<p>The easiest way to get started with C#, is to use an IDE.</p>
<p>An IDE (Integrated Development Environment) is used to edit and compile code.</p>
<p>Applications written in C# use the .NET Framework, so it makes sense to use 
Visual Studio, as the program, the framework, and the language, are all created by 
Microsoft.</p>', N'', 3)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (8, N'Learning C# At W3Schools', N'<p>When learning C# at W3Schools.com, you can use our "Try it Yourself" tool, which shows both the code and the result. This will make it easier for 
you to understand every part as we move forward:</p>', N'<div class="w3-example">
<h4>Program.cs</h4>
<pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-using">using</span> System<span class="token punctuation">;</span>

<span class="token keyword keyword-namespace">namespace</span> HelloWorld
<span class="token punctuation">{</span>
  <span class="token keyword keyword-class">class</span> <span class="token class-name">Program</span>
  <span class="token punctuation">{</span>
    <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">Main</span><span class="token punctuation">(</span><span class="token keyword keyword-string">string</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span>
    <span class="token punctuation">{</span>
      Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span><span class="token string">"Hello World!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>    
    <span class="token punctuation">}</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span></code></pre>
<p>Result:</p>
<div class="notranslate w3-black w3-padding">
  <code>
  Hello World!</code>
</div>
</div>', 3)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (9, N'C# Syntax', N'<p>In the previous chapter, we created a C# file called Program.cs, and we used the following code to print "Hello World" to the screen:</p>', N'<div class="w3-example">
<h4>Program.cs</h4>
<pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-using">using</span> System<span class="token punctuation">;</span>

<span class="token keyword keyword-namespace">namespace</span> HelloWorld
<span class="token punctuation">{</span>
  <span class="token keyword keyword-class">class</span> <span class="token class-name">Program</span>
  <span class="token punctuation">{</span>
    <span class="token keyword keyword-static">static</span> <span class="token keyword keyword-void">void</span> <span class="token function">Main</span><span class="token punctuation">(</span><span class="token keyword keyword-string">string</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span>
    <span class="token punctuation">{</span>
      Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span><span class="token string">"Hello World!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>    
    <span class="token punctuation">}</span>
  <span class="token punctuation">}</span>
<span class="token punctuation">}</span></code></pre>
<p>Result:</p>
<div class="notranslate w3-black w3-padding">
  <code>
  Hello World!</code>
</div>
</div>', 4)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (10, N'Example explained', N'<p><strong>Line 1:</strong> <code class="w3-codespan">using System</code> means 
that we can use classes from the <code class="w3-codespan">System</code> namespace.</p>
<p><strong>Line 2:</strong> A blank line. C# ignores white space. However, multiple lines makes the code more readable.</p>
<p><strong>Line 3:</strong> <code class="w3-codespan">namespace</code> is a 
used to organize your code, and it is a container for classes and other namespaces.</p>
<p><strong>Line 4:</strong> The curly braces <code class="w3-codespan">{}</code> marks the beginning and the end of a block of code.</p>
<p><strong>Line 5:</strong> <code class="w3-codespan">class</code> is a 
container for data and methods, which brings functionality to your program. Every line of code that runs in C# must be inside a class. In our example, we named the class Program.</p>
', N'<div class="w3-example w3-padding-16">
<div class="notranslate w3-black w3-padding">
<code class="notranslate">
Hello World!
</code>
</div>
</div>', 4)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (11, N'C# Variables', N'<p>Variables are containers for storing data values. </p>
<p>In C#, there are different <strong>types</strong> of variables (defined with different keywords), for example:</p>', N'<ul>
 <li><code class="w3-codespan">int</code> - stores integers (whole numbers), without decimals, such as 123 or -123</li>
 <li><code class="w3-codespan">double</code> - stores floating point numbers, with decimals, such as 19.99 or -19.99</li>
 <li><code class="w3-codespan">char</code> - stores single characters, such as ''a'' or ''B''. 
 Char values are surrounded by single quotes</li>
 <li><code class="w3-codespan">string</code> - stores text, such as "Hello World". 
 String values are surrounded by double quotes</li>
 <li><code class="w3-codespan">bool</code> - stores values with two states: 
 true or false</li>
</ul>', 5)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (12, N'Declaring (Creating) Variables', N'<p>To create a variable, you must specify the type and assign it a value:</p>', N'<div class="w3-example">
<h3>Syntax</h3>
<pre class=" w3-white language-java" style="font-style: italic"><code class=" language-java">type variableName <span class="token operator">=</span> value<span class="token punctuation">;</span>
</code></pre>
</div>', 5)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (13, N'C# Data Types', N'<p>As explained in the variables chapter, a variable in C# must be a specified data type:</p>', N'<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-int">int</span> myNum <span class="token operator">=</span> <span class="token number">5</span><span class="token punctuation">;</span>               <span class="token comment">// Integer (whole number)</span>
<span class="token keyword keyword-double">double</span> myDoubleNum <span class="token operator">=</span> <span class="token number">5.99</span>D<span class="token punctuation">;</span>  <span class="token comment">// Floating point number</span>
<span class="token keyword keyword-char">char</span> myLetter <span class="token operator">=</span> <span class="token string">''D''</span><span class="token punctuation">;</span>         <span class="token comment">// Character</span>
<span class="token keyword keyword-bool">bool</span> myBool <span class="token operator">=</span> <span class="token keyword keyword-true">true</span><span class="token punctuation">;</span>          <span class="token comment">// Boolean</span>
<span class="token keyword keyword-string">string</span> myText <span class="token operator">=</span> <span class="token string">"Hello"</span><span class="token punctuation">;</span>     <span class="token comment">// String</span>
</code></pre>
</div><p>A data type specifies the size and type of variable values. It is important to use the correct data type for the corresponding variable; to avoid errors, to save time and memory, but it will also make your code more maintainable and readable. The most common 
data types are:</p><div class="w3-responsive" style="margin:-16px 0">
<table class="ws-table-all notranslate">
<tbody><tr>
<th style="width:20%">Data Type</th>
<th style="width:17%">Size</th>
<th style="width:63%">Description</th>
</tr>
<tr>
<td>int</td>
<td>4 bytes</td>
<td>Stores whole numbers from -2,147,483,648 to 2,147,483,647</td>
</tr>
<tr>
<td>long</td>
<td>8 bytes</td>
<td>Stores whole numbers from -9,223,372,036,854,775,808 to 
9,223,372,036,854,775,807</td>
</tr>
<tr>
<td>float</td>
<td>4 bytes</td>
<td>Stores fractional numbers. Sufficient for 
storing 6 to 7 decimal digits</td>
</tr>
<tr>
<td>double</td>
<td>8 bytes</td>
<td>Stores fractional numbers. Sufficient for 
storing 15 decimal digits</td>
</tr>
<tr>
<td>bool</td>
<td>1 bit</td>
<td>Stores true or false values</td>
</tr>
<tr>
<td>char</td>
<td>2 bytes</td>
<td>Stores a single character/letter, surrounded by single quotes</td>
</tr>
<tr>
<td>string</td>
<td>2 bytes per character</td>
<td>Stores a sequence of characters, surrounded by double quotes</td>
</tr>

</tbody>
</table>
</div><hr>', 6)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (14, N'Numbers', N'<p>Number types are divided into two groups:</p>', N'<p><strong>Integer types</strong> stores whole numbers, positive or negative (such as 123 or -456), without decimals. 
Valid types are <code class="w3-codespan">int</code> 
and <code class="w3-codespan">long</code>. Which type you should use, depends on the numeric value.</p>
<p><strong>Floating point types</strong> represents numbers with a fractional 
part, containing one or more decimals. Valid types are <code class="w3-codespan">float</code> and <code class="w3-codespan">double</code>.</p>
<div class="w3-note w3-panel">
<p>Even though there are many numeric types in C#, the most used for numbers 
are <code class="w3-codespan">int</code> (for whole numbers) and <code class="w3-codespan">double</code> (for floating point numbers). However, we will describe them all as you continue to 
read.</p>
</div><hr>', 6)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (15, N'What is C#?', N'<p>Learn by examples! This tutorial supplements all explanations with clarifying examples.</p>
<p>It is an object-oriented programming language created by Microsoft that runs 
on the .NET Framework.</p>
<p>C# has roots from the C family, and the language is close to other popular languages like <a href="/cpp/default.asp">C++</a> and <a href="/java/default.asp">Java</a>.</p>
<p>The first version was released in year 2002. The latest version, <strong>C# 8</strong>, was released in September 2019.</p>
<p>C# is used for:</p>', N'<ul>
<li>Mobile applications</li>
<li>Desktop applications</li>
<li>Web applications</li>
<li>Web services</li>
<li>Web sites</li>
<li>Games</li>
<li>VR</li>
<li>Database applications</li>
<li>And much, much more!</li>
</ul>', 2)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (16, N'WriteLine or Write', N'<p>The most common method to output something in C# is <code class="w3-codespan">WriteLine()</code>, but you can also use <code class="w3-codespan">Write()</code>.</p>
<p>The difference is that <code class="w3-codespan">WriteLine()</code> prints the output on a new line each time, while <code class="w3-codespan">Write()</code> prints on the same line 
(note that you should remember to add spaces when needed, for better 
readability):</p>', N'<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp">Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span><span class="token string">"Hello World!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>  
Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span><span class="token string">"I will print on a new line."</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

Console<span class="token punctuation">.</span><span class="token function">Write</span><span class="token punctuation">(</span><span class="token string">"Hello World! "</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
Console<span class="token punctuation">.</span><span class="token function">Write</span><span class="token punctuation">(</span><span class="token string">"I will print on the same line."</span><span class="token punctuation">)</span><span class="token punctuation">;</span>  
</code></pre>
<p>Result:</p>
<div class="notranslate w3-black w3-padding">
<code>
Hello World!<br>
I will print on a new line.<br>
Hello World! I will print on the same line.</code>
</div>
</div>', 4)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (17, N'Constants', N'<p>However, you can add the <code class="w3-codespan">const</code> keyword if you don''t want others (or yourself) to overwrite existing values (this will declare the variable as "constant", which means unchangeable and read-only):</p>', N'<div class="w3-example w3-pale-red">
<h3>Example</h3>
<pre class=" w3-white w3-border-red language-csharp"><code class=" language-csharp"><span class="token keyword keyword-const"><strong>const</strong></span> <span class="token keyword keyword-int">int</span> myNum <span class="token operator">=</span> <span class="token number">15</span><span class="token punctuation">;</span>
myNum <span class="token operator">=</span> <span class="token number">20</span><span class="token punctuation">;</span> <span class="token comment">// error</span>
</code></pre>
</div>', 5)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (18, N'Integer Types', N'<p>The <code class="w3-codespan">int</code> data type can store whole numbers from -2147483648 to 2147483647. <!-- This is used when short and byte is not large enough. --> In general, and in our tutorial, the <code class="w3-codespan">int</code> data type is 
the preferred data type when we create variables with a numeric value.</p>', N'<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-int">int</span> myNum <span class="token operator">=</span> <span class="token number">100000</span><span class="token punctuation">;</span>
Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span>myNum<span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
</div>', 6)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (19, N'Floating Point Types', N'<p>You should use a floating point type whenever you need a number with a decimal, such as 9.99 or 3.14515.</p>
<h3>Float</h3>
<p>The <code class="w3-codespan">float</code> data type can store fractional numbers from 3.4e−038 to 3.4e+038. Note that you should end the value with an "F":</p>
', N'<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-float">float</span> myNum <span class="token operator">=</span> <span class="token number">5.75F</span><span class="token punctuation">;</span>
Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span>myNum<span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
</div>', 6)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (20, N'C# Type Casting', N'<p>Type casting is when you assign a value of one data type to another type.</p>
<p>In C#, there are two types of casting:</p>', N'<ul>
<li><strong>Implicit Casting</strong> (automatically) - converting a smaller type 
to a larger type size<br>
  <code class="w3-codespan">char</code> -&gt; <code class="w3-codespan">int</code> -&gt; <code class="w3-codespan">long</code> -&gt; <code class="w3-codespan">float</code> -&gt; <code class="w3-codespan">double</code><br><br>
</li><li><strong>Explicit Casting</strong> (manually) - converting a larger type 
to a smaller size type<br>
  <code class="w3-codespan">double</code> -&gt; <code class="w3-codespan">float</code> -&gt; <code class="w3-codespan">long</code> -&gt; <code class="w3-codespan">int</code> -&gt; <code class="w3-codespan">char</code></li></ul>', 7)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (21, N'Implicit Casting', N'<p>Implicit casting is done automatically when passing a smaller size type to a 
larger size type:</p>', N'<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-int">int</span> myInt <span class="token operator">=</span> <span class="token number">9</span><span class="token punctuation">;</span>
<span class="token keyword keyword-double">double</span> myDouble <span class="token operator">=</span> myInt<span class="token punctuation">;</span>       <span class="token comment">// Automatic casting: int to double</span>

Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span>myInt<span class="token punctuation">)</span><span class="token punctuation">;</span>      <span class="token comment">// Outputs 9</span>
Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span>myDouble<span class="token punctuation">)</span><span class="token punctuation">;</span>   <span class="token comment">// Outputs 9</span>
</code></pre>
</div>', 7)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (22, N'Explicit Casting', N'<p>Explicit casting must be done manually by placing the type in parentheses 
in front of the value:</p>', N'<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-double">double</span> myDouble <span class="token operator">=</span> <span class="token number">9.78</span><span class="token punctuation">;</span>
<span class="token keyword keyword-int">int</span> myInt <span class="token operator">=</span> <span class="token punctuation">(</span><span class="token keyword keyword-int">int</span><span class="token punctuation">)</span> myDouble<span class="token punctuation">;</span>    <span class="token comment">// Manual casting: double to int</span>

Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span>myDouble<span class="token punctuation">)</span><span class="token punctuation">;</span>   <span class="token comment">// Outputs 9.78</span>
Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span>myInt<span class="token punctuation">)</span><span class="token punctuation">;</span>      <span class="token comment">// Outputs 9</span>
</code></pre>
</div>', 7)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (23, N'Type Conversion Methods', N'<p>It is also possible to convert data types explicitly by using built-in methods, such as <code class="w3-codespan">Convert.ToBoolean</code>, <code class="w3-codespan">Convert.ToDouble</code>, <code class="w3-codespan">Convert.ToString</code>, <code class="w3-codespan">Convert.ToInt32</code> (<code class="w3-codespan">int</code>) and <code class="w3-codespan">Convert.ToInt64</code> (<code class="w3-codespan">long</code>):</p>', N'<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-int">int</span> myInt <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span>
<span class="token keyword keyword-double">double</span> myDouble <span class="token operator">=</span> <span class="token number">5.25</span><span class="token punctuation">;</span>
<span class="token keyword keyword-bool">bool</span> myBool <span class="token operator">=</span> <span class="token keyword keyword-true">true</span><span class="token punctuation">;</span>

Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span>Convert<span class="token punctuation">.</span><span class="token function">ToString</span><span class="token punctuation">(</span>myInt<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>    <span class="token comment">// convert int to string</span>
Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span>Convert<span class="token punctuation">.</span><span class="token function">ToDouble</span><span class="token punctuation">(</span>myInt<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>    <span class="token comment">// convert int to double</span>
Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span>Convert<span class="token punctuation">.</span><span class="token function">ToInt32</span><span class="token punctuation">(</span>myDouble<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>  <span class="token comment">// convert double to int</span>
Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span>Convert<span class="token punctuation">.</span><span class="token function">ToString</span><span class="token punctuation">(</span>myBool<span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>   <span class="token comment">// convert bool to string</span></code></pre>

</div>', 7)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (24, N'Get User Input', N'<p>You have already learned that <code class="w3-codespan">Console.WriteLine()</code> is used to output (print) values. Now we will use <code class="w3-codespan">
Console.ReadLine()</code> to get user input.</p>
<p>In the following example, the user can input his or hers username, which is stored in the 
variable <code class="w3-codespan">userName</code>. Then we print the value of 
<code class="w3-codespan">
userName</code>:</p>', N'<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token comment">// Type your username and press enter</span>
Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span><span class="token string">"Enter username:"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

<span class="token comment">// Create a string variable and get user input from the keyboard and store it in the variable</span>
<span class="token keyword keyword-string">string</span> userName <span class="token operator">=</span> Console<span class="token punctuation">.</span><span class="token function">ReadLine</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>

<span class="token comment">// Print the value of the variable (userName), which will display the input value</span>
Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span><span class="token string">"Username is: "</span> <span class="token operator">+</span> userName<span class="token punctuation">)</span><span class="token punctuation">;</span></code></pre>

</div>', 8)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (25, N'User Input and Numbers', N'<p>The <code class="w3-codespan">Console.ReadLine()</code> method returns a <code class="w3-codespan">string</code>. Therefore, you cannot get information from another data type, such as <code class="w3-codespan">int</code>. The following program will cause an error:</p>', N'<p>The <code class="w3-codespan">Console.ReadLine()</code> method returns a <code class="w3-codespan">string</code>. Therefore, you cannot get information from another data type, such as <code class="w3-codespan">int</code>. The following program will cause an error:</p>
<div class="w3-example w3-pale-red">
<h3>Example</h3>
<pre class=" w3-white w3-border-red language-csharp"><code class=" language-csharp">Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span><span class="token string">"Enter your age:"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token keyword keyword-int">int</span> age <span class="token operator">=</span> Console<span class="token punctuation">.</span><span class="token function">ReadLine</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span><span class="token string">"Your age is: "</span> <span class="token operator">+</span> age<span class="token punctuation">)</span><span class="token punctuation">;</span></code></pre>
<p>The error message will be something like this:</p>
<div class="w3-padding notranslate w3-black">
<code>
Cannot implicitly convert type ''string'' to ''int''</code>
</div>
<br>
</div>
<p>Like the error message says, you cannot implicitly convert type ''string'' to 
''int''. </p>
<p>Luckily, for you, you just learned from the <a href="cs_type_casting.asp">previous chapter (Type Casting)</a>, that you can convert 
any type explicitly, by using one of the <code class="w3-codespan">
Convert.To</code> methods:</p>
<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp">Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span><span class="token string">"Enter your age:"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token keyword keyword-int">int</span> age <span class="token operator">=</span> Convert<span class="token punctuation">.</span><span class="token function">ToInt32</span><span class="token punctuation">(</span>Console<span class="token punctuation">.</span><span class="token function">ReadLine</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
Console<span class="token punctuation">.</span><span class="token function">WriteLine</span><span class="token punctuation">(</span><span class="token string">"Your age is: "</span> <span class="token operator">+</span> age<span class="token punctuation">)</span><span class="token punctuation">;</span></code></pre>

</div>', 8)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (26, N'C# Operators', N'<p>Operators are used to perform operations on variables and values.</p>
<p>In the example below, we use the
<code class="w3-codespan">+</code> <strong>operator</strong> to add together two values:</p>', N'<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">100</span> <span class="token operator">+</span> <span class="token number">50</span><span class="token punctuation">;</span>
</code></pre>
</div>
<p>Although the <code class="w3-codespan">+</code> operator is often used to add together two values, like in the example above, it can also be used to add together a variable and a value, or a variable and another variable:</p>
<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-int">int</span> sum1 <span class="token operator">=</span> <span class="token number">100</span> <span class="token operator">+</span> <span class="token number">50</span><span class="token punctuation">;</span>        <span class="token comment">// 150 (100 + 50)</span>
<span class="token keyword keyword-int">int</span> sum2 <span class="token operator">=</span> sum1 <span class="token operator">+</span> <span class="token number">250</span><span class="token punctuation">;</span>      <span class="token comment">// 400 (150 + 250)</span>
<span class="token keyword keyword-int">int</span> sum3 <span class="token operator">=</span> sum2 <span class="token operator">+</span> sum2<span class="token punctuation">;</span>     <span class="token comment">// 800 (400 + 400)</span>
</code></pre>
</div>
<hr>', 9)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (27, N'Arithmetic Operators', N'<p>Arithmetic operators are used to perform common mathematical operations:</p>', N'<div class="w3-responsive" style="margin:-16px 0">
<table class="ws-table-all notranslate">
<tbody><tr>
<th style="width:15%">Operator</th>
<th style="width:18%">Name</th>
<th style="width:40%">Description</th>
<th style="width:17%;">Example</th>
<th style="width:10%">Try it</th>
</tr>
<tr>
<td>+</td>
<td>Addition</td>
<td>Adds together two values</td>
<td>x + y</td>
</tr>
<tr>
<td>-</td>
<td>Subtraction</td>
<td>Subtracts one value from another</td>
<td>x - y</td>
</tr>
<tr>
<td>*</td>
<td>Multiplication</td>
<td>Multiplies two values</td>
<td>x * y</td>
</tr>
<tr>
<td>/</td>
<td>Division</td>
<td>Divides one value by another</td>
<td>x / y</td>
</tr>
<tr>
<td>%</td>
<td>Modulus</td>
<td>Returns the division remainder</td>
<td>x % y</td>
</tr>
<tr>
<td>++</td>
<td>Increment</td>
<td>Increases the value of a variable by 1</td>
<td>x++</td>
</tr>
<tr>
<td>--</td>
<td>Decrement</td>
<td>Decreases the value of a variable by 1</td>
<td>x--</td>
</tr>
</tbody>
</table>
</div>', 9)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (28, N'C# Assignment Operators', N'
Assignment operators are used to assign values to variables.', N'<p>In the example below, we use the <strong>assignment</strong> operator (<code class="w3-codespan">=</code>) 
to assign the value <strong>10</strong> to a variable called <strong>x</strong>:</p>
<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span>
</code></pre>
</div>
<p>The <strong>addition assignment</strong> operator (<code class="w3-codespan">+=</code>) adds a value to a variable:</p>
<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp"><span class="token keyword keyword-int">int</span> x <span class="token operator">=</span> <span class="token number">10</span><span class="token punctuation">;</span>
x <span class="token operator">+=</span> <span class="token number">5</span><span class="token punctuation">;</span>
</code></pre>
</div>
<p>A list of all assignment operators:</p>
<div class="w3-responsive" style="margin:-16px 0">
<table class="ws-table-all notranslate">
<tbody><tr>
<th style="width:30%">Operator</th>
<th style="width:30%">Example</th>
<th style="width:30%">Same As</th>
</tr>
<tr>
<td>=</td>
<td>x = 5</td>
<td>x = 5</td>
</tr>
  <tr>
<td>+=</td>
<td>x += 3</td>
<td>x = x + 3</td>
  </tr>
  <tr>
<td>-=</td>
<td>x -= 3</td>
<td>x = x - 3</td>
  </tr>
  <tr>
<td>*=</td>
<td>x *= 3</td>
<td>x = x * 3</td>
  </tr>
  <tr>
<td>/=</td>
<td>x /= 3</td>
<td>x = x / 3</td>
 </tr>
  <tr>
<td>%=</td>
<td>x %= 3</td>
<td>x = x % 3</td>
  </tr>
  <tr>
<td>&amp;=</td>
<td>x &amp;= 3</td>
<td>x = x &amp; 3</td>
  </tr>
  <tr>
<td>|=</td>
<td>x |= 3</td>
<td>x = x | 3</td>
  </tr>
<tr>
<td>^=</td>
<td>x ^= 3</td>
<td>x = x ^ 3</td>
</tr>
<tr>
<td>&gt;&gt;=</td>
<td>x &gt;&gt;= 3</td>
<td>x = x &gt;&gt; 3</td>
</tr>
<tr>
<td>&lt;&lt;=</td>
<td>x &lt;&lt;= 3</td>
<td>x = x &lt;&lt; 3</td>
</tr>
</tbody></table>
</div>', 9)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (29, N'Math.Max(x,y)', N'<p>The <code class="w3-codespan">Math.Max(<em>x</em>,<em>y</em>)</code> method can be used to find the highest value of <em>x</em> and
<em>y</em>:</p>', N'<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp">Math<span class="token punctuation">.</span><span class="token function">Max</span><span class="token punctuation">(</span><span class="token number">5</span><span class="token punctuation">,</span> <span class="token number">10</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
<p>
<a target="_blank" class="w3-btn" href="trycs.php?filename=demo_math_max">Try it Yourself »</a>
</p>
</div><hr>', 10)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (30, N'Math.Min(x,y)', N'<p>The <code class="w3-codespan">Math.Min(<em>x</em>,<em>y</em>)</code> method can be used to find the lowest value of of <em>x</em> 
and <em>y</em>:</p>', N'<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp">Math<span class="token punctuation">.</span><span class="token function">Min</span><span class="token punctuation">(</span><span class="token number">5</span><span class="token punctuation">,</span> <span class="token number">10</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
</div><hr>', 10)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (31, N'Math.Sqrt(x)', N'<p>The <code class="w3-codespan">Math.Sqrt(<em>x</em>)</code> method returns the square root of <em>x</em>:</p>', N'<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp">Math<span class="token punctuation">.</span><span class="token function">Sqrt</span><span class="token punctuation">(</span><span class="token number">64</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
</div>', 10)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (32, N'Math.Abs(x)', N'<p>The <code class="w3-codespan">Math.Abs(<em>x</em>)</code> method returns the absolute (positive) value of <em>x</em>:</p>', N'<div class="w3-example">
<h3>Example</h3>
<pre class=" w3-white language-csharp"><code class=" language-csharp">Math<span class="token punctuation">.</span><span class="token function">Abs</span><span class="token punctuation">(</span><span class="token operator">-</span><span class="token number">4.7</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
</code></pre>
</div>', 10)
INSERT [dbo].[Contents] ([ContentID], [Title], [Contents], [Example], [lessonId]) VALUES (33, N'What is C#?', N'C# is pronounced "C-Sharp".', N'<p>It is an object-oriented programming language created by Microsoft that runs 
on the .NET Framework.</p>
<p>C# has roots from the C family, and the language is close to other popular languages like <a href="/cpp/default.asp">C++</a> and <a href="/java/default.asp">Java</a>.</p>
<p>The first version was released in year 2002. The latest version, <strong>C# 8</strong>, was released in September 2019.</p>
<p>C# is used for:</p>
<ul>
<li>Mobile applications</li>
<li>Desktop applications</li>
<li>Web applications</li>
<li>Web services</li>
<li>Web sites</li>
<li>Games</li>
<li>VR</li>
<li>Database applications</li>
<li>And much, much more!</li>
</ul>', 2)
SET IDENTITY_INSERT [dbo].[Contents] OFF
SET IDENTITY_INSERT [dbo].[Lessons] ON 

INSERT [dbo].[Lessons] ([LessonId], [LessonName1]) VALUES (1, N'C# Home')
INSERT [dbo].[Lessons] ([LessonId], [LessonName1]) VALUES (2, N'C# Intro')
INSERT [dbo].[Lessons] ([LessonId], [LessonName1]) VALUES (3, N'C# Get Start')
INSERT [dbo].[Lessons] ([LessonId], [LessonName1]) VALUES (4, N'C# Syntax')
INSERT [dbo].[Lessons] ([LessonId], [LessonName1]) VALUES (5, N'C# Variables')
INSERT [dbo].[Lessons] ([LessonId], [LessonName1]) VALUES (6, N'C# Data Types')
INSERT [dbo].[Lessons] ([LessonId], [LessonName1]) VALUES (7, N'C# Type Casting')
INSERT [dbo].[Lessons] ([LessonId], [LessonName1]) VALUES (8, N'C# User Input')
INSERT [dbo].[Lessons] ([LessonId], [LessonName1]) VALUES (9, N'C# Operators')
INSERT [dbo].[Lessons] ([LessonId], [LessonName1]) VALUES (10, N'C# Math')
SET IDENTITY_INSERT [dbo].[Lessons] OFF
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (1, N'What is a correct syntax to output "Hello World" in C#?', 1)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (2, N'C# is an alias of C++', 1)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (3, N'How do you insert COMMENTS in C# code?', 1)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (4, N'Which data type is used to create a variable that should store text?

', 1)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (5, N'How do you create a variable with the numeric value 5?', 1)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (6, N'How do you create a variable with the floating number 2.8?

', 2)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (7, N'Which property can be used to find the length of a string?', 2)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (8, N'Which operator is used to add together two values?', 2)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (9, N'The value of a string variable can be surrounded by single quotes.', 2)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (10, N'Type casting is when you assign a value of one data type to another type.', 2)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (11, N'Which operator can be used to compare two values?

', 3)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (12, N'To declare an array in C#, define the variable type with:', 3)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (13, N'Array indexes start with:', 3)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (14, N'How do you create a method in C#?', 3)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (15, N'How do you call a method in C#?', 3)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (16, N'Which keyword is used to create a class in C#?', 4)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (17, N'What is the correct way to create an object called myObj of MyClass?', 4)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (18, N'In C#, it is possible to inherit fields and methods from one class to another.', 4)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (19, N'What is the name of the ''special'' class that represents a group of constants?', 4)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (20, N'Which operator is used to multiply numbers?', 4)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (21, N'Which access modifier makes the code only accessible within the same class?', 5)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (22, N'How do you start writing an if statement in C#?', 5)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (23, N'How do you start writing a while loop in C#?', 5)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (24, N'Which keyword is used to return a value inside a method?', 5)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (25, N'Which statement is used to stop a loop?', 5)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (27, N'What is a correct syntax to output "Hello World" in C#?', 6)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (28, N'C# is an alias of C++', 6)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (29, N'How do you insert COMMENTS in C# code?', 6)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (30, N'Which data type is used to create a variable that should store text?

', 6)
INSERT [dbo].[Question] ([questionId], [questionName], [lessId]) VALUES (31, N'How do you create a variable with the numeric value 5?', 6)
SET IDENTITY_INSERT [dbo].[Question] OFF
USE [master]
GO
ALTER DATABASE [SE1434_Group3] SET  READ_WRITE 
GO
