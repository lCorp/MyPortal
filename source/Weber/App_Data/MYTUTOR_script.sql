USE master
GO
IF EXISTS (SELECT NAME FROM sys.databases WHERE name='MYTUTOR')
	DROP DATABASE MYTUTOR
GO
CREATE DATABASE [MYTUTOR]
GO
USE [MYTUTOR]
GO
/****** Object:  Table [dbo].[NationalMasters]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NationalMasters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](500) NULL,
	[DisplayOrder] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_NationalMasters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NationalMasters] ON
INSERT [dbo].[NationalMasters] ([Id], [Name], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (1, N'Việt Nam', N'VN', 1, CAST(0x00009FCB00000000 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[NationalMasters] ([Id], [Name], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (3, N'American', N'EN', 2, CAST(0x00009FCB00000000 AS DateTime), NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[NationalMasters] OFF
/****** Object:  Table [dbo].[LanguageMaster]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LanguageMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_LanguageMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMasters]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserMasters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProviderUserKey] [uniqueidentifier] NULL,
	[Email] [nvarchar](100) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](100) NULL,
	[UserType] [char](1) NULL,
	[Status] [char](1) NULL,
	[GoogleOpenId] [nvarchar](512) NULL,
	[FacebookOpenId] [nvarchar](512) NULL,
	[YahooOpenId] [nvarchar](512) NULL,
	[TwitterOpenId] [nvarchar](512) NULL,
	[WordpressOpenId] [nvarchar](512) NULL,
	[BloggerOpenId] [nvarchar](512) NULL,
	[SkypeOpenId] [nvarchar](512) NULL,
	[ZingOpenId] [nvarchar](512) NULL,
	[LastLoginTime] [datetime] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[ConfirmToken] [nvarchar](512) NULL,
	[ConfirmExpired] [datetime] NULL,
	[ResetPasswordToken] [nvarchar](512) NULL,
	[ResetPasswordExpired] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserMasters] ON
INSERT [dbo].[UserMasters] ([Id], [ProviderUserKey], [Email], [UserName], [Password], [FirstName], [LastName], [DisplayName], [UserType], [Status], [GoogleOpenId], [FacebookOpenId], [YahooOpenId], [TwitterOpenId], [WordpressOpenId], [BloggerOpenId], [SkypeOpenId], [ZingOpenId], [LastLoginTime], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted], [ConfirmToken], [ConfirmExpired], [ResetPasswordToken], [ResetPasswordExpired]) VALUES (1, NULL, N'ngohuuloc@gmail.com', N'admin', N'3D4F2BF07DC1BE38B20CD6E46949A1071F9D0E3D', N'Lộc', N'Ngô Hữu', NULL, N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x0000A0CD005A579B AS DateTime), NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMasters] ([Id], [ProviderUserKey], [Email], [UserName], [Password], [FirstName], [LastName], [DisplayName], [UserType], [Status], [GoogleOpenId], [FacebookOpenId], [YahooOpenId], [TwitterOpenId], [WordpressOpenId], [BloggerOpenId], [SkypeOpenId], [ZingOpenId], [LastLoginTime], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted], [ConfirmToken], [ConfirmExpired], [ResetPasswordToken], [ResetPasswordExpired]) VALUES (18, NULL, N'giasu0001@yahoo.com', N'giasu0001', N'3D4F2BF07DC1BE38B20CD6E46949A1071F9D0E3D', N'Tuấn', N'Trần Quốc', NULL, N'2', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A0C1004CCE55 AS DateTime), CAST(0x0000A0C700069DE9 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMasters] ([Id], [ProviderUserKey], [Email], [UserName], [Password], [FirstName], [LastName], [DisplayName], [UserType], [Status], [GoogleOpenId], [FacebookOpenId], [YahooOpenId], [TwitterOpenId], [WordpressOpenId], [BloggerOpenId], [SkypeOpenId], [ZingOpenId], [LastLoginTime], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted], [ConfirmToken], [ConfirmExpired], [ResetPasswordToken], [ResetPasswordExpired]) VALUES (22, NULL, N'phuhuynh0001@yahoo.com', N'phuhuynh0001', N'3D4F2BF07DC1BE38B20CD6E46949A1071F9D0E3D', N'Hoa', N'Phan Thị', NULL, N'3', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A0C1004CCDB8 AS DateTime), CAST(0x0000A0C700069D5C AS DateTime), NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMasters] ([Id], [ProviderUserKey], [Email], [UserName], [Password], [FirstName], [LastName], [DisplayName], [UserType], [Status], [GoogleOpenId], [FacebookOpenId], [YahooOpenId], [TwitterOpenId], [WordpressOpenId], [BloggerOpenId], [SkypeOpenId], [ZingOpenId], [LastLoginTime], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted], [ConfirmToken], [ConfirmExpired], [ResetPasswordToken], [ResetPasswordExpired]) VALUES (23, NULL, N'giasu0002@yahoo.com', N'giasu0002', N'3D4F2BF07DC1BE38B20CD6E46949A1071F9D0E3D', N'Quyên', N'Trần Thị Tú', NULL, N'2', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A0C1004CCDB8 AS DateTime), CAST(0x0000A0C700069D5C AS DateTime), NULL, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserMasters] OFF
/****** Object:  Table [dbo].[ArticleStatistics]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleStatistics](
	[Id] [int] NOT NULL,
	[HitCount] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ArticleStatistics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdsTypes]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdsTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[HTMLTemplate] [ntext] NULL,
	[AttemptResizeImage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[FilesizeMaximum] [int] NULL,
	[Description] [nvarchar](255) NULL,
	[Status] [char](1) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_BannerTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_BannerTypes_Key] UNIQUE NONCLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_BannerTypes_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AdsTypes] ON
INSERT [dbo].[AdsTypes] ([Id], [Key], [Name], [HTMLTemplate], [AttemptResizeImage], [DisplayOrder], [FilesizeMaximum], [Description], [Status], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (1, N'Image', N'Ảnh', N'<a href="{0}" target="blank"><img style="width:{3}px; border:none; padding:0px;" src="/Files/Advertising/{2}" title="{1}"></a>', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[AdsTypes] ([Id], [Key], [Name], [HTMLTemplate], [AttemptResizeImage], [DisplayOrder], [FilesizeMaximum], [Description], [Status], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (2, N'Flash', N'Flash', N'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="{3}"><param name="movie" value="/Files/Advertising/{2}"/><param name="quality" value="high"/><param name="wmode" value="transparent"/><embed src="/Files/Advertising/{2}" quality="high" wmode="transparent" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="{3}"></embed></object>', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[AdsTypes] OFF
/****** Object:  Table [dbo].[AdsPositions]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdsPositions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[DisplayOrder] [int] NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Size] [nvarchar](50) NULL,
	[Share] [int] NULL,
	[SwapDuration] [int] NULL,
	[Description] [nvarchar](255) NULL,
	[Status] [char](1) NULL,
	[HasImage] [bit] NULL,
	[ImageFileName] [nvarchar](255) NULL,
	[CreatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_BannerPositions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_BannerPositions_Key] UNIQUE NONCLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_BannerPositions_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AdsPositions] ON
INSERT [dbo].[AdsPositions] ([Id], [Key], [Name], [DisplayOrder], [Width], [Height], [Size], [Share], [SwapDuration], [Description], [Status], [HasImage], [ImageFileName], [CreatedTime], [DeletedTime], [UpdatedTime], [IsDeleted]) VALUES (1, N'HomePage', N'Trang chủ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[AdsPositions] ([Id], [Key], [Name], [DisplayOrder], [Width], [Height], [Size], [Share], [SwapDuration], [Description], [Status], [HasImage], [ImageFileName], [CreatedTime], [DeletedTime], [UpdatedTime], [IsDeleted]) VALUES (2, N'ContentPage', N'Các trang nội dung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[AdsPositions] OFF
/****** Object:  Table [dbo].[AdsInformationTracking]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdsInformationTracking](
	[Id] [int] NOT NULL,
	[DisplayCount] [int] NULL,
	[HitCount] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_AdsInformationTracking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassMasters]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClassMasters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassLevel] [char](1) NULL,
	[Name] [nvarchar](255) NULL,
	[DisplayOrder] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[HasImage] [bit] NULL,
	[ImageFileName] [nvarchar](255) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ClassMasters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ClassMasters] ON
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (1, N'1', N'Lớp 1', 1, NULL, NULL, N'class-1.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (2, N'1', N'Lớp 2', 2, NULL, NULL, N'class-2.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (3, N'1', N'Lớp 3', 3, NULL, NULL, N'class-3.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (4, N'1', N'Lớp 4', 4, NULL, NULL, N'class-4.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (5, N'1', N'Lớp 5', 5, NULL, NULL, N'class-5.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (6, N'1', N'Lớp 6', 6, NULL, NULL, N'class-6.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (7, N'1', N'Lớp 7', 7, NULL, NULL, N'class-7.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (8, N'1', N'Lớp 8', 8, NULL, NULL, N'class-8.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (9, N'1', N'Lớp 9', 9, NULL, NULL, N'class-9.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (10, N'1', N'Lớp 10', 10, NULL, NULL, N'class-10.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (11, N'1', N'Lớp 11', 11, NULL, NULL, N'class-11.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (12, N'1', N'Lớp 12', 12, NULL, NULL, N'class-12.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (13, N'2', N'Luyện Tốt Nghiệp', 13, NULL, NULL, N'class-graduattion-trainning.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (14, N'2', N'Luyện Đại Học', 14, NULL, NULL, N'class-entry-university-trainning.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (15, N'3', N'Ngoại Ngữ', 15, NULL, NULL, N'class-language.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (16, N'3', N'Tin Học', 16, NULL, NULL, N'class-computer.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (17, N'3', N'Âm Nhạc', 17, NULL, NULL, N'class-music.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ClassMasters] ([Id], [ClassLevel], [Name], [DisplayOrder], [Description], [HasImage], [ImageFileName], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (18, N'3', N'Mỹ Thuật', 18, NULL, NULL, N'class-art.png', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[ClassMasters] OFF
/****** Object:  Table [dbo].[Subjects]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Level] [char](1) NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](500) NULL,
	[DisplayOrder] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SpecialityMasters]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SpecialityMasters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Level] [char](1) NULL,
	[DisplayOrder] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Specialities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SpecialityMasters] ON
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (1, NULL, 1, N'Toán Học', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (2, NULL, 2, N'Vật Lý', N'Toán', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (3, NULL, 3, N'Hóa Học', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (4, NULL, 4, N'Sinh Học', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (5, NULL, 5, N'Anh Văn', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (6, NULL, 6, N'Tin Học', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (7, NULL, 7, N'Âm Nhạc', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (8, NULL, 8, N'Mỹ Thuật', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (9, NULL, 9, N'Ngữ Văn', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (10, NULL, 10, N'Lịch Sử', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (11, NULL, 11, N'Địa Lý', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (12, NULL, 12, N'Sư Phạm', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (14, NULL, 13, N'Sư Phạm Mầm Non', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (15, NULL, 14, N'Sư Phạm Tiểu Học', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (16, NULL, 15, N'Kế Toán, Kiểm Toán', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (17, NULL, 16, N'Tài Chính, Ngân Hàng', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (18, NULL, 17, N'Quản Trị Kinh Doanh', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SpecialityMasters] ([Id], [Level], [DisplayOrder], [Name], [Description], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (19, NULL, 18, N'Chuyên Ngành Khác', NULL, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[SpecialityMasters] OFF
/****** Object:  Table [dbo].[SalaryMasters]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryMasters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[DisplayOrder] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Salaries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SalaryMasters] ON
INSERT [dbo].[SalaryMasters] ([Id], [Amount], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (2, 500000, NULL, 1, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SalaryMasters] ([Id], [Amount], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (3, 1000000, NULL, 2, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SalaryMasters] ([Id], [Amount], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (4, 1500000, NULL, 3, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SalaryMasters] ([Id], [Amount], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (5, 2000000, NULL, 4, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SalaryMasters] ([Id], [Amount], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (6, 2500000, NULL, 5, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SalaryMasters] ([Id], [Amount], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (7, 3000000, NULL, 6, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SalaryMasters] ([Id], [Amount], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (8, 3500000, NULL, 7, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SalaryMasters] ([Id], [Amount], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (9, 4500000, NULL, 8, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SalaryMasters] ([Id], [Amount], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (10, 5000000, NULL, 9, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SalaryMasters] ([Id], [Amount], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (11, 6000000, NULL, 10, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SalaryMasters] ([Id], [Amount], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (12, 7000000, NULL, 11, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SalaryMasters] ([Id], [Amount], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (13, 8000000, NULL, 12, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SalaryMasters] ([Id], [Amount], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (14, 9000000, NULL, 13, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[SalaryMasters] ([Id], [Amount], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (15, 10000000, NULL, 14, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[SalaryMasters] OFF
/****** Object:  Table [dbo].[ProvinceMasters]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProvinceMasters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[NationId] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[DisplayOrder] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [nchar](10) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Provinces] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProvinceMasters] ON
INSERT [dbo].[ProvinceMasters] ([Id], [Name], [NationId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (1, N'Hồ Chí Minh', NULL, NULL, 1, CAST(0x00009FCB00000000 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[ProvinceMasters] ([Id], [Name], [NationId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (2, N'Đà Nẵng', NULL, NULL, 2, CAST(0x00009FCB00000000 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[ProvinceMasters] ([Id], [Name], [NationId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (3, N'Cam Ranh', NULL, NULL, 3, CAST(0x00009FCB00000000 AS DateTime), NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[ProvinceMasters] OFF
/****** Object:  Table [dbo].[ProfilePosts]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfilePosts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Post] [nvarchar](255) NULL,
	[UserId] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ProfilePosts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfileLanguages]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProfileLanguages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [int] NULL,
	[UserId] [int] NULL,
	[Level] [char](1) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ProfileLanguages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProfileExperiences]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfileExperiences](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationName] [nvarchar](255) NULL,
	[Position] [nvarchar](255) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[IsCurrent] [bit] NULL,
	[Responsibilities] [nvarchar](max) NULL,
	[UserId] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ProfileExperiences] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProfileExperiences] ON
INSERT [dbo].[ProfileExperiences] ([Id], [OrganizationName], [Position], [StartDate], [EndDate], [IsCurrent], [Responsibilities], [UserId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (1, N'FSOFT', N'.net Developer', CAST(0x0000A0BF00000000 AS DateTime), NULL, NULL, NULL, 1, CAST(0x0000A0BD0037CC9E AS DateTime), CAST(0x0000A0BD0037CC9E AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[ProfileExperiences] OFF
/****** Object:  Table [dbo].[ArticleCategories]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArticleCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](255) NULL,
	[Description] [nvarchar](500) NULL,
	[HasImage] [bit] NULL,
	[ImageFileName] [nvarchar](255) NULL,
	[DisplayOrder] [int] NULL,
	[IsHighlined] [bit] NULL,
	[IsHomePage] [bit] NULL,
	[Status] [char](1) NULL,
	[AuthorId] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ArticleCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ArticleCategories] ON
INSERT [dbo].[ArticleCategories] ([Id], [CategoryName], [Description], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (1, N'Giáo Dục Trong Nước', NULL, NULL, NULL, 1, NULL, NULL, N'3', NULL, CAST(0x0000A0BA00000000 AS DateTime), CAST(0x0000A0BA00000000 AS DateTime), NULL, 0)
INSERT [dbo].[ArticleCategories] ([Id], [CategoryName], [Description], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (2, N'Giáo Dục Quốc Tế', NULL, NULL, NULL, 2, NULL, NULL, N'3', NULL, CAST(0x0000A0BA00000000 AS DateTime), CAST(0x0000A0BA00000000 AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[ArticleCategories] OFF
/****** Object:  Table [dbo].[AdsInformations]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdsInformations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContentOriginal] [nvarchar](max) NULL,
	[ContentHTML] [nvarchar](max) NULL,
	[DestinationURL] [nvarchar](500) NULL,
	[ValidDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
	[Status] [char](1) NULL,
	[AdsPositionId] [int] NULL,
	[AdsTypeId] [int] NULL,
	[ClientId] [int] NULL,
	[Description] [nvarchar](255) NULL,
	[ModifyReason] [nvarchar](500) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_AdsInformations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AdsInformations] ON
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (1, N'Ads-59a7c645-4f29-487e-91bf-2ce273702d58.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0B100000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 2, 1, NULL, N'Mô tả quảng cáo 1', NULL, NULL, CAST(0x0000A0C6010734C8 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (2, N'Ads-a87a6cc3-fdec-4276-bde3-e98d5c29bbc5.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0B100000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 2, 1, NULL, N'Mô tả quảng cáo 2', NULL, NULL, CAST(0x0000A0C601048EF6 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (3, N'Ads-7542e77a-c4a8-4037-aee6-e670eeec811a.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0B100000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 2, 1, NULL, N'Mô tả quảng cáo 3', NULL, NULL, CAST(0x0000A0C601040CE8 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (5, N'Ads-5eb35f4c-ea66-46e3-8ba0-81f485828ab0.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0B500000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 1, 1, NULL, N'Mô tả quảng cáo 4', NULL, NULL, CAST(0x0000A0C600E44236 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (6, N'Ads-cb3ef32e-589e-4460-96be-8723d0f45c86.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0B500000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 2, 1, NULL, N'Mô tả quảng cáo 5', NULL, NULL, CAST(0x0000A0C601052259 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (7, N'Ads-49c62d74-7551-477e-a022-2335b0e1f351.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0B500000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 2, 1, NULL, N'Mô tả quảng cáo 6', NULL, NULL, CAST(0x0000A0C601068BB6 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (8, N'Ads-896a6aec-a176-4076-9395-a92019f6a14b.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0B500000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 1, 1, NULL, N'Mô tả quảng cáo 7', NULL, NULL, CAST(0x0000A0C600E51860 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (9, N'Ads-9e2ead74-28ba-4b95-acd7-3e8047c9832c.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0B600000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 2, 1, NULL, N'Mô tả quảng cáo 8', NULL, NULL, CAST(0x0000A0C60104F410 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (11, N'Ads-d7fe213d-b52b-4c53-97b1-41f16f467bb8.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0B500000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 1, 1, NULL, NULL, NULL, NULL, CAST(0x0000A0C7000A4C80 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (12, N'Ads-bd97dcaf-e21f-411e-bf4f-f1c541effbdc.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0B700000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 1, 1, NULL, N'Mô tả quảng cáo 11', NULL, NULL, CAST(0x0000A0C600EA2715 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (13, N'Ads-d5be4498-e29a-4e44-ab16-4f416dd2c8c8.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0C300000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 1, 1, NULL, N'Mô tả quảng cáo', NULL, NULL, CAST(0x0000A0C60183D587 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (14, N'Ads-960387c3-555e-4c79-a46c-9f64667c5283.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0C300000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 1, 1, NULL, N'Mô tả quảng cáo', NULL, NULL, CAST(0x0000A0C600EBCEBE AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (15, N'Ads-96933d34-5199-471a-834a-c355625ec0cb.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0C300000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 1, 1, NULL, N'Mô tả quảng cáo', NULL, NULL, CAST(0x0000A0C700068166 AS DateTime), CAST(0x0000A0C700061B6A AS DateTime), 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (16, N'Ads-f7d52599-fc96-40af-b55c-695fd311e87f.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0C300000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 2, 1, NULL, N'Mô tả quảng cáo', NULL, NULL, CAST(0x0000A0C60177D4AD AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (17, N'Ads-c5b36a5e-bb26-4f04-a576-5755fc85827c.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0C300000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 1, 1, NULL, N'Mô tả quảng cáo', NULL, NULL, CAST(0x0000A0C601850556 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (18, N'Ads-da42bf0d-f284-46cc-9020-494a1c7a6382.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0C300000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 1, 1, NULL, N'Mô tả quảng cáo', NULL, NULL, CAST(0x0000A0C70007E3B0 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (19, N'Ads-e9335778-155b-4e79-9584-410d7c9b4128.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0C300000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 1, 1, NULL, N'Mô tả quảng cáo', NULL, NULL, CAST(0x0000A0C7000AB9F3 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (20, N'Ads-25c093da-9214-4c7a-9a64-99b23ec3630d.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0C300000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 2, 1, NULL, N'Mô tả quảng cáo', NULL, NULL, CAST(0x0000A0C601134D3A AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (21, N'Ads-44a75da4-e2ba-4c15-aeb6-1cd25e784eeb.jpg', NULL, N'https://www.google.com.vn/', CAST(0x0000A0C400000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 2, 1, NULL, NULL, NULL, NULL, CAST(0x0000A0C6010FE324 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (22, N'Ads-d3480fb3-b42c-4f62-864e-2badbd8ea3cc.swf', NULL, NULL, CAST(0x0000A0C400000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'2', 1, 2, NULL, NULL, NULL, CAST(0x0000A0C400585E1D AS DateTime), CAST(0x0000A0C40061AD4F AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (23, N'Ads-7a578d3a-b822-45a5-a952-b3b531963e59.swf', NULL, NULL, CAST(0x0000A0C400000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'2', 1, 2, NULL, NULL, NULL, NULL, CAST(0x0000A0C6001FF569 AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (24, N'Ads-73d65260-5337-4bd0-bfe6-f56d226d64a6.swf', NULL, NULL, CAST(0x0000A0C400000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'2', 1, 2, NULL, NULL, NULL, NULL, CAST(0x0000A0C600E4A92F AS DateTime), CAST(0x0000A0C6000929D4 AS DateTime), 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (25, N'Ads-be5f3e85-5954-4a96-b561-01a1f3f27bfb.swf', NULL, NULL, CAST(0x0000A0C400000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'2', 1, 2, NULL, NULL, NULL, CAST(0x0000A0C40059D8A1 AS DateTime), CAST(0x0000A0C4006125FA AS DateTime), NULL, 0)
INSERT [dbo].[AdsInformations] ([Id], [ContentOriginal], [ContentHTML], [DestinationURL], [ValidDateTime], [EndDateTime], [Status], [AdsPositionId], [AdsTypeId], [ClientId], [Description], [ModifyReason], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (27, N'Ads-9b7638e1-c377-478e-9a21-911c015b1d5e.jpg', NULL, NULL, CAST(0x0000A0C600000000 AS DateTime), CAST(0x00011CDE00000000 AS DateTime), N'3', 1, 1, NULL, NULL, NULL, CAST(0x0000A0C60180E5FD AS DateTime), CAST(0x0000A0C60180E5FD AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[AdsInformations] OFF
/****** Object:  Table [dbo].[UserEducations]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserEducations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SchoolName] [nvarchar](255) NULL,
	[Degree] [nvarchar](255) NULL,
	[Grade] [nvarchar](255) NULL,
	[StartYear] [char](4) NULL,
	[GraduatedYear] [char](4) NULL,
	[Remarks] [nvarchar](255) NULL,
	[UserId] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_UserEducations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserEducations] ON
INSERT [dbo].[UserEducations] ([Id], [SchoolName], [Degree], [Grade], [StartYear], [GraduatedYear], [Remarks], [UserId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (11, N'Infoworld', N'PBCT', NULL, N'2009', N'2012', NULL, 1, CAST(0x0000A0BD00341584 AS DateTime), CAST(0x0000A0BD00341584 AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[UserEducations] OFF
/****** Object:  Table [dbo].[Friends]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Friends](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId1] [int] NULL,
	[UserId2] [int] NULL,
	[UserRecommendId] [int] NULL,
	[Status] [char](1) NULL,
	[Remarks] [nvarchar](255) NULL,
	[AcceptedTime] [datetime] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Friends] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DistrictMasters]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistrictMasters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[ProvinceId] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[DisplayOrder] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Districts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DistrictMasters] ON
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (1, N'Quận 1', 1, NULL, 1, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (2, N'Quận 2', 1, NULL, 2, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (3, N'Quận 3', 1, NULL, 3, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (4, N'Quận 4', 1, NULL, 4, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (5, N'Quận 5', 1, NULL, 5, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (6, N'Quận 6', 1, NULL, 6, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (7, N'Quận 7', 1, NULL, 7, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (8, N'Quận 8', 1, NULL, 8, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (10, N'Quận 9', 1, NULL, 9, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (11, N'Quận 10', 1, NULL, 10, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (12, N'Quận 11', 1, NULL, 11, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (13, N'Quận 12', 1, NULL, 12, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (14, N'Quận Gò Vấp', 1, NULL, 13, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (15, N'Quận Tân Bình', 1, NULL, 14, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (16, N'Quận Bình Tân', 1, NULL, 15, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (17, N'Ba Ngòi', 3, NULL, 1, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (18, N'Cam Lộc', 3, NULL, 2, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (19, N'Cam Lợi', 3, NULL, 3, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (20, N'Cẩm Lệ', 2, NULL, 1, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (21, N'Hải Châu', 2, NULL, 2, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (22, N'Liên Chiểu', 2, NULL, 3, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (23, N'Ngũ Hành Sơn', 2, NULL, 4, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (25, N'Cam Linh', 3, NULL, 4, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (26, N'Cam Thuận', 3, NULL, 5, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (27, N'Cam Phú', 3, NULL, 6, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (28, N'Cam Phúc Bắc', 3, NULL, 7, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (29, N'Cam Phúc Nam', 3, NULL, 8, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (30, N'Cam Nghĩa', 3, NULL, 9, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (31, N'Sơn Trà', 2, NULL, 5, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[DistrictMasters] ([Id], [Name], [ProvinceId], [Description], [DisplayOrder], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (32, N'Thanh Khê', 2, NULL, 6, CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[DistrictMasters] OFF
/****** Object:  Table [dbo].[Articles]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Articles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[PostIntro] [nvarchar](256) NULL,
	[Content] [nvarchar](max) NULL,
	[HasImage] [bit] NULL,
	[ImageFileName] [nvarchar](500) NULL,
	[DisplayOrder] [int] NULL,
	[IsHighlined] [bit] NULL,
	[IsHomePage] [bit] NULL,
	[Status] [char](1) NULL,
	[RatingLevel] [char](1) NULL,
	[AuthorId] [int] NULL,
	[ArticleCategoryId] [int] NULL,
	[MetaDescription] [nvarchar](255) NULL,
	[MetaKeyword] [nvarchar](255) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Articles] ON
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (1, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, N'Art-079dc135-8bb6-434d-8ee2-6373da876298.png', NULL, NULL, NULL, N'3', NULL, NULL, 1, NULL, NULL, NULL, CAST(0x0000A0C700108A55 AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (2, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, 1, NULL, NULL, NULL, CAST(0x0000A0CA017A367C AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (3, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, N'Art-85bb50d6-4041-4920-ac5c-7a9eed0d8826.png', NULL, NULL, NULL, N'3', NULL, NULL, 2, NULL, NULL, NULL, CAST(0x0000A0C600636CC2 AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (4, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, N'Art-5448d2d7-cc70-4b95-b90f-caf8b50d4687.png', NULL, NULL, NULL, N'3', NULL, NULL, 2, NULL, NULL, NULL, CAST(0x0000A0C60063D7E7 AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (5, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, N'Art-51dec360-cc5e-49e5-9f78-8d1c35cb92d9.png', NULL, NULL, NULL, N'3', NULL, NULL, 1, NULL, NULL, NULL, CAST(0x0000A0C60062B2FB AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (6, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, 2, NULL, NULL, NULL, CAST(0x0000A0C600637A6B AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (7, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, N'Art-87d99541-e5b9-451f-a2bd-9cc0a0cafbe1.png', NULL, NULL, NULL, N'3', NULL, NULL, 1, NULL, NULL, NULL, CAST(0x0000A0C60062852B AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (8, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, N'Art-a1bf3307-c24b-4ad0-891b-7147d67d7e4d.png', NULL, NULL, NULL, N'3', NULL, NULL, 2, NULL, NULL, NULL, CAST(0x0000A0C60063A9EC AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (9, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, 1, NULL, NULL, NULL, CAST(0x0000A0C600625943 AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (11, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, 1, NULL, NULL, CAST(0x0000A0C6005DE486 AS DateTime), CAST(0x0000A0C6006408F6 AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (12, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, N'Art-b4432d12-f261-46eb-8160-d709d9cf1243.png', NULL, NULL, NULL, N'3', NULL, NULL, 1, NULL, NULL, CAST(0x0000A0880060CB4C AS DateTime), CAST(0x0000A0880060CB4C AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (13, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, 1, NULL, NULL, CAST(0x0000A0880060CB4C AS DateTime), CAST(0x0000A0880060CB4C AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (14, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, 1, NULL, NULL, CAST(0x0000A0880060CB4C AS DateTime), CAST(0x0000A0880060CB4C AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (15, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, 1, NULL, NULL, CAST(0x0000A0880060CB4C AS DateTime), CAST(0x0000A0880060CB4C AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (16, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, 1, NULL, NULL, CAST(0x0000A0880060CB4C AS DateTime), CAST(0x0000A0880060CB4C AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (17, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, 2, NULL, NULL, CAST(0x0000A0880060CB4C AS DateTime), CAST(0x0000A0880060CB4C AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (18, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, 2, NULL, NULL, CAST(0x0000A0880060CB4C AS DateTime), CAST(0x0000A0880060CB4C AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (19, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, 2, NULL, NULL, CAST(0x0000A0880060CB4C AS DateTime), CAST(0x0000A0880060CB4C AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (20, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, 2, NULL, NULL, CAST(0x0000A0880060CB4C AS DateTime), CAST(0x0000A0880060CB4C AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (21, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, 2, NULL, NULL, CAST(0x0000A0880060CB4C AS DateTime), CAST(0x0000A0880060CB4C AS DateTime), NULL, 0)
INSERT [dbo].[Articles] ([Id], [Title], [PostIntro], [Content], [HasImage], [ImageFileName], [DisplayOrder], [IsHighlined], [IsHomePage], [Status], [RatingLevel], [AuthorId], [ArticleCategoryId], [MetaDescription], [MetaKeyword], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (22, N'Tiêu đề của bài viết, thường có độ dài dao động khoảng 50 ký tự', N'Nội dung trích dẫn của bài viết, thường dùng để tóm tắt nội dung của cả bài viết hoặc nêu những câu gợi sự tò mò.', N'Nội dung của bài viết. Trong bài viết có thể chứa các định dạng HTML, hình ảnh. Trong trường hợp người dùng chọn upload ảnh từ công cụ hổ trợ trên thanh công cụ thì ảnh này sẽ đưa đưa lên server của nhà phát triển bộ editor mà người dùng đang sử dụng. Lúc này, hệ thống không chịu trách nhiệm nếu hình ảnh đó bị xóa hoặc thất lạc, chính vì lý do này, chúng tôi khuyên người dùng chỉ nên dùng tính năng upload một ảnh đại diện (ảnh này sẽ được đảm bảo tồn tại cùng với trang web).', NULL, NULL, NULL, NULL, NULL, N'3', NULL, NULL, 2, NULL, NULL, CAST(0x0000A0880060CB4C AS DateTime), CAST(0x0000A0880060CB4C AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Articles] OFF
/****** Object:  Table [dbo].[ArticleRatings]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArticleRatings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RatingLevel] [char](1) NULL,
	[ArticleId] [int] NULL,
	[RatingUserId] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ArticleRatings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ArticleComments]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArticleComments](
	[Id] [int] NOT NULL,
	[Content] [nvarchar](500) NULL,
	[ArticleId] [int] NULL,
	[AuthorId] [int] NULL,
	[ParentCommentId] [int] NULL,
	[Status] [char](1) NULL,
	[LikeCount] [char](1) NULL,
	[DislikeCount] [char](1) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ArticleComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ArticlesTranslated]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArticlesTranslated](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Content] [nvarchar](max) NULL,
	[HasImage] [bit] NULL,
	[ImageFileName] [nvarchar](255) NULL,
	[Status] [char](1) NULL,
	[RatingLevel] [char](1) NULL,
	[ArticleId] [int] NULL,
	[AuthorId] [int] NULL,
	[MetaDescription] [nvarchar](255) NULL,
	[MetaKeyword] [nvarchar](255) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ArticlesTranslated] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Classes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Gender] [nchar](1) NULL,
	[BirthYear] [char](4) NULL,
	[MobiPhone] [nvarchar](255) NULL,
	[HomePhone] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[HouseNumber] [nvarchar](255) NULL,
	[Street] [nvarchar](255) NULL,
	[Ward] [nvarchar](255) NULL,
	[ProvinceId] [int] NULL,
	[DistrictId] [int] NULL,
	[IsHighined] [bit] NULL,
	[IsHomePage] [bit] NULL,
	[Status] [char](1) NULL,
	[OrderedStatus] [char](1) NULL,
	[WonTutorId] [int] NULL,
	[PlanStartDate] [datetime] NULL,
	[PlanEndDate] [datetime] NULL,
	[ActualStartDate] [datetime] NULL,
	[ActualEndDate] [datetime] NULL,
	[AuthorId] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Classes] ON
INSERT [dbo].[Classes] ([Id], [Name], [Gender], [BirthYear], [MobiPhone], [HomePhone], [Email], [HouseNumber], [Street], [Ward], [ProvinceId], [DistrictId], [IsHighined], [IsHomePage], [Status], [OrderedStatus], [WonTutorId], [PlanStartDate], [PlanEndDate], [ActualStartDate], [ActualEndDate], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (14, N'Phan Thị Hoa', N'2', N'1966', N'0909667788', NULL, N'phuhuynh0001@yahoo.com', N'43', N'Nguyễn Thông', N'Phường 6', 1, 3, NULL, NULL, N'3', N'1', NULL, NULL, NULL, NULL, NULL, 22, CAST(0x0000A0CC0132DA30 AS DateTime), CAST(0x0000A0CD0065C7F0 AS DateTime), NULL, 0)
INSERT [dbo].[Classes] ([Id], [Name], [Gender], [BirthYear], [MobiPhone], [HomePhone], [Email], [HouseNumber], [Street], [Ward], [ProvinceId], [DistrictId], [IsHighined], [IsHomePage], [Status], [OrderedStatus], [WonTutorId], [PlanStartDate], [PlanEndDate], [ActualStartDate], [ActualEndDate], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (15, N'Phan Thị Hoa', N'2', N'1966', N'0909667788', NULL, N'phuhuynh0001@yahoo.com', N'43', N'Nguyễn Thông', N'Phường 6', 1, 3, NULL, NULL, N'3', N'1', NULL, NULL, NULL, NULL, NULL, 22, CAST(0x0000A0CC0133958F AS DateTime), CAST(0x0000A0CD01774476 AS DateTime), NULL, 0)
INSERT [dbo].[Classes] ([Id], [Name], [Gender], [BirthYear], [MobiPhone], [HomePhone], [Email], [HouseNumber], [Street], [Ward], [ProvinceId], [DistrictId], [IsHighined], [IsHomePage], [Status], [OrderedStatus], [WonTutorId], [PlanStartDate], [PlanEndDate], [ActualStartDate], [ActualEndDate], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (16, N'Phan Thị Hoa', N'2', N'1966', N'0909667788', NULL, N'phuhuynh0001@yahoo.com', N'43', N'Nguyễn Thông', N'Phường 6', 1, 3, NULL, NULL, N'3', N'1', NULL, NULL, NULL, NULL, NULL, 22, CAST(0x0000A0CC01356400 AS DateTime), CAST(0x0000A0CC01356400 AS DateTime), NULL, 0)
INSERT [dbo].[Classes] ([Id], [Name], [Gender], [BirthYear], [MobiPhone], [HomePhone], [Email], [HouseNumber], [Street], [Ward], [ProvinceId], [DistrictId], [IsHighined], [IsHomePage], [Status], [OrderedStatus], [WonTutorId], [PlanStartDate], [PlanEndDate], [ActualStartDate], [ActualEndDate], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (17, N'Nguyễn Tuấn', N'1', N'1970', N'0909889999', NULL, N'tuannguyen@gmail.com', N'231', N'Trần Hưng Đạo', N'Phường 8', 1, 11, NULL, NULL, N'3', N'1', NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A0CC013EBF1D AS DateTime), CAST(0x0000A0CC013EBF1D AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Classes] OFF
/****** Object:  Table [dbo].[UserProfiles]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserProfiles](
	[Id] [int] NOT NULL,
	[DOB] [datetime] NULL,
	[Gender] [char](1) NULL,
	[University] [nvarchar](255) NULL,
	[SpecialityId] [int] NULL,
	[MobiPhone] [nvarchar](255) NULL,
	[HomePhone] [nvarchar](255) NULL,
	[HouseNumber] [nvarchar](255) NULL,
	[Street] [nvarchar](255) NULL,
	[Ward] [nvarchar](255) NULL,
	[NationId] [int] NULL,
	[ProvinceId] [int] NULL,
	[DistrictId] [int] NULL,
	[AboutMe] [nvarchar](max) NULL,
	[HasAvatar] [bit] NULL,
	[ImageFileName] [nvarchar](255) NULL,
	[Website] [nvarchar](500) NULL,
	[FacebookPage] [nvarchar](500) NULL,
	[GooglePlusPage] [nvarchar](500) NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_UserProfiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[UserProfiles] ([Id], [DOB], [Gender], [University], [SpecialityId], [MobiPhone], [HomePhone], [HouseNumber], [Street], [Ward], [NationId], [ProvinceId], [DistrictId], [AboutMe], [HasAvatar], [ImageFileName], [Website], [FacebookPage], [GooglePlusPage], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (1, CAST(0x000082AB00000000 AS DateTime), N'1', N'Infoworld School', NULL, N'0984582188', NULL, N'Số 18', N'Đường 16', N'Phường 4', NULL, 1, 8, NULL, NULL, N'Profile-dbf37495-190b-4c10-a08c-ac9721a2a9fc.png', N'http://my.opera.com/ngohuuloc', N'https://www.facebook.com/buddyngo', N'https://plus.google.com/110527818093014885900', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[UserProfiles] ([Id], [DOB], [Gender], [University], [SpecialityId], [MobiPhone], [HomePhone], [HouseNumber], [Street], [Ward], [NationId], [ProvinceId], [DistrictId], [AboutMe], [HasAvatar], [ImageFileName], [Website], [FacebookPage], [GooglePlusPage], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (18, CAST(0x000082A200000000 AS DateTime), N'1', N'Infoworld School', NULL, N'0937290966', NULL, N'18', N'Đường 16', N'Phường 4', NULL, 1, 8, NULL, NULL, NULL, N'http://mywebsite.com.vn', N'https://www.facebook.com/giasu0001', N'https://plus.google.com/110527818099381785900', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[UserProfiles] ([Id], [DOB], [Gender], [University], [SpecialityId], [MobiPhone], [HomePhone], [HouseNumber], [Street], [Ward], [NationId], [ProvinceId], [DistrictId], [AboutMe], [HasAvatar], [ImageFileName], [Website], [FacebookPage], [GooglePlusPage], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (22, CAST(0x00005E3F00000000 AS DateTime), N'2', NULL, NULL, N'0909667788', NULL, N'43', N'Nguyễn Thông', N'Phường 6', NULL, 1, 3, NULL, NULL, NULL, N'http://hoaphan.com.vn', N'https://www.facebook.com/phuhuynh0001', N'https://plus.google.com/110527818092819201843', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
INSERT [dbo].[UserProfiles] ([Id], [DOB], [Gender], [University], [SpecialityId], [MobiPhone], [HomePhone], [HouseNumber], [Street], [Ward], [NationId], [ProvinceId], [DistrictId], [AboutMe], [HasAvatar], [ImageFileName], [Website], [FacebookPage], [GooglePlusPage], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (23, CAST(0x000082A200000000 AS DateTime), N'2', N'ĐH Sư Phạm HCM', NULL, N'0919226699', NULL, N'423', N'Nguyễn Tri Phương', N'Phường 5', NULL, 1, 10, NULL, NULL, NULL, N'http://mylove.com.vn', N'https://www.facebook.com/giasu0002', N'https://plus.google.com/110527818098302938610', CAST(0x00009FCB00000000 AS DateTime), CAST(0x00009FCB00000000 AS DateTime), NULL, 0)
/****** Object:  Table [dbo].[TutorClassFindingRequests]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TutorClassFindingRequests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Gender] [char](1) NULL,
	[BirthYear] [char](4) NULL,
	[TutorLevel] [char](1) NULL,
	[UniversityName] [nvarchar](255) NULL,
	[SpecialityId] [int] NULL,
	[MobiPhone] [nvarchar](255) NULL,
	[HomePhone] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[HasImage] [bit] NULL,
	[ImageFileName] [nvarchar](255) NULL,
	[HouseNumber] [nvarchar](255) NULL,
	[Street] [nvarchar](255) NULL,
	[Ward] [nvarchar](255) NULL,
	[ProvinceId] [int] NULL,
	[DistrictId] [int] NULL,
	[IsHighlined] [bit] NULL,
	[IsHomePage] [bit] NULL,
	[Status] [char](1) NULL,
	[AuthorId] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ClassFindings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TutorClassFindingRequests] ON
INSERT [dbo].[TutorClassFindingRequests] ([Id], [Name], [Gender], [BirthYear], [TutorLevel], [UniversityName], [SpecialityId], [MobiPhone], [HomePhone], [Email], [HasImage], [ImageFileName], [HouseNumber], [Street], [Ward], [ProvinceId], [DistrictId], [IsHighlined], [IsHomePage], [Status], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (20, N'Phùng Minh Tuấn', N'1', N'1991', N'2', N'Infoworld School', 6, N'0937290966', NULL, N'giasu0001@yahoo.com', NULL, NULL, N'18', N'Đường 16', N'Phường 4', 1, 8, NULL, NULL, N'3', 18, CAST(0x0000A0CC0136E95F AS DateTime), CAST(0x0000A0CD0043C87F AS DateTime), NULL, 0)
INSERT [dbo].[TutorClassFindingRequests] ([Id], [Name], [Gender], [BirthYear], [TutorLevel], [UniversityName], [SpecialityId], [MobiPhone], [HomePhone], [Email], [HasImage], [ImageFileName], [HouseNumber], [Street], [Ward], [ProvinceId], [DistrictId], [IsHighlined], [IsHomePage], [Status], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (21, N'Trần Quốc Tuấn', N'1', N'1991', N'3', N'Infoworld School', 5, N'0937290966', NULL, N'giasu0001@yahoo.com', NULL, NULL, N'18', N'Đường 16', N'Phường 4', 1, 8, NULL, NULL, N'3', 18, CAST(0x0000A0CC0138401C AS DateTime), CAST(0x0000A0CD006617BF AS DateTime), NULL, 0)
INSERT [dbo].[TutorClassFindingRequests] ([Id], [Name], [Gender], [BirthYear], [TutorLevel], [UniversityName], [SpecialityId], [MobiPhone], [HomePhone], [Email], [HasImage], [ImageFileName], [HouseNumber], [Street], [Ward], [ProvinceId], [DistrictId], [IsHighlined], [IsHomePage], [Status], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (22, N'Trần Thị Tú Quyên', N'2', N'1991', N'3', N'ĐH Sư Phạm HCM', 12, N'0919226699', NULL, N'giasu0002@yahoo.com', NULL, NULL, N'423', N'Nguyễn Tri Phương', N'Phường 5', 1, 10, NULL, NULL, N'3', 23, CAST(0x0000A0CC013BB956 AS DateTime), CAST(0x0000A0CD0066850A AS DateTime), NULL, 0)
INSERT [dbo].[TutorClassFindingRequests] ([Id], [Name], [Gender], [BirthYear], [TutorLevel], [UniversityName], [SpecialityId], [MobiPhone], [HomePhone], [Email], [HasImage], [ImageFileName], [HouseNumber], [Street], [Ward], [ProvinceId], [DistrictId], [IsHighlined], [IsHomePage], [Status], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (23, N'Ngô Khả Nhu', N'2', N'1992', N'2', N'ĐH KHTN HCM', 2, N'0946437700', NULL, N'ngokhanhu@gmail.com', NULL, NULL, N'99', N'Đường Kỳ Đồng', N'Phường 7', 1, 3, NULL, NULL, N'3', NULL, CAST(0x0000A0CC013D31A7 AS DateTime), CAST(0x0000A0CC013D31A7 AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[TutorClassFindingRequests] OFF
/****** Object:  Table [dbo].[ClassTutorTransactions]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClassTutorTransactions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NULL,
	[ClassFindingId] [int] NULL,
	[TutorName] [nvarchar](255) NULL,
	[TutorGender] [char](1) NULL,
	[TutorBirthYear] [char](4) NULL,
	[TutorLevel] [char](1) NULL,
	[TutorUniversityName] [nvarchar](255) NULL,
	[TutorSpecialityId] [int] NULL,
	[TutorMobiPhone] [nvarchar](255) NULL,
	[TutorHomePhone] [nvarchar](255) NULL,
	[TutorEmail] [nvarchar](255) NULL,
	[TutorHouseNumber] [nvarchar](255) NULL,
	[TutorStreet] [nvarchar](255) NULL,
	[TutorWard] [nvarchar](255) NULL,
	[TutorProvinceId] [int] NULL,
	[TutorDistrictId] [int] NULL,
	[ParentsName] [nvarchar](255) NULL,
	[ParentsGender] [char](1) NULL,
	[ParentsBirthYear] [char](4) NULL,
	[ParentsMobiPhone] [nvarchar](255) NULL,
	[ParentsHomePhone] [nvarchar](255) NULL,
	[ParentsEmail] [nvarchar](255) NULL,
	[ParentsHouseNumber] [nvarchar](255) NULL,
	[ParentsStreet] [nvarchar](255) NULL,
	[ParentsWard] [nvarchar](255) NULL,
	[ParentsProvinceId] [int] NULL,
	[ParentsDistrictId] [int] NULL,
	[Status] [char](1) NULL,
	[OrderedStatus] [char](1) NULL,
	[AuthorId] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_TransactionClassTeacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ClassTutorTransactions] ON
INSERT [dbo].[ClassTutorTransactions] ([Id], [ClassId], [ClassFindingId], [TutorName], [TutorGender], [TutorBirthYear], [TutorLevel], [TutorUniversityName], [TutorSpecialityId], [TutorMobiPhone], [TutorHomePhone], [TutorEmail], [TutorHouseNumber], [TutorStreet], [TutorWard], [TutorProvinceId], [TutorDistrictId], [ParentsName], [ParentsGender], [ParentsBirthYear], [ParentsMobiPhone], [ParentsHomePhone], [ParentsEmail], [ParentsHouseNumber], [ParentsStreet], [ParentsWard], [ParentsProvinceId], [ParentsDistrictId], [Status], [OrderedStatus], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (132, 15, NULL, N'Ngô Hữu Lộc', N'1', N'1991', N'2', N'Infoworld School', 6, N'0984582188', NULL, N'ngohuuloc@gmail.com', N'Số 18', N'Đường 16', N'Phường 4', 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'3', N'1', 1, CAST(0x0000A0CD005AE77B AS DateTime), CAST(0x0000A0CD005C0860 AS DateTime), NULL, 0)
INSERT [dbo].[ClassTutorTransactions] ([Id], [ClassId], [ClassFindingId], [TutorName], [TutorGender], [TutorBirthYear], [TutorLevel], [TutorUniversityName], [TutorSpecialityId], [TutorMobiPhone], [TutorHomePhone], [TutorEmail], [TutorHouseNumber], [TutorStreet], [TutorWard], [TutorProvinceId], [TutorDistrictId], [ParentsName], [ParentsGender], [ParentsBirthYear], [ParentsMobiPhone], [ParentsHomePhone], [ParentsEmail], [ParentsHouseNumber], [ParentsStreet], [ParentsWard], [ParentsProvinceId], [ParentsDistrictId], [Status], [OrderedStatus], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (133, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Ngô Hữu Lộc', N'1', N'1991', N'0984582188', NULL, N'ngohuuloc@gmail.com', N'Số 18', N'Đường 16', N'Phường 4', 1, 8, N'3', N'1', 1, CAST(0x0000A0CD005AECAA AS DateTime), CAST(0x0000A0CD005AECAA AS DateTime), NULL, 0)
INSERT [dbo].[ClassTutorTransactions] ([Id], [ClassId], [ClassFindingId], [TutorName], [TutorGender], [TutorBirthYear], [TutorLevel], [TutorUniversityName], [TutorSpecialityId], [TutorMobiPhone], [TutorHomePhone], [TutorEmail], [TutorHouseNumber], [TutorStreet], [TutorWard], [TutorProvinceId], [TutorDistrictId], [ParentsName], [ParentsGender], [ParentsBirthYear], [ParentsMobiPhone], [ParentsHomePhone], [ParentsEmail], [ParentsHouseNumber], [ParentsStreet], [ParentsWard], [ParentsProvinceId], [ParentsDistrictId], [Status], [OrderedStatus], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (134, 15, NULL, N'Bùi Anh Tuấn', N'1', N'1991', N'2', N'ĐH Bách Khoa HCM', 6, N'0946250927', NULL, N'tuanbui@gmail.com', N'42', N'Nguyễn Chí Thanh', N'Phường 7', 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'3', N'1', NULL, CAST(0x0000A0CD005CB280 AS DateTime), CAST(0x0000A0CD005CB280 AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[ClassTutorTransactions] OFF
/****** Object:  Table [dbo].[ClassRequirements]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClassRequirements](
	[Id] [int] NOT NULL,
	[TutorLevel] [char](1) NULL,
	[TutorGender] [char](1) NULL,
	[TutorUniversityName] [nvarchar](255) NULL,
	[PupilClassId] [int] NULL,
	[SpecialityId] [int] NULL,
	[Subjects] [nvarchar](256) NULL,
	[NumberOfPupil] [int] NULL,
	[NumberOfTimesInWeek] [int] NULL,
	[TimeFromTo] [nvarchar](255) NULL,
	[SalaryAmount] [int] NULL,
	[OtherComment] [nvarchar](500) NULL,
	[AuthorId] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ClassRequiredSkill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ClassRequirements] ([Id], [TutorLevel], [TutorGender], [TutorUniversityName], [PupilClassId], [SpecialityId], [Subjects], [NumberOfPupil], [NumberOfTimesInWeek], [TimeFromTo], [SalaryAmount], [OtherComment], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (14, N'2', N'3', NULL, 10, NULL, N'Toán', 1, 3, N'Các buổi chiều thứ 2, 4, 6, từ 3 đến 5 giờ', 2000000, N'Gia sư phải có thành tích học tập khá, giỏi, hạnh kiểm tốt.', NULL, CAST(0x0000A0CC0132DA31 AS DateTime), CAST(0x0000A0CC0132DA31 AS DateTime), NULL, 0)
INSERT [dbo].[ClassRequirements] ([Id], [TutorLevel], [TutorGender], [TutorUniversityName], [PupilClassId], [SpecialityId], [Subjects], [NumberOfPupil], [NumberOfTimesInWeek], [TimeFromTo], [SalaryAmount], [OtherComment], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (15, N'1', N'3', NULL, 16, NULL, N'Tin học văn phòng', 1, 3, N'Các buổi tối từ 6 đến 8 giờ thứ 2, 4, 6', 3000000, N'Gia sư dạy tại nhà phụ huynh.', NULL, CAST(0x0000A0CC0133958F AS DateTime), CAST(0x0000A0CC0133958F AS DateTime), NULL, 0)
INSERT [dbo].[ClassRequirements] ([Id], [TutorLevel], [TutorGender], [TutorUniversityName], [PupilClassId], [SpecialityId], [Subjects], [NumberOfPupil], [NumberOfTimesInWeek], [TimeFromTo], [SalaryAmount], [OtherComment], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (16, N'1', N'3', NULL, 15, NULL, N'TOEIC 500', 2, 2, N'Sáng thứ 7 và CN từ 7 đến 10 giờ', 3000000, N'Giáo viên có khả năng giao tiếp và truyền đạt tốt.', NULL, CAST(0x0000A0CC01356400 AS DateTime), CAST(0x0000A0CC01356400 AS DateTime), NULL, 0)
INSERT [dbo].[ClassRequirements] ([Id], [TutorLevel], [TutorGender], [TutorUniversityName], [PupilClassId], [SpecialityId], [Subjects], [NumberOfPupil], [NumberOfTimesInWeek], [TimeFromTo], [SalaryAmount], [OtherComment], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (17, N'2', N'3', N'ĐH Sư Phạm', 10, NULL, N'Vật Lý', 1, 2, N'Thứ 7 và CN từ 8 đến 10 giờ', 2000000, NULL, NULL, CAST(0x0000A0CC013EBF1E AS DateTime), CAST(0x0000A0CC013EBF1E AS DateTime), NULL, 0)
/****** Object:  Table [dbo].[TutorClassRequireSkills]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TutorClassRequireSkills](
	[Id] [int] NOT NULL,
	[CanTeachClassLevelFromId] [int] NULL,
	[CanTeachClassLevelToId] [int] NULL,
	[Subjects] [nvarchar](255) NULL,
	[AreaWantToTeach] [nvarchar](255) NULL,
	[NumberOfTimesInWeek] [int] NULL,
	[TimeFromTo] [nvarchar](255) NULL,
	[NumberOfPupil] [int] NULL,
	[SalaryAmount] [int] NULL,
	[OtherComment] [nvarchar](500) NULL,
	[AuthorId] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ClassFindingRequiredExtension] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TutorClassRequireSkills] ([Id], [CanTeachClassLevelFromId], [CanTeachClassLevelToId], [Subjects], [AreaWantToTeach], [NumberOfTimesInWeek], [TimeFromTo], [NumberOfPupil], [SalaryAmount], [OtherComment], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (20, 16, 16, N'Tin học văn phòng, Lập trình OOP (C#)', N'Nội thành TP. HCM', 3, N'Các buổi tối từ 6 đến 8 giờ thứ 2, 4, 6', NULL, 2000000, NULL, NULL, CAST(0x0000A0CC0136E960 AS DateTime), CAST(0x0000A0CD0043C880 AS DateTime), NULL, 0)
INSERT [dbo].[TutorClassRequireSkills] ([Id], [CanTeachClassLevelFromId], [CanTeachClassLevelToId], [Subjects], [AreaWantToTeach], [NumberOfTimesInWeek], [TimeFromTo], [NumberOfPupil], [SalaryAmount], [OtherComment], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (21, 15, 15, N'TOEIC 500', N'Nội thành TP. HCM', 2, N'Các buổi sáng thứ 7 và CN từ 7 đến 10 giờ', NULL, 1500000, NULL, NULL, CAST(0x0000A0CC0138401D AS DateTime), CAST(0x0000A0CC0138401D AS DateTime), NULL, 0)
INSERT [dbo].[TutorClassRequireSkills] ([Id], [CanTeachClassLevelFromId], [CanTeachClassLevelToId], [Subjects], [AreaWantToTeach], [NumberOfTimesInWeek], [TimeFromTo], [NumberOfPupil], [SalaryAmount], [OtherComment], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (22, 10, 12, N'Toán', N'Nội thành TP. HCM', 3, N'Các buổi chiều từ 3 đến 5 giờ', NULL, 2000000, NULL, NULL, CAST(0x0000A0CC013BB957 AS DateTime), CAST(0x0000A0CC013BB957 AS DateTime), NULL, 0)
INSERT [dbo].[TutorClassRequireSkills] ([Id], [CanTeachClassLevelFromId], [CanTeachClassLevelToId], [Subjects], [AreaWantToTeach], [NumberOfTimesInWeek], [TimeFromTo], [NumberOfPupil], [SalaryAmount], [OtherComment], [AuthorId], [CreatedTime], [UpdatedTime], [DeletedTime], [IsDeleted]) VALUES (23, 10, 12, N'Chuyên Lý', N'Nội thành TP. HCM', 3, N'Thứ 7 và CN, giờ linh động', NULL, 2000000, NULL, NULL, CAST(0x0000A0CC013D31A7 AS DateTime), CAST(0x0000A0CC013D31A8 AS DateTime), NULL, 0)
/****** Object:  Table [dbo].[ArticleTranlatedRatings]    Script Date: 09/15/2012 22:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArticleTranlatedRatings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RatingLevel] [char](1) NULL,
	[ArticleTranslatedId] [int] NULL,
	[RatingUserId] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[UpdatedTime] [datetime] NULL,
	[DeletedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ArticleCommentRatings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_BannerPositions_Name]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[AdsPositions] ADD  CONSTRAINT [DF_BannerPositions_Name]  DEFAULT (N'fdsf') FOR [Name]
GO
/****** Object:  ForeignKey [FK_ProvinceMasters_NationalMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ProvinceMasters]  WITH CHECK ADD  CONSTRAINT [FK_ProvinceMasters_NationalMasters] FOREIGN KEY([NationId])
REFERENCES [dbo].[NationalMasters] ([Id])
GO
ALTER TABLE [dbo].[ProvinceMasters] CHECK CONSTRAINT [FK_ProvinceMasters_NationalMasters]
GO
/****** Object:  ForeignKey [FK_ProfilePosts_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ProfilePosts]  WITH CHECK ADD  CONSTRAINT [FK_ProfilePosts_UsersMasters] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[ProfilePosts] CHECK CONSTRAINT [FK_ProfilePosts_UsersMasters]
GO
/****** Object:  ForeignKey [FK_ProfileLanguages_LanguageMaster]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ProfileLanguages]  WITH CHECK ADD  CONSTRAINT [FK_ProfileLanguages_LanguageMaster] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[LanguageMaster] ([Id])
GO
ALTER TABLE [dbo].[ProfileLanguages] CHECK CONSTRAINT [FK_ProfileLanguages_LanguageMaster]
GO
/****** Object:  ForeignKey [FK_ProfileLanguages_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ProfileLanguages]  WITH CHECK ADD  CONSTRAINT [FK_ProfileLanguages_UsersMasters] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[ProfileLanguages] CHECK CONSTRAINT [FK_ProfileLanguages_UsersMasters]
GO
/****** Object:  ForeignKey [FK_ProfileExperiences_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ProfileExperiences]  WITH CHECK ADD  CONSTRAINT [FK_ProfileExperiences_UsersMasters] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[ProfileExperiences] CHECK CONSTRAINT [FK_ProfileExperiences_UsersMasters]
GO
/****** Object:  ForeignKey [FK_ArticleCategories_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ArticleCategories]  WITH CHECK ADD  CONSTRAINT [FK_ArticleCategories_UsersMasters] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[ArticleCategories] CHECK CONSTRAINT [FK_ArticleCategories_UsersMasters]
GO
/****** Object:  ForeignKey [FK_AdsInformations_AdsPositions]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[AdsInformations]  WITH CHECK ADD  CONSTRAINT [FK_AdsInformations_AdsPositions] FOREIGN KEY([AdsPositionId])
REFERENCES [dbo].[AdsPositions] ([Id])
GO
ALTER TABLE [dbo].[AdsInformations] CHECK CONSTRAINT [FK_AdsInformations_AdsPositions]
GO
/****** Object:  ForeignKey [FK_AdsInformations_AdsTypes]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[AdsInformations]  WITH CHECK ADD  CONSTRAINT [FK_AdsInformations_AdsTypes] FOREIGN KEY([AdsTypeId])
REFERENCES [dbo].[AdsTypes] ([Id])
GO
ALTER TABLE [dbo].[AdsInformations] CHECK CONSTRAINT [FK_AdsInformations_AdsTypes]
GO
/****** Object:  ForeignKey [FK_AdsInformations_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[AdsInformations]  WITH CHECK ADD  CONSTRAINT [FK_AdsInformations_UsersMasters] FOREIGN KEY([ClientId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[AdsInformations] CHECK CONSTRAINT [FK_AdsInformations_UsersMasters]
GO
/****** Object:  ForeignKey [FK_UserEducations_UsersMasters1]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[UserEducations]  WITH CHECK ADD  CONSTRAINT [FK_UserEducations_UsersMasters1] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[UserEducations] CHECK CONSTRAINT [FK_UserEducations_UsersMasters1]
GO
/****** Object:  ForeignKey [FK_Friends_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[Friends]  WITH CHECK ADD  CONSTRAINT [FK_Friends_UsersMasters] FOREIGN KEY([UserId1])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[Friends] CHECK CONSTRAINT [FK_Friends_UsersMasters]
GO
/****** Object:  ForeignKey [FK_Friends_UsersMasters1]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[Friends]  WITH CHECK ADD  CONSTRAINT [FK_Friends_UsersMasters1] FOREIGN KEY([UserId2])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[Friends] CHECK CONSTRAINT [FK_Friends_UsersMasters1]
GO
/****** Object:  ForeignKey [FK_Friends_UsersMasters2]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[Friends]  WITH CHECK ADD  CONSTRAINT [FK_Friends_UsersMasters2] FOREIGN KEY([UserRecommendId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[Friends] CHECK CONSTRAINT [FK_Friends_UsersMasters2]
GO
/****** Object:  ForeignKey [FK_DistrictMasters_ProvinceMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[DistrictMasters]  WITH CHECK ADD  CONSTRAINT [FK_DistrictMasters_ProvinceMasters] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[ProvinceMasters] ([Id])
GO
ALTER TABLE [dbo].[DistrictMasters] CHECK CONSTRAINT [FK_DistrictMasters_ProvinceMasters]
GO
/****** Object:  ForeignKey [FK_Articles_ArticleCategories]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_Articles_ArticleCategories] FOREIGN KEY([ArticleCategoryId])
REFERENCES [dbo].[ArticleCategories] ([Id])
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_Articles_ArticleCategories]
GO
/****** Object:  ForeignKey [FK_Articles_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_Articles_UsersMasters] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_Articles_UsersMasters]
GO
/****** Object:  ForeignKey [FK_ArticleRatings_Articles]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ArticleRatings]  WITH CHECK ADD  CONSTRAINT [FK_ArticleRatings_Articles] FOREIGN KEY([ArticleId])
REFERENCES [dbo].[Articles] ([Id])
GO
ALTER TABLE [dbo].[ArticleRatings] CHECK CONSTRAINT [FK_ArticleRatings_Articles]
GO
/****** Object:  ForeignKey [FK_ArticleRatings_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ArticleRatings]  WITH CHECK ADD  CONSTRAINT [FK_ArticleRatings_UsersMasters] FOREIGN KEY([RatingUserId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[ArticleRatings] CHECK CONSTRAINT [FK_ArticleRatings_UsersMasters]
GO
/****** Object:  ForeignKey [FK_ArticleComments_ArticleComments]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ArticleComments]  WITH CHECK ADD  CONSTRAINT [FK_ArticleComments_ArticleComments] FOREIGN KEY([ParentCommentId])
REFERENCES [dbo].[ArticleComments] ([Id])
GO
ALTER TABLE [dbo].[ArticleComments] CHECK CONSTRAINT [FK_ArticleComments_ArticleComments]
GO
/****** Object:  ForeignKey [FK_ArticleComments_Articles]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ArticleComments]  WITH CHECK ADD  CONSTRAINT [FK_ArticleComments_Articles] FOREIGN KEY([ArticleId])
REFERENCES [dbo].[Articles] ([Id])
GO
ALTER TABLE [dbo].[ArticleComments] CHECK CONSTRAINT [FK_ArticleComments_Articles]
GO
/****** Object:  ForeignKey [FK_ArticleComments_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ArticleComments]  WITH CHECK ADD  CONSTRAINT [FK_ArticleComments_UsersMasters] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[ArticleComments] CHECK CONSTRAINT [FK_ArticleComments_UsersMasters]
GO
/****** Object:  ForeignKey [FK_ArticlesTranslated_Articles]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ArticlesTranslated]  WITH CHECK ADD  CONSTRAINT [FK_ArticlesTranslated_Articles] FOREIGN KEY([ArticleId])
REFERENCES [dbo].[Articles] ([Id])
GO
ALTER TABLE [dbo].[ArticlesTranslated] CHECK CONSTRAINT [FK_ArticlesTranslated_Articles]
GO
/****** Object:  ForeignKey [FK_ArticlesTranslated_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ArticlesTranslated]  WITH CHECK ADD  CONSTRAINT [FK_ArticlesTranslated_UsersMasters] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[ArticlesTranslated] CHECK CONSTRAINT [FK_ArticlesTranslated_UsersMasters]
GO
/****** Object:  ForeignKey [FK_Classes_DistrictMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_Classes_DistrictMasters] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[DistrictMasters] ([Id])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_Classes_DistrictMasters]
GO
/****** Object:  ForeignKey [FK_Classes_ProvinceMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_Classes_ProvinceMasters] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[ProvinceMasters] ([Id])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_Classes_ProvinceMasters]
GO
/****** Object:  ForeignKey [FK_Classes_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_Classes_UsersMasters] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_Classes_UsersMasters]
GO
/****** Object:  ForeignKey [FK_Classes_UsersMasters2]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_Classes_UsersMasters2] FOREIGN KEY([WonTutorId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_Classes_UsersMasters2]
GO
/****** Object:  ForeignKey [FK_UserProfiles_DistrictMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[UserProfiles]  WITH CHECK ADD  CONSTRAINT [FK_UserProfiles_DistrictMasters] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[DistrictMasters] ([Id])
GO
ALTER TABLE [dbo].[UserProfiles] CHECK CONSTRAINT [FK_UserProfiles_DistrictMasters]
GO
/****** Object:  ForeignKey [FK_UserProfiles_NationalMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[UserProfiles]  WITH CHECK ADD  CONSTRAINT [FK_UserProfiles_NationalMasters] FOREIGN KEY([NationId])
REFERENCES [dbo].[NationalMasters] ([Id])
GO
ALTER TABLE [dbo].[UserProfiles] CHECK CONSTRAINT [FK_UserProfiles_NationalMasters]
GO
/****** Object:  ForeignKey [FK_UserProfiles_ProvinceMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[UserProfiles]  WITH CHECK ADD  CONSTRAINT [FK_UserProfiles_ProvinceMasters] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[ProvinceMasters] ([Id])
GO
ALTER TABLE [dbo].[UserProfiles] CHECK CONSTRAINT [FK_UserProfiles_ProvinceMasters]
GO
/****** Object:  ForeignKey [FK_UserProfiles_SpecialityMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[UserProfiles]  WITH CHECK ADD  CONSTRAINT [FK_UserProfiles_SpecialityMasters] FOREIGN KEY([SpecialityId])
REFERENCES [dbo].[SpecialityMasters] ([Id])
GO
ALTER TABLE [dbo].[UserProfiles] CHECK CONSTRAINT [FK_UserProfiles_SpecialityMasters]
GO
/****** Object:  ForeignKey [FK_UserProfiles_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[UserProfiles]  WITH CHECK ADD  CONSTRAINT [FK_UserProfiles_UsersMasters] FOREIGN KEY([Id])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[UserProfiles] CHECK CONSTRAINT [FK_UserProfiles_UsersMasters]
GO
/****** Object:  ForeignKey [FK_TutorClassFindingRequests_DistrictMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[TutorClassFindingRequests]  WITH CHECK ADD  CONSTRAINT [FK_TutorClassFindingRequests_DistrictMasters] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[DistrictMasters] ([Id])
GO
ALTER TABLE [dbo].[TutorClassFindingRequests] CHECK CONSTRAINT [FK_TutorClassFindingRequests_DistrictMasters]
GO
/****** Object:  ForeignKey [FK_TutorClassFindingRequests_ProvinceMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[TutorClassFindingRequests]  WITH CHECK ADD  CONSTRAINT [FK_TutorClassFindingRequests_ProvinceMasters] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[ProvinceMasters] ([Id])
GO
ALTER TABLE [dbo].[TutorClassFindingRequests] CHECK CONSTRAINT [FK_TutorClassFindingRequests_ProvinceMasters]
GO
/****** Object:  ForeignKey [FK_TutorClassFindingRequests_SpecialityMasters1]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[TutorClassFindingRequests]  WITH CHECK ADD  CONSTRAINT [FK_TutorClassFindingRequests_SpecialityMasters1] FOREIGN KEY([SpecialityId])
REFERENCES [dbo].[SpecialityMasters] ([Id])
GO
ALTER TABLE [dbo].[TutorClassFindingRequests] CHECK CONSTRAINT [FK_TutorClassFindingRequests_SpecialityMasters1]
GO
/****** Object:  ForeignKey [FK_TutorClassFindingRequests_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[TutorClassFindingRequests]  WITH CHECK ADD  CONSTRAINT [FK_TutorClassFindingRequests_UsersMasters] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[TutorClassFindingRequests] CHECK CONSTRAINT [FK_TutorClassFindingRequests_UsersMasters]
GO
/****** Object:  ForeignKey [FK_ClassTutorTransactions_Classes]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ClassTutorTransactions]  WITH CHECK ADD  CONSTRAINT [FK_ClassTutorTransactions_Classes] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[ClassTutorTransactions] CHECK CONSTRAINT [FK_ClassTutorTransactions_Classes]
GO
/****** Object:  ForeignKey [FK_ClassTutorTransactions_DistrictMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ClassTutorTransactions]  WITH CHECK ADD  CONSTRAINT [FK_ClassTutorTransactions_DistrictMasters] FOREIGN KEY([TutorDistrictId])
REFERENCES [dbo].[DistrictMasters] ([Id])
GO
ALTER TABLE [dbo].[ClassTutorTransactions] CHECK CONSTRAINT [FK_ClassTutorTransactions_DistrictMasters]
GO
/****** Object:  ForeignKey [FK_ClassTutorTransactions_DistrictMasters1]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ClassTutorTransactions]  WITH CHECK ADD  CONSTRAINT [FK_ClassTutorTransactions_DistrictMasters1] FOREIGN KEY([ParentsDistrictId])
REFERENCES [dbo].[DistrictMasters] ([Id])
GO
ALTER TABLE [dbo].[ClassTutorTransactions] CHECK CONSTRAINT [FK_ClassTutorTransactions_DistrictMasters1]
GO
/****** Object:  ForeignKey [FK_ClassTutorTransactions_ProvinceMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ClassTutorTransactions]  WITH CHECK ADD  CONSTRAINT [FK_ClassTutorTransactions_ProvinceMasters] FOREIGN KEY([TutorProvinceId])
REFERENCES [dbo].[ProvinceMasters] ([Id])
GO
ALTER TABLE [dbo].[ClassTutorTransactions] CHECK CONSTRAINT [FK_ClassTutorTransactions_ProvinceMasters]
GO
/****** Object:  ForeignKey [FK_ClassTutorTransactions_ProvinceMasters1]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ClassTutorTransactions]  WITH CHECK ADD  CONSTRAINT [FK_ClassTutorTransactions_ProvinceMasters1] FOREIGN KEY([ParentsProvinceId])
REFERENCES [dbo].[ProvinceMasters] ([Id])
GO
ALTER TABLE [dbo].[ClassTutorTransactions] CHECK CONSTRAINT [FK_ClassTutorTransactions_ProvinceMasters1]
GO
/****** Object:  ForeignKey [FK_ClassTutorTransactions_SpecialityMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ClassTutorTransactions]  WITH CHECK ADD  CONSTRAINT [FK_ClassTutorTransactions_SpecialityMasters] FOREIGN KEY([TutorSpecialityId])
REFERENCES [dbo].[SpecialityMasters] ([Id])
GO
ALTER TABLE [dbo].[ClassTutorTransactions] CHECK CONSTRAINT [FK_ClassTutorTransactions_SpecialityMasters]
GO
/****** Object:  ForeignKey [FK_ClassTutorTransactions_TutorClassFindingRequests]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ClassTutorTransactions]  WITH CHECK ADD  CONSTRAINT [FK_ClassTutorTransactions_TutorClassFindingRequests] FOREIGN KEY([ClassFindingId])
REFERENCES [dbo].[TutorClassFindingRequests] ([Id])
GO
ALTER TABLE [dbo].[ClassTutorTransactions] CHECK CONSTRAINT [FK_ClassTutorTransactions_TutorClassFindingRequests]
GO
/****** Object:  ForeignKey [FK_ClassTutorTransactions_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ClassTutorTransactions]  WITH CHECK ADD  CONSTRAINT [FK_ClassTutorTransactions_UsersMasters] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[ClassTutorTransactions] CHECK CONSTRAINT [FK_ClassTutorTransactions_UsersMasters]
GO
/****** Object:  ForeignKey [FK_ClassRequirements_Classes]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ClassRequirements]  WITH CHECK ADD  CONSTRAINT [FK_ClassRequirements_Classes] FOREIGN KEY([Id])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[ClassRequirements] CHECK CONSTRAINT [FK_ClassRequirements_Classes]
GO
/****** Object:  ForeignKey [FK_ClassRequirements_ClassMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ClassRequirements]  WITH CHECK ADD  CONSTRAINT [FK_ClassRequirements_ClassMasters] FOREIGN KEY([PupilClassId])
REFERENCES [dbo].[ClassMasters] ([Id])
GO
ALTER TABLE [dbo].[ClassRequirements] CHECK CONSTRAINT [FK_ClassRequirements_ClassMasters]
GO
/****** Object:  ForeignKey [FK_ClassRequirements_SpecialityMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ClassRequirements]  WITH CHECK ADD  CONSTRAINT [FK_ClassRequirements_SpecialityMasters] FOREIGN KEY([SpecialityId])
REFERENCES [dbo].[SpecialityMasters] ([Id])
GO
ALTER TABLE [dbo].[ClassRequirements] CHECK CONSTRAINT [FK_ClassRequirements_SpecialityMasters]
GO
/****** Object:  ForeignKey [FK_ClassRequirements_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ClassRequirements]  WITH CHECK ADD  CONSTRAINT [FK_ClassRequirements_UsersMasters] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[ClassRequirements] CHECK CONSTRAINT [FK_ClassRequirements_UsersMasters]
GO
/****** Object:  ForeignKey [FK_TutorClassRequireSkills_ClassMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[TutorClassRequireSkills]  WITH CHECK ADD  CONSTRAINT [FK_TutorClassRequireSkills_ClassMasters] FOREIGN KEY([CanTeachClassLevelFromId])
REFERENCES [dbo].[ClassMasters] ([Id])
GO
ALTER TABLE [dbo].[TutorClassRequireSkills] CHECK CONSTRAINT [FK_TutorClassRequireSkills_ClassMasters]
GO
/****** Object:  ForeignKey [FK_TutorClassRequireSkills_ClassMasters1]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[TutorClassRequireSkills]  WITH CHECK ADD  CONSTRAINT [FK_TutorClassRequireSkills_ClassMasters1] FOREIGN KEY([CanTeachClassLevelToId])
REFERENCES [dbo].[ClassMasters] ([Id])
GO
ALTER TABLE [dbo].[TutorClassRequireSkills] CHECK CONSTRAINT [FK_TutorClassRequireSkills_ClassMasters1]
GO
/****** Object:  ForeignKey [FK_TutorClassRequireSkills_TutorClassFindingRequests]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[TutorClassRequireSkills]  WITH CHECK ADD  CONSTRAINT [FK_TutorClassRequireSkills_TutorClassFindingRequests] FOREIGN KEY([Id])
REFERENCES [dbo].[TutorClassFindingRequests] ([Id])
GO
ALTER TABLE [dbo].[TutorClassRequireSkills] CHECK CONSTRAINT [FK_TutorClassRequireSkills_TutorClassFindingRequests]
GO
/****** Object:  ForeignKey [FK_TutorClassRequireSkills_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[TutorClassRequireSkills]  WITH CHECK ADD  CONSTRAINT [FK_TutorClassRequireSkills_UsersMasters] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[TutorClassRequireSkills] CHECK CONSTRAINT [FK_TutorClassRequireSkills_UsersMasters]
GO
/****** Object:  ForeignKey [FK_ArticletranlatedRatings_ArticlesTranslated]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ArticleTranlatedRatings]  WITH CHECK ADD  CONSTRAINT [FK_ArticletranlatedRatings_ArticlesTranslated] FOREIGN KEY([ArticleTranslatedId])
REFERENCES [dbo].[ArticlesTranslated] ([Id])
GO
ALTER TABLE [dbo].[ArticleTranlatedRatings] CHECK CONSTRAINT [FK_ArticletranlatedRatings_ArticlesTranslated]
GO
/****** Object:  ForeignKey [FK_ArticletranlatedRatings_UsersMasters]    Script Date: 09/15/2012 22:52:03 ******/
ALTER TABLE [dbo].[ArticleTranlatedRatings]  WITH CHECK ADD  CONSTRAINT [FK_ArticletranlatedRatings_UsersMasters] FOREIGN KEY([RatingUserId])
REFERENCES [dbo].[UserMasters] ([Id])
GO
ALTER TABLE [dbo].[ArticleTranlatedRatings] CHECK CONSTRAINT [FK_ArticletranlatedRatings_UsersMasters]
GO
