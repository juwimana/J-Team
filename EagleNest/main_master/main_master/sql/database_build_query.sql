


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


 CONSTRAINT [PK_table_3] PRIMARY KEY CLUSTERED ([Email] ASC, [ID_Num] ASC),
 CONSTRAINT [FK_User_Type] FOREIGN KEY ([User_Type])  REFERENCES [dbo].[User_Type]([Type]),
 CONSTRAINT [Unique_Email] UNIQUE (Email)
);
--GO






-- ************************************** [dbo].[User_Company]

CREATE TABLE [dbo].[User_Company]
(
 [CompanyID]      uniqueidentifier NOT NULL ,
 [Name]           nvarchar(50) NOT NULL ,
 [Country]        nvarchar(50) NOT NULL ,
 [State/Province] nvarchar(50) NULL ,
 [City]           nvarchar(50) NULL ,
 [Address]        nvarchar(100) NULL ,
 [Industry]       nvarchar(50) NOT NULL ,
 [Email]          nvarchar(50) NOT NULL ,
 [Phone]          varchar(15) NULL ,
 [Cantact_Name]   nvarchar(50) NULL ,


 CONSTRAINT [PK_User_Company] PRIMARY KEY CLUSTERED ([CompanyID] ASC)
);
--GO
















-- ************************************** [dbo].[User_SAF]

CREATE TABLE [dbo].[User_SAF]
(
 [Email]    nvarchar(50) NOT NULL ,
 [ID_Num]   uniqueidentifier NOT NULL ,
 [Term]     nvarchar(20) NULL ,
 [Company]  nvarchar(50) NULL ,
 [Linkedin] nvarchar(300) NULL ,
 [Twitter]  nvarchar(300) NULL ,


 CONSTRAINT [PK_User_SAF] PRIMARY KEY CLUSTERED ([Email] ASC, [ID_Num] ASC),
 CONSTRAINT [FK_93] FOREIGN KEY ([Email], [ID_Num])  REFERENCES [dbo].[User_Main]([Email], [ID_Num])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_93] ON [dbo].[User_SAF]
 (
  [Email] ASC,
  [ID_Num] ASC
 )
--GO













-- ************************************** [Gallery_Post]

CREATE TABLE [Gallery_Post]
(
 [GpostID]     uniqueidentifier NOT NULL ,
 [Email]       nvarchar(50) NOT NULL ,
 [ID_Num]      uniqueidentifier NOT NULL ,
 [Title]      nvarchar(50) NOT NULL ,
 [Discription] nvarchar(200) NOT NULL ,
 [Date]        datetime NOT NULL ,
 [Image]       nvarchar(400) NOT NULL ,
 [Tags]        nvarchar(400) NULL ,
 [Hidden]      bit DEFAULT 0 ,
 [Mod_Status]  nvarchar(50) NULL ,


 CONSTRAINT [PK_Gallery_Post] PRIMARY KEY CLUSTERED ([GpostID] ASC),
 CONSTRAINT [FK_240] FOREIGN KEY ([Email], [ID_Num])  REFERENCES [dbo].[User_Main]([Email], [ID_Num])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_240] ON [Gallery_Post]
 (
  [Email] ASC,
  [ID_Num] ASC
 )

--GO







-- ************************************** [Board_Post]

CREATE TABLE [Board_Post]
(
 [BpostID]     uniqueidentifier NOT NULL ,
 [Email]       nvarchar(50) NOT NULL ,
 [ID_Num]      uniqueidentifier NOT NULL ,
 [Title]       nvarchar(50) NOT NULL ,
 [Description] nvarchar(1000) NOT NULL ,
 [Board]       tinyint NOT NULL ,
 [Date]        datetime NOT NULL ,
 [Expiration]  datetime NOT NULL ,
 [Tags]        nvarchar(400) NULL ,
 [Hidden]      bit DEFAULT 0 ,
 [Mod_Status]  nvarchar(50) NULL ,


 CONSTRAINT [PK_Board_Post] PRIMARY KEY CLUSTERED ([BpostID] ASC),
 CONSTRAINT [FK_193] FOREIGN KEY ([Email], [ID_Num])  REFERENCES [dbo].[User_Main]([Email], [ID_Num])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_193] ON [Board_Post]
 (
  [Email] ASC,
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
 [Email]  nvarchar(50) NOT NULL,


 CONSTRAINT [PK_Vote] PRIMARY KEY CLUSTERED ([VoteID] ASC),
 CONSTRAINT [FK_222] FOREIGN KEY ([BpostID])  REFERENCES [Board_Post]([BpostID]),
 CONSTRAINT [UID] FOREIGN KEY ([Email],[ID_Num]) REFERENCES [dbo].[User_Main]([Email],[ID_Num])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_222] ON [Votes]
 (
  [VoteID] ASC
 )

--GO







-- ************************************** [dbo].[Job_Posting]

CREATE TABLE [dbo].[Job_Posting]
(
 [Email]           nvarchar(50) NOT NULL ,
 [ID_Num]          uniqueidentifier NOT NULL ,
 [CompanyID]       uniqueidentifier NOT NULL ,
 [Position(Title)] nvarchar(50) NOT NULL ,
 [Short_Disc]      varchar(80) NOT NULL ,
 [Long_Disc]       varchar(1000) NOT NULL ,
 [Skills_Req]      nvarchar(200) NOT NULL ,
 [Pay_Est]         money NULL ,
 [Benifits]        nvarchar(400) NULL ,
 [Hidden]          bit DEFAULT 0 ,
 [Mod_Status]      nvarchar(50) NULL ,


 CONSTRAINT [PK_Job_Posting] PRIMARY KEY CLUSTERED ([Email] ASC, [ID_Num] ASC, [CompanyID] ASC),
 CONSTRAINT [FK_109] FOREIGN KEY ([CompanyID])  REFERENCES [dbo].[User_Company]([CompanyID]),
 CONSTRAINT [FK_99] FOREIGN KEY ([Email], [ID_Num])  REFERENCES [dbo].[User_SAF]([Email], [ID_Num])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_109] ON [dbo].[Job_Posting]
 (
  [CompanyID] ASC
 )

--GO

CREATE NONCLUSTERED INDEX [fkIdx_99] ON [dbo].[Job_Posting]
 (
  [Email] ASC,
  [ID_Num] ASC
 )

--GO







-- ************************************** [dbo].[Intern_Posting]

CREATE TABLE [dbo].[Intern_Posting]
(
 [Email]           nvarchar(50) NOT NULL ,
 [ID_Num]          uniqueidentifier NOT NULL ,
 [CompanyID]       uniqueidentifier NOT NULL ,
 [Position(title)] nvarchar(50) NOT NULL ,
 [Short_Disc.]     varchar(100) NOT NULL ,
 [Long_Disc.]      varchar(1000) NOT NULL ,
 [Skills_Req]      nvarchar(200) NOT NULL ,
 [Skills_Learned]  nvarchar(200) NOT NULL ,
 [Resources_Used]  varchar(200) NOT NULL ,
 [Lessons_Learned] varchar(1000) NOT NULL ,
 [Edu_Value]       varchar(200) NULL ,
 [Pay]             money NULL ,
 [Benifits]        varchar(400) NULL ,
 [Hidden]          bit DEFAULT 0,
 [Mod_Status]      nvarchar(50) NULL,


 CONSTRAINT [PK_Intern_Posting] PRIMARY KEY CLUSTERED ([Email] ASC, [ID_Num] ASC, [CompanyID] ASC),
 CONSTRAINT [FK_104] FOREIGN KEY ([Email], [ID_Num])  REFERENCES [dbo].[User_SAF]([Email], [ID_Num]),
 CONSTRAINT [FK_112] FOREIGN KEY ([CompanyID])  REFERENCES [dbo].[User_Company]([CompanyID])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_104] ON [dbo].[Intern_Posting]
 (
  [Email] ASC,
  [ID_Num] ASC
 )

--GO

CREATE NONCLUSTERED INDEX [fkIdx_112] ON [dbo].[Intern_Posting]
 (
  [CompanyID] ASC
 )

--GO







-- ************************************** [Following]

CREATE TABLE [Following]
(
 [Email]  nvarchar(50) NOT NULL ,
 [ID_Num] uniqueidentifier NOT NULL ,


 CONSTRAINT [PK_Following] PRIMARY KEY CLUSTERED ([Email] ASC, [ID_Num] ASC),
 CONSTRAINT [FK_151] FOREIGN KEY ([Email], [ID_Num])  REFERENCES [User_Main]([Email], [ID_Num])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_151] ON [Following]
 (
  [Email] ASC,
  [ID_Num] ASC
 )

--GO







-- ************************************** [Followers]

CREATE TABLE [Followers]
(
 [ID_Num] uniqueidentifier NOT NULL ,
 [Email]  nvarchar(50) NOT NULL ,


 CONSTRAINT [PK_Followers] PRIMARY KEY CLUSTERED ([ID_Num] ASC, [Email] ASC),
 CONSTRAINT [FK_146] FOREIGN KEY ([Email], [ID_Num])  REFERENCES [User_Main]([Email], [ID_Num])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_146] ON [Followers]
 (
  [Email] ASC,
  [ID_Num] ASC
 )

--GO







-- ************************************** [Blog_Post]

CREATE TABLE [Blog_Post]
(
 [BlogID]     uniqueidentifier NOT NULL ,
 [Email]      nvarchar(50) NOT NULL ,
 [ID_Num]     uniqueidentifier NOT NULL ,
 [Title]      nvarchar(50) NOT NULL ,
 [Body]       text NOT NULL ,
 [Attachment] nvarchar(400) NULL ,
 [Date]       datetime NOT NULL ,
 [Hidden]     bit DEFAULT 0,
 [Mod_Status] nvarchar(50) NULL ,


 CONSTRAINT [PK_Blog_Post] PRIMARY KEY CLUSTERED ([BlogID] ASC),
 CONSTRAINT [FK_165] FOREIGN KEY ([Email], [ID_Num])  REFERENCES [User_Main]([Email], [ID_Num])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_165] ON [Blog_Post]
 (
  [Email] ASC,
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
 [Email]      nvarchar(50) NOT NULL ,
 [ID_Num]     uniqueidentifier NOT NULL ,
 [Date]       datetime NOT NULL ,
 [Comment]    nvarchar(300) NOT NULL ,
 [Hidden]     bit DEFAULT 0 ,
 [Mod_Status] nvarchar(50) NULL ,


 CONSTRAINT [PK_Post_Comment] PRIMARY KEY CLUSTERED ([BlogID] ASC),
 CONSTRAINT [FK_180] FOREIGN KEY ([BlogID])  REFERENCES [Blog_Post]([BlogID]),
 CONSTRAINT [FK_184] FOREIGN KEY ([Email], [ID_Num])  REFERENCES [User_Main]([Email], [ID_Num])
);
--GO


CREATE NONCLUSTERED INDEX [fkIdx_180] ON [Post_Comment]
 (
  [BlogID] ASC
 )

--GO

CREATE NONCLUSTERED INDEX [fkIdx_184] ON [Post_Comment]
 (
  [Email] ASC,
  [ID_Num] ASC
 )

--GO
