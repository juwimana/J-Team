


-- ****************** SqlDBM: Microsoft SQL Server ******************
-- ******************************************************************

-- ************************************** [dbo].[User_Type]

CREATE TABLE [dbo].[User_Type]
(
  [Type]         tinyint NOT NULL,
  [Description]  varchar(50) NULL,

  CONSTRAINT [PK_User_Type] PRIMARY KEY CLUSTERED ([Type] ASC)
);

INSERT INTO User_Type ([Type], [Description]) VALUES (0, 'Admin');
INSERT INTO User_Type ([Type], [Description]) VALUES (1, 'Moderator');
INSERT INTO User_Type ([Type], [Description]) VALUES (2, 'User');

-- ************************************** [dbo].[Mod_Statuses]

CREATE TABLE [Mod_Statuses]
(
  [Status] int NOT NULL ,
  [Description] varchar(100) NOT NULL,

  CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED ([Status] ASC)
);

INSERT INTO Mod_Statuses (Status, Description) VALUES (0, 'Ok');
INSERT INTO Mod_Statuses (Status, Description) VALUES (1, 'Reported');
INSERT INTO Mod_Statuses (Status, Description) VALUES (2, 'Reveiwing');
INSERT INTO Mod_Statuses (Status, Description) VALUES (3, 'Removed');

-- ************************************** [dbo].[User_Main]

CREATE TABLE [dbo].[User_Main]
(
 [Email]           nvarchar(50) NOT NULL ,
 [ID_Num]          uniqueidentifier DEFAULT NEWSEQUENTIALID(),
 [Fname]           varchar(20) NOT NULL ,
 [Lname]           varchar(20) NOT NULL ,
 [Major]           varchar(20) NULL ,
 [Classification]  varchar(15) NULL ,
 [User_Type]       tinyint NOT NULL ,
 [Last_Login]      datetime NOT NULL ,
 [Phone]           varchar(15) NULL ,
 [User_Img]        image NULL ,
 [Birthday]        date NULL ,
 [Org_Affiliation] nvarchar(50) NULL ,
 [Banned]          bit DEFAULT 0,
 [Password]        varchar(100) NOT NULL,


 CONSTRAINT [PK_table_3] PRIMARY KEY CLUSTERED ([ID_Num] ASC),
 CONSTRAINT [FK_User_Type] FOREIGN KEY ([User_Type])  REFERENCES [dbo].[User_Type]([Type]),
 CONSTRAINT [Unique_Email] UNIQUE ([Email])
);
--GO






-- ************************************** [dbo].[User_Company]

--CREATE TABLE [User_Company]
--(
-- [CompanyID]      uniqueidentifier NOT NULL ,
-- [Name]           nvarchar(50) NOT NULL ,
-- [Country]        nvarchar(50) NOT NULL ,
-- [State]          nvarchar(50) NULL ,
-- [City]           nvarchar(50) NULL ,
-- [Address]        nvarchar(100) NULL ,
-- [Industry]       nvarchar(50) NULL ,
-- [Email]          nvarchar(50) NULL ,
-- [Phone]          varchar(15) NULL ,
-- [Cantact_Name]   nvarchar(50) NULL ,


-- CONSTRAINT [PK_User_Company] PRIMARY KEY CLUSTERED ([CompanyID] ASC)
--);
----GO
















-- ************************************** [dbo].[User_SAF]

--CREATE TABLE [dbo].[User_SAF]
--(
-- [Email]    nvarchar(50) NOT NULL ,
-- [ID_Num]   uniqueidentifier NOT NULL ,
-- [Term]     nvarchar(20) NULL ,
-- [Company]  nvarchar(50) NULL ,
-- [Linkedin] nvarchar(300) NULL ,
-- [Twitter]  nvarchar(300) NULL ,


-- CONSTRAINT [PK_User_SAF] PRIMARY KEY CLUSTERED ([ID_Num] ASC),
-- CONSTRAINT [FK_93] FOREIGN KEY ([ID_Num]) REFERENCES [dbo].[User_Main]([ID_Num])
--);
----GO


--CREATE NONCLUSTERED INDEX [fkIdx_93] ON [dbo].[User_SAF]
-- (
--  [Email] ASC,
--  [ID_Num] ASC
-- )
--GO













-- ************************************** [Gallery_Post]

CREATE TABLE [Gallery_Post]
(
 [GpostID]     uniqueidentifier NOT NULL ,
 [ID_Num]      uniqueidentifier NOT NULL ,
 [Title]      nvarchar(50) NOT NULL ,
 [Discription] nvarchar(200) NOT NULL ,
 [Date]        datetime NOT NULL ,
 [Image]       nvarchar(400) NOT NULL ,
 [Tags]        nvarchar(400) NULL ,
 [Hidden]      bit DEFAULT 0 ,
 [Mod_Status]  int DEFAULT 0 ,


 CONSTRAINT [PK_Gallery_Post] PRIMARY KEY CLUSTERED ([GpostID] ASC),
 CONSTRAINT [FK_240] FOREIGN KEY ([ID_Num])  REFERENCES [dbo].[User_Main]([ID_Num]),
 CONSTRAINT [FK_ModStatus] FOREIGN KEY ([Mod_Status]) REFERENCES [Mod_Statuses]([Status])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_240] ON [Gallery_Post]
 (
  [ID_Num] ASC
 )

--GO







-- ************************************** [Board_Post]

CREATE TABLE [Board_Post]
(
 [BpostID]     uniqueidentifier DEFAULT NEWSEQUENTIALID(),
 [ID_Num]      uniqueidentifier NOT NULL ,
 [Title]       nvarchar(50) NOT NULL ,
 [Description] nvarchar(1000) NOT NULL ,
 [Board]       tinyint NOT NULL ,
 [Date]        datetime NOT NULL ,
 [Expiration]  datetime NOT NULL ,
 [Tags]        nvarchar(400) NULL ,
 [Attachments] image NULL,
 [Hidden]      bit DEFAULT 0 ,
 [Mod_Status] int DEFAULT 0 ,


 CONSTRAINT [PK_Board_Post] PRIMARY KEY CLUSTERED ([BpostID] ASC),
 CONSTRAINT [FK_193] FOREIGN KEY ([ID_Num])  REFERENCES [User_Main]([ID_Num]),
 CONSTRAINT [FK_ModStatus1] FOREIGN KEY ([Mod_Status]) REFERENCES [Mod_Statuses]([Status])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_193] ON [Board_Post]
 (
  [ID_Num] ASC
 )

--GO







-- ************************************** [Options]

CREATE TABLE [Votes]
(
 [VoteID] uniqueidentifier NOT NULL ,
 [BpostID] uniqueidentifier NOT NULL,
 [Option] tinyint NOT NULL,
 [ID_Num] uniqueidentifier NOT NULL,


 CONSTRAINT [PK_Vote] PRIMARY KEY CLUSTERED ([VoteID] ASC),
 CONSTRAINT [FK_222] FOREIGN KEY ([BpostID])  REFERENCES [Board_Post]([BpostID]),
 CONSTRAINT [UID] FOREIGN KEY ([ID_Num]) REFERENCES [dbo].[User_Main]([ID_Num])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_222] ON [Votes]
 (
  [VoteID] ASC
 )

--GO







-- ************************************** [dbo].[Job_Posting]

CREATE TABLE [Job_Posting]
(
 [JobID]     uniqueidentifier DEFAULT NEWSEQUENTIALID(),
 [ID_Num]          uniqueidentifier NOT NULL ,
 [Position]        nvarchar(50) NOT NULL ,
 [College]			nvarchar(50) NOT NULL,
 [Company]			nvarchar(50) NOT NULL,
 [Major]			nvarchar(50) NOT NULL,
 [Graduation]		nvarchar(50) NOT NULL,
 [Industry]			nvarchar(50) NULL ,
 [Long_Disc]       varchar(1000) NOT NULL ,
 [Resources_Used]      nvarchar(200) NOT NULL ,
 [Lessons_Learned] varchar(1000) NULL ,
 [Country]        nvarchar(50) NOT NULL ,
 [State]          nvarchar(50) NULL ,
 [City]           nvarchar(50) NULL ,
 [Email]		  nvarchar(100) NULL ,
 [Twitter]         nvarchar(100) NULL ,
 [LinkedIn]        nvarchar(100) NULL ,
 [Facebook]        nvarchar(100) NULL ,
 [Instagram]       nvarchar(100) NULL ,
 [Image]           nvarchar(400) NULL ,
 [Pay]             money NULL ,
 [Date]				datetime NOT NULL ,
 [Benifits]        nvarchar(400) NULL ,
 [Hidden]          bit DEFAULT 0 ,
 [Mod_Status] int DEFAULT 0 ,


 CONSTRAINT [PK_Job_Posting] PRIMARY KEY CLUSTERED ([JobID] ASC),
 --CONSTRAINT [FK_99] FOREIGN KEY ([ID_Num])  REFERENCES [User_SAF]([ID_Num]),
 CONSTRAINT [FK_ModStatus2] FOREIGN KEY ([Mod_Status]) REFERENCES [Mod_Statuses]([Status])
);
--GO


--CREATE NONCLUSTERED INDEX [fkIdx_109] ON [Job_Posting]
-- (
--  [CompanyID] ASC
-- )

--GO

CREATE NONCLUSTERED INDEX [fkIdx_99] ON [Job_Posting]
 (
  [ID_Num] ASC
 )

--GO







-- ************************************** [dbo].[Intern_Posting]

CREATE TABLE [Intern_Posting]
(
 [InternID]     uniqueidentifier DEFAULT NEWSEQUENTIALID(),
 [ID_Num]          uniqueidentifier NOT NULL ,
 [College]         nvarchar(50) NOT NULL ,
 [Major]           nvarchar(50) NOT NULL ,
 [Classification]  nvarchar(50) NOT NULL ,
 [Term]            nvarchar(50) NOT NULL ,
 [Position]        nvarchar(50) NOT NULL ,
 [Company]         nvarchar(50) NOT NULL ,
 [Industry]        nvarchar(50) NULL ,
 [Country]         nvarchar(50) NOT NULL ,
 [State]           nvarchar(50) NOT NULL ,
 [City]            nvarchar(50) NOT NULL ,
 [Long_Disc]       varchar(1000) NOT NULL ,
 [Resources_Used]  varchar(200) NULL ,
 [Lessons_Learned] varchar(1000) NULL ,
 [Twitter]         nvarchar(100) NULL ,
 [LinkedIn]        nvarchar(100) NULL ,
 [Facebook]        nvarchar(100) NULL ,
 [Instagram]       nvarchar(100) NULL ,
 [Image]           nvarchar(400) NULL ,
 [Date]				datetime NOT NULL ,
 [Hidden]          bit DEFAULT 0,
 [Mod_Status] int DEFAULT 0 ,


 CONSTRAINT [PK_Intern_Posting] PRIMARY KEY CLUSTERED ([InternID] ASC),
 CONSTRAINT [FK_104] FOREIGN KEY ([ID_Num])  REFERENCES [User_Main]([ID_Num]),
 CONSTRAINT [FK_ModStatus3] FOREIGN KEY ([Mod_Status]) REFERENCES [Mod_Statuses]([Status])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_104] ON [Intern_Posting]
 (
  [ID_Num] ASC
 )

--GO

--CREATE NONCLUSTERED INDEX [fkIdx_112] ON [Intern_Posting]
-- (
--  [CompanyID] ASC
-- )

--GO








CREATE TABLE [BlogFollowers]
(
  [Following] uniqueidentifier NOT NULL ,
  [Follower]  uniqueidentifier NOT NULL ,

  CONSTRAINT [FK_Following] FOREIGN KEY ([Following]) REFERENCES [User_Main]([ID_Num]),
  CONSTRAINT [FK_Follower] FOREIGN KEY ([Follower]) REFERENCES [User_Main]([ID_Num])
);







-- ************************************** [Blog_Post]

CREATE TABLE [Blog_Post]
(
 [BlogID]     uniqueidentifier NOT NULL ,
 [ID_Num]     uniqueidentifier NOT NULL ,
 [Title]      nvarchar(50) NOT NULL ,
 [Body]       text NOT NULL ,
 [Attachment] nvarchar(400) NULL ,
 [Date]       datetime NOT NULL ,
 [Hidden]     bit DEFAULT 0,
 [Mod_Status] int DEFAULT 0 ,


 CONSTRAINT [PK_Blog_Post] PRIMARY KEY CLUSTERED ([BlogID] ASC),
 CONSTRAINT [FK_165] FOREIGN KEY ([ID_Num]) REFERENCES [User_Main]([ID_Num]),
 CONSTRAINT [FK_ModStatus4] FOREIGN KEY ([Mod_Status]) REFERENCES [Mod_Statuses]([Status])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_165] ON [Blog_Post]
 (
  [ID_Num] ASC
 )

--GO



-- ************************************** [Tags]

CREATE TABLE [Tags]
(
 [BlogID]     uniqueidentifier NOT NULL ,
 [Tag]        nvarchar(20) NOT NULL,

 CONSTRAINT [FK_BlogID] FOREIGN KEY ([BlogID]) REFERENCES [Blog_Post]([BlogID])
);



-- ************************************** [Post_Comment]

CREATE TABLE [Post_Comment]
(
 [BlogID]     uniqueidentifier NOT NULL ,
 [ID_Num]     uniqueidentifier NOT NULL ,
 [Name]       varchar(50) NOT NULL, -- display name
 [Date]       datetime NOT NULL ,
 [Comment]    nvarchar(300) NOT NULL ,
 [Hidden]     bit DEFAULT 0 ,
 [Mod_Status] int DEFAULT 0 ,


 CONSTRAINT [FK_180] FOREIGN KEY ([BlogID])  REFERENCES [Blog_Post]([BlogID]),
 CONSTRAINT [FK_184] FOREIGN KEY ([ID_Num])  REFERENCES [User_Main]([ID_Num]),
 CONSTRAINT [FK_ModStatus5] FOREIGN KEY ([Mod_Status]) REFERENCES [Mod_Statuses]([Status])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_180] ON [Post_Comment]
 (
  [BlogID] ASC
 )

--GO
