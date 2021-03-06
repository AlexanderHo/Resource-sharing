USE [Booking]
GO
ALTER TABLE [dbo].[Resource] DROP CONSTRAINT [FK_Resource_Category]
GO
ALTER TABLE [dbo].[Rent] DROP CONSTRAINT [FK_Rent_User]
GO
ALTER TABLE [dbo].[Rent] DROP CONSTRAINT [FK_Rent_Resource1]
GO
ALTER TABLE [dbo].[Category] DROP CONSTRAINT [FK_Category_Category]
GO
ALTER TABLE [dbo].[User] DROP CONSTRAINT [DF_User_CreateDate]
GO
ALTER TABLE [dbo].[Rent] DROP CONSTRAINT [DF_Rent_RentDate]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/14/2021 11:22:23 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[Resource]    Script Date: 7/14/2021 11:22:23 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Resource]') AND type in (N'U'))
DROP TABLE [dbo].[Resource]
GO
/****** Object:  Table [dbo].[Rent]    Script Date: 7/14/2021 11:22:23 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rent]') AND type in (N'U'))
DROP TABLE [dbo].[Rent]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/14/2021 11:22:23 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/14/2021 11:22:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](150) NOT NULL,
	[CategoryDescription] [varchar](max) NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rent]    Script Date: 7/14/2021 11:22:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ResourceId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[NumberOfRentalDay] [int] NOT NULL,
	[RentDate] [date] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Rent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resource]    Script Date: 7/14/2021 11:22:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resource](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Color] [varchar](150) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UsingDate] [int] NOT NULL,
	[Description] [varchar](250) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Resource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/14/2021 11:22:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nchar](25) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
	[Phone] [nchar](10) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Role] [nchar](10) NOT NULL,
	[Status] [nchar](10) NOT NULL,
 CONSTRAINT [PK_User1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [CategoryName], [CategoryDescription], [CategoryId]) VALUES (1, N'
Service Cars ', N'
Rent a car in Da Lat with self-drive ', NULL)
INSERT [dbo].[Category] ([Id], [CategoryName], [CategoryDescription], [CategoryId]) VALUES (2, N'Travel services', N'Sightseeing by location', NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Rent] ON 

INSERT [dbo].[Rent] ([Id], [ResourceId], [UserId], [NumberOfRentalDay], [RentDate], [Status]) VALUES (4, 2, 15, 2, CAST(N'2021-05-20' AS Date), N'inactive                 ')
INSERT [dbo].[Rent] ([Id], [ResourceId], [UserId], [NumberOfRentalDay], [RentDate], [Status]) VALUES (5, 1, 15, 3, CAST(N'2021-05-19' AS Date), N'inactive')
INSERT [dbo].[Rent] ([Id], [ResourceId], [UserId], [NumberOfRentalDay], [RentDate], [Status]) VALUES (6, 2, 5, 123, CAST(N'2021-07-02' AS Date), N'inactive')
INSERT [dbo].[Rent] ([Id], [ResourceId], [UserId], [NumberOfRentalDay], [RentDate], [Status]) VALUES (7, 2, 5, 12, CAST(N'2021-07-03' AS Date), N'inactive')
INSERT [dbo].[Rent] ([Id], [ResourceId], [UserId], [NumberOfRentalDay], [RentDate], [Status]) VALUES (8, 2, 5, 1, CAST(N'2021-07-03' AS Date), N'inactive')
INSERT [dbo].[Rent] ([Id], [ResourceId], [UserId], [NumberOfRentalDay], [RentDate], [Status]) VALUES (9, 2, 5, 121, CAST(N'2021-07-03' AS Date), N'inactive')
INSERT [dbo].[Rent] ([Id], [ResourceId], [UserId], [NumberOfRentalDay], [RentDate], [Status]) VALUES (10, 2, 5, 121, CAST(N'2021-07-03' AS Date), N'inactive')
INSERT [dbo].[Rent] ([Id], [ResourceId], [UserId], [NumberOfRentalDay], [RentDate], [Status]) VALUES (11, 1, 5, 2, CAST(N'2021-07-03' AS Date), N'inactive')
INSERT [dbo].[Rent] ([Id], [ResourceId], [UserId], [NumberOfRentalDay], [RentDate], [Status]) VALUES (12, 1, 5, 3, CAST(N'2021-07-03' AS Date), N'inactive')
INSERT [dbo].[Rent] ([Id], [ResourceId], [UserId], [NumberOfRentalDay], [RentDate], [Status]) VALUES (13, 2, 15, 3, CAST(N'2021-07-12' AS Date), N'inactive')
INSERT [dbo].[Rent] ([Id], [ResourceId], [UserId], [NumberOfRentalDay], [RentDate], [Status]) VALUES (14, 1, 15, 12, CAST(N'2021-07-12' AS Date), N'inactive')
INSERT [dbo].[Rent] ([Id], [ResourceId], [UserId], [NumberOfRentalDay], [RentDate], [Status]) VALUES (15, 2, 25, 3, CAST(N'2021-07-13' AS Date), N'accepted')
INSERT [dbo].[Rent] ([Id], [ResourceId], [UserId], [NumberOfRentalDay], [RentDate], [Status]) VALUES (16, 1, 26, 3, CAST(N'2021-07-14' AS Date), N'accepted')
SET IDENTITY_INSERT [dbo].[Rent] OFF
GO
SET IDENTITY_INSERT [dbo].[Resource] ON 

INSERT [dbo].[Resource] ([Id], [Name], [Color], [Quantity], [UsingDate], [Description], [CategoryId]) VALUES (1, N'SUV ', N'Toyota', 12, 21, N'Sport utility vehicle', 1)
INSERT [dbo].[Resource] ([Id], [Name], [Color], [Quantity], [UsingDate], [Description], [CategoryId]) VALUES (2, N'Crossover', N'Meccedec', 10, 10, N'MultipMMurpose hybrid car ', 1)
SET IDENTITY_INSERT [dbo].[Resource] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [UserID], [Password], [Name], [Phone], [Address], [CreateDate], [Role], [Status]) VALUES (1, N'manager                  ', N'123', N'Tuandeptrai', N'0394705508', N'TP.HCM', CAST(N'2021-07-03' AS Date), N'manager   ', N'active    ')
INSERT [dbo].[User] ([Id], [UserID], [Password], [Name], [Phone], [Address], [CreateDate], [Role], [Status]) VALUES (5, N'user                     ', N'123', N'Khanh', N'0356966505', N'Hà Nội', CAST(N'2021-07-03' AS Date), N'employee  ', N'active    ')
INSERT [dbo].[User] ([Id], [UserID], [Password], [Name], [Phone], [Address], [CreateDate], [Role], [Status]) VALUES (15, N'user1                    ', N'123', N'kai', N'0394705507', N'Gia Lai', CAST(N'2021-07-12' AS Date), N'employee  ', N'active    ')
INSERT [dbo].[User] ([Id], [UserID], [Password], [Name], [Phone], [Address], [CreateDate], [Role], [Status]) VALUES (21, N'user2                    ', N'a', N'teo', N'1234567890', N'Tien Giang', CAST(N'2021-05-17' AS Date), N'employee  ', N'active    ')
INSERT [dbo].[User] ([Id], [UserID], [Password], [Name], [Phone], [Address], [CreateDate], [Role], [Status]) VALUES (22, N'user3                    ', N'123', N'ty', N'0394705508', N'An Giang', CAST(N'2021-07-03' AS Date), N'employee  ', N'active    ')
INSERT [dbo].[User] ([Id], [UserID], [Password], [Name], [Phone], [Address], [CreateDate], [Role], [Status]) VALUES (23, N'user 4                   ', N'123', N'tam', N'0394705508', N'Dak Lak', CAST(N'2021-07-03' AS Date), N'employee  ', N'active    ')
INSERT [dbo].[User] ([Id], [UserID], [Password], [Name], [Phone], [Address], [CreateDate], [Role], [Status]) VALUES (24, N'user11@gamail.com        ', N'123', N'teo em', N'0394705508', N'Gia Lai', CAST(N'2021-07-12' AS Date), N'employee  ', N'active    ')
INSERT [dbo].[User] ([Id], [UserID], [Password], [Name], [Phone], [Address], [CreateDate], [Role], [Status]) VALUES (25, N'usertest1@gamail.com     ', N'123', N'VÅ© Anh Tuáº¥n', N'0394705508', N'265 ÄÆ°á»ng 3 khu dÃ¢n cÆ° Khanh Äiá»n , PhÆ°á»ng PhÆ°á»c Long B, Quáº­n 9.thÃ nh phá» Há» ChÃ­ Minh', CAST(N'2021-07-13' AS Date), N'employee  ', N'active    ')
INSERT [dbo].[User] ([Id], [UserID], [Password], [Name], [Phone], [Address], [CreateDate], [Role], [Status]) VALUES (26, N'user123@gmail.com        ', N'123', N'teo', N'0394705508', N'Singapoe', CAST(N'2021-07-14' AS Date), N'employee  ', N'active    ')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Rent] ADD  CONSTRAINT [DF_Rent_RentDate]  DEFAULT (getdate()) FOR [RentDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_Category]
GO
ALTER TABLE [dbo].[Rent]  WITH CHECK ADD  CONSTRAINT [FK_Rent_Resource1] FOREIGN KEY([ResourceId])
REFERENCES [dbo].[Resource] ([Id])
GO
ALTER TABLE [dbo].[Rent] CHECK CONSTRAINT [FK_Rent_Resource1]
GO
ALTER TABLE [dbo].[Rent]  WITH CHECK ADD  CONSTRAINT [FK_Rent_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Rent] CHECK CONSTRAINT [FK_Rent_User]
GO
ALTER TABLE [dbo].[Resource]  WITH CHECK ADD  CONSTRAINT [FK_Resource_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Resource] CHECK CONSTRAINT [FK_Resource_Category]
GO
