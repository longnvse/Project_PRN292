
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/14/2021 21:56:25
-- Generated from EDMX file: C:\Users\shang\source\repos\Group3_Project\Group3_Project\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SE1434_Group3];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Contents]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contents];
GO
IF OBJECT_ID(N'[dbo].[Lessons]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Lessons];
GO
IF OBJECT_ID(N'[SE1434_Group3ModelStoreContainer].[Answer]', 'U') IS NOT NULL
    DROP TABLE [SE1434_Group3ModelStoreContainer].[Answer];
GO
IF OBJECT_ID(N'[SE1434_Group3ModelStoreContainer].[Question]', 'U') IS NOT NULL
    DROP TABLE [SE1434_Group3ModelStoreContainer].[Question];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Contents'
CREATE TABLE [dbo].[Contents] (
    [ContentID] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NULL,
    [Contents] nvarchar(max)  NULL,
    [Example] nvarchar(max)  NULL,
    [lessonId] int  NULL
);
GO

-- Creating table 'Lessons'
CREATE TABLE [dbo].[Lessons] (
    [LessonId] int IDENTITY(1,1) NOT NULL,
    [LessonName1] nvarchar(max)  NULL
);
GO

-- Creating table 'Questions'
CREATE TABLE [dbo].[Questions] (
    [questionId] int IDENTITY(1,1) NOT NULL,
    [questionName] nvarchar(max)  NULL,
    [lessId] int  NULL
);
GO

-- Creating table 'Answers'
CREATE TABLE [dbo].[Answers] (
    [answerId] int IDENTITY(1,1) NOT NULL,
    [answerName] nvarchar(max)  NULL,
    [quesid] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ContentID] in table 'Contents'
ALTER TABLE [dbo].[Contents]
ADD CONSTRAINT [PK_Contents]
    PRIMARY KEY CLUSTERED ([ContentID] ASC);
GO

-- Creating primary key on [LessonId] in table 'Lessons'
ALTER TABLE [dbo].[Lessons]
ADD CONSTRAINT [PK_Lessons]
    PRIMARY KEY CLUSTERED ([LessonId] ASC);
GO

-- Creating primary key on [questionId] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [PK_Questions]
    PRIMARY KEY CLUSTERED ([questionId] ASC);
GO

-- Creating primary key on [answerId] in table 'Answers'
ALTER TABLE [dbo].[Answers]
ADD CONSTRAINT [PK_Answers]
    PRIMARY KEY CLUSTERED ([answerId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------