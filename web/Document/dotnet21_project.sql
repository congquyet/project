USE [dotnet21_project]
GO
/****** Object:  Table [dbo].[Adv]    Script Date: 7/22/2023 8:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adv](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Photo] [nvarchar](500) NULL,
	[Position] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/22/2023 8:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[Name] [nvarchar](500) NULL,
	[DisplayHomePage] [int] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriesProducts]    Script Date: 7/22/2023 8:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriesProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_CategoriesProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 7/22/2023 8:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 7/22/2023 8:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [ntext] NULL,
	[Content] [ntext] NULL,
	[Hot] [int] NULL,
	[Photo] [nvarchar](500) NULL,
 CONSTRAINT [PK_News_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/22/2023 8:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[Create] [date] NULL,
	[Price] [float] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersDetail]    Script Date: 7/22/2023 8:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_orders_detail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/22/2023 8:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](4000) NULL,
	[Description] [nvarchar](4000) NULL,
	[Content] [ntext] NULL,
	[Photo] [nvarchar](4000) NULL,
	[Hot] [int] NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
 CONSTRAINT [PK_news] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 7/22/2023 8:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[Star] [int] NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slides]    Script Date: 7/22/2023 8:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slides](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Photo] [nvarchar](500) NULL,
	[Title] [nvarchar](500) NULL,
	[SubTitle] [nvarchar](500) NULL,
	[Info] [nvarchar](500) NULL,
	[Link] [nvarchar](500) NULL,
 CONSTRAINT [PK_Slides] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 7/22/2023 8:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagsProducts]    Script Date: 7/22/2023 8:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagsProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TagId] [int] NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_TagsProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/22/2023 8:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[Password] [nvarchar](500) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adv] ON 

INSERT [dbo].[Adv] ([Id], [Name], [Photo], [Position]) VALUES (2, N'Quảng cáo - trang sản phẩm (dưới Popular products)', N'133196271044757185_size-banner-widget.jpg', 5)
INSERT [dbo].[Adv] ([Id], [Name], [Photo], [Position]) VALUES (3, N'Quảng cáo - trang sản phẩm (dưới TAGS)', N'133196270822859689_size-banner-widget.jpg', 4)
INSERT [dbo].[Adv] ([Id], [Name], [Photo], [Position]) VALUES (4, N'Trang sản phẩm - banner', N'133196270271001362_shop-banner.jpg', 3)
INSERT [dbo].[Adv] ([Id], [Name], [Photo], [Position]) VALUES (6, N'Trang chủ - Ảnh Quảng cáo dưới slide show', N'133196268076271008_home-1-banner-2.jpg', 2)
INSERT [dbo].[Adv] ([Id], [Name], [Photo], [Position]) VALUES (7, N'Trang chủ - Quảng cáo dưới slide show', N'133196267836791334_home-1-banner-1.jpg', 1)
SET IDENTITY_INSERT [dbo].[Adv] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (3, 0, N'Digital & Electronics', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (4, 0, N'Furnitures & Home Decors', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (5, 0, N'Fashion & Accessories', 1)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (9, 0, N'Tools & Equipments', 1)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (10, 5, N'Batteries 1', 1)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (11, 5, N'eadsets 1', 1)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (12, 5, N'Screen 1', 1)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (13, 4, N'Batteries 2', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (14, 4, N'Headsets 2', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (15, 4, N'Screen 2', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (16, 3, N'Batteries 3', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (17, 3, N'Headsets 3', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (18, 3, N'Screen 3', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (19, 0, N'Kid’s Toys', 0)
INSERT [dbo].[Categories] ([Id], [ParentId], [Name], [DisplayHomePage]) VALUES (20, 0, N'Organics & Spa', 0)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoriesProducts] ON 

INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (23, 4, 17)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (24, 5, 17)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (25, 9, 17)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (26, 12, 17)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (27, 15, 17)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (28, 19, 17)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (29, 20, 17)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (30, 4, 16)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (31, 5, 16)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (32, 9, 16)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (33, 12, 16)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (34, 15, 16)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (35, 19, 16)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (36, 20, 16)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (51, 4, 14)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (52, 5, 14)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (53, 9, 14)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (54, 12, 14)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (55, 15, 14)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (56, 19, 14)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (57, 20, 14)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (58, 3, 12)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (59, 4, 12)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (60, 5, 12)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (61, 9, 12)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (62, 11, 12)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (63, 14, 12)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (64, 16, 12)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (65, 17, 12)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (66, 18, 12)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (67, 19, 12)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (68, 20, 12)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (69, 4, 10)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (70, 5, 10)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (71, 9, 10)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (72, 12, 10)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (73, 14, 10)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (74, 15, 10)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (75, 19, 10)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (76, 20, 10)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (77, 4, 9)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (78, 5, 9)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (79, 9, 9)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (80, 10, 9)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (81, 11, 9)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (82, 12, 9)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (83, 13, 9)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (84, 14, 9)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (85, 15, 9)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (86, 19, 9)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (87, 20, 9)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (88, 3, 8)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (89, 9, 8)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (90, 16, 8)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (91, 17, 8)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (92, 18, 8)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (93, 19, 8)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (94, 20, 8)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (95, 5, 7)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (96, 9, 7)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (97, 10, 7)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (98, 11, 7)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (99, 12, 7)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (100, 19, 7)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (101, 20, 7)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (102, 3, 6)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (103, 4, 6)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (104, 9, 6)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (105, 13, 6)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (106, 14, 6)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (107, 15, 6)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (108, 16, 6)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (109, 17, 6)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (110, 18, 6)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (111, 19, 6)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (112, 3, 5)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (113, 4, 5)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (114, 13, 5)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (115, 14, 5)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (116, 15, 5)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (117, 16, 5)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (118, 17, 5)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (119, 18, 5)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (120, 19, 5)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (121, 20, 5)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (122, 5, 4)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (123, 9, 4)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (124, 10, 4)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (125, 11, 4)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (126, 12, 4)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (127, 19, 4)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (128, 4, 1)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (129, 5, 1)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (130, 9, 1)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (131, 10, 1)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (132, 11, 1)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (133, 13, 1)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (134, 14, 1)
INSERT [dbo].[CategoriesProducts] ([Id], [CategoryId], [ProductId]) VALUES (135, 19, 1)
GO
SET IDENTITY_INSERT [dbo].[CategoriesProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [Name], [Email], [Address], [Phone], [Password]) VALUES (6, N'Nguyễn VănA', N'nva@gmail.com', N'Hà Nội', N'123456789', N'$2b$10$CbCd.UWBy0eV1NDtTphozuu2fRqnwj8UiRlIGFRo2mN6hJP0ycbGG')
INSERT [dbo].[Customers] ([Id], [Name], [Email], [Address], [Phone], [Password]) VALUES (7, N'Nguyễn Văn B', N'nvb@gmail.com', N'Hà Nội', N'123456789', N'$2b$10$JBH9AVugb.qcr64YqaNSieOBby80U6ZvFzAkq8SSUh4wAYeRp69iO')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([Id], [Name], [Description], [Content], [Hot], [Photo]) VALUES (2, N'Rút một vị trí, Chính phủ còn 4 Phó Thủ tướng được giới thiệu tái cử', N'<p>Chiều 17/7/2021, Tổng Thư k&yacute; Quốc hội B&ugrave;i Văn Cường chủ tr&igrave; cuộc họp b&aacute;o về dự kiến chương tr&igrave;nh kỳ họp thứ nhất, Quốc hội kh&oacute;a XV.</p>

<p>Tại họp b&aacute;o, giới thiệu nội dung dự kiến chương tr&igrave;nh kỳ họp thứ nhất Quốc hội kh&oacute;a XV, Ph&oacute; Chủ nhiệm Văn ph&ograve;ng Quốc hội Vũ Minh Tuấn n&ecirc;u, về thời gian, Quốc hội họp phi&ecirc;n tr&ugrave; bị v&agrave;o chiều 19/7, khai mạc s&aacute;ng 20/7 v&agrave; sẽ kết th&uacute;c v&agrave;o ng&agrave;y 31/7. Quốc hội c&oacute; 11,5 ng&agrave;y l&agrave;m việc, trong đ&oacute;, thời gian cho c&ocirc;ng t&aacute;c nh&acirc;n sự chiếm 3 ng&agrave;y, thời gian d&agrave;nh cho việc xem x&eacute;t, quyết định c&aacute;c vấn đề quan trọng kh&aacute;c l&agrave; 8,5 ng&agrave;y.</p>', N'<p>Chiều 17/7/2021, Tổng Thư k&yacute; Quốc hội B&ugrave;i Văn Cường chủ tr&igrave; cuộc họp b&aacute;o về dự kiến chương tr&igrave;nh kỳ họp thứ nhất, Quốc hội kh&oacute;a XV.</p>

<p>Tại họp b&aacute;o, giới thiệu nội dung dự kiến chương tr&igrave;nh kỳ họp thứ nhất Quốc hội kh&oacute;a XV, Ph&oacute; Chủ nhiệm Văn ph&ograve;ng Quốc hội Vũ Minh Tuấn n&ecirc;u, về thời gian, Quốc hội họp phi&ecirc;n tr&ugrave; bị v&agrave;o chiều 19/7, khai mạc s&aacute;ng 20/7 v&agrave; sẽ kết th&uacute;c v&agrave;o ng&agrave;y 31/7. Quốc hội c&oacute; 11,5 ng&agrave;y l&agrave;m việc, trong đ&oacute;, thời gian cho c&ocirc;ng t&aacute;c nh&acirc;n sự chiếm 3 ng&agrave;y, thời gian d&agrave;nh cho việc xem x&eacute;t, quyết định c&aacute;c vấn đề quan trọng kh&aacute;c l&agrave; 8,5 ng&agrave;y.</p>

<p><img alt="Rút một vị trí, Chính phủ còn 4 Phó Thủ tướng được giới thiệu tái cử - 1" src="https://icdn.dantri.com.vn/thumb_w/660/2021/07/17/bui-van-cuong-2-1626510268448.jpg" title="Rút một vị trí, Chính phủ còn 4 Phó Thủ tướng được giới thiệu tái cử - 1" /></p>

<p>Nhấn để ph&oacute;ng to ảnh</p>

<p>Tổng thư k&yacute; Quốc hội B&ugrave;i Văn Cường chủ tr&igrave; họp b&aacute;o trước kỳ họp thứ nhất, Quốc hội kh&oacute;a XV.</p>

<p><strong>V&igrave; sao kỳ họp n&agrave;y kh&ocirc;ng thể thực hiện trực tuyến?</strong></p>

<p>Trong bối cảnh dịch bệnh&nbsp;<a href="https://dantri.com.vn/suc-khoe/dai-dich-covid-19.htm">Covid-19</a>&nbsp;diễn biến phức tạp tr&ecirc;n cả nước, Quốc hội đ&atilde; chuẩn bị c&aacute;c biện ph&aacute;p ph&ograve;ng ngừa, đảm bảo an to&agrave;n cho kỳ họp.</p>

<p>Tổng Thư k&yacute; Quốc hội B&ugrave;i Văn Cường nhấn mạnh bối cảnh kỳ họp thứ nhất diễn ra khi dịch bệnh Covid-19 trong đợt b&ugrave;ng ph&aacute;t thứ 4 đang diễn ra phức tạp tr&ecirc;n nhiều địa b&agrave;n khắp cả nước, đặc biệt tại TPCHM v&agrave; một số tỉnh ph&iacute;a Nam, số ca mắc tăng rất cao h&agrave;ng ng&agrave;y. &Ocirc;ng Cường kh&aacute;i qu&aacute;t, d&ugrave; nhiều địa phương trong cả nước phải đang tập trung chống dịch nhưng theo quy định của Hiến ph&aacute;p, chậm nhất 60 ng&agrave;y sau bầu cử, Quốc hội phải tiến h&agrave;nh họp kỳ họp thứ nhất n&ecirc;n UB Thường vụ Quốc hội vẫn quyết định triệu tập kỳ họp từ 20/7.</p>

<p>Kỳ họp đầu ti&ecirc;n, Quốc hội phải tập trung l&agrave;m c&ocirc;ng t&aacute;c nh&acirc;n sự, &ocirc;ng Cường l&yacute; giải, nội dung n&agrave;y kh&ocirc;ng thể họp trực tuyến v&igrave; c&oacute; hoạt động bỏ phiếu k&iacute;n. Vậy n&ecirc;n cơ quan tổ chức cũng đ&atilde; cố gắng để tổ chức kỳ họp nhanh, gọn, hiệu quả. Cụ thể, UB Thường vụ Quốc hội đ&atilde; thống nhất sắp xếp lịch để c&oacute; thể giảm bớt 5 ng&agrave;y l&agrave;m việc (theo dự kiến ban đầu, kỳ họp thứ nhất k&eacute;o d&agrave;i đến 5/8, nay đ&atilde; được thu gọn lại, kết th&uacute;c v&agrave;o 31/7).</p>

<p>&quot;Cuộc bầu cử c&oacute; tới gần 70 triệu cử tri đi bỏ phiếu cuối th&aacute;ng 5 vừa qua cả nước c&ograve;n tổ chức được th&agrave;nh c&ocirc;ng th&igrave; kh&ocirc;ng c&oacute; l&yacute; g&igrave; kỳ họp Quốc hội với chỉ 499 đại biểu kh&ocirc;ng thể tổ chức th&agrave;nh c&ocirc;ng&quot; - Tổng Thư k&yacute; Quốc hội n&oacute;i.</p>

<p>Tại kỳ họp, theo &ocirc;ng Vũ Minh Tuấn, Quốc hội nghe b&aacute;o c&aacute;o tổng kết cuộc bầu cử vừa qua, nghe b&aacute;o c&aacute;o x&aacute;c nhận tư c&aacute;ch đại biểu Quốc hội kh&oacute;a XV.</p>

<p>C&ocirc;ng t&aacute;c nh&acirc;n sự, quyết định số Ph&oacute; Chủ tịch Quốc hội, Ủy vi&ecirc;n UB Thường vụ Quốc hội, bầu Chủ tịch Quốc hội, c&aacute;c Ph&oacute; Chủ tịch Quốc hội, Chủ tịch Hội đồng d&acirc;n tộc, Chủ nhiệm c&aacute;c UB của Quốc hội, Tổng Kiểm to&aacute;n nh&agrave; nước.</p>

<p>Quốc hội cũng bầu Chủ tịch nước, Thủ tướng Ch&iacute;nh phủ, Ph&oacute; Chủ tịch nước, Ch&aacute;nh &aacute;n TAND tối cao, Viện trưởng VKSND tối cao.</p>

<p>Theo quy định, ngay sau khi được bầu, c&aacute;c chức danh Chủ tịch Quốc hội, Chủ tịch nước, Thủ tướng, Ch&aacute;nh &aacute;n TAND tối cao sẽ tuy&ecirc;n thệ nhậm chức trước Quốc hội.</p>

<p>Ngo&agrave;i ra, Quốc hội c&ograve;n tiến h&agrave;nh ph&ecirc; chuẩn bổ nhiệm c&aacute;c th&agrave;nh vi&ecirc;n Ch&iacute;nh phủ theo đề nghị của Thủ tướng Ch&iacute;nh phủ (sau khi được bầu).</p>

<p><img alt="Rút một vị trí, Chính phủ còn 4 Phó Thủ tướng được giới thiệu tái cử - 2" src="https://icdn.dantri.com.vn/thumb_w/660/2021/07/17/bui-van-cuong-1-1626510269534.jpg" title="Rút một vị trí, Chính phủ còn 4 Phó Thủ tướng được giới thiệu tái cử - 2" /></p>

<p>Nhấn để ph&oacute;ng to ảnh</p>

<p>Tổng Thư k&yacute; B&ugrave;i Văn Cường th&ocirc;ng tin, trong cơ cấu Ch&iacute;nh phủ kỳ n&agrave;y sẽ r&uacute;t bớt vị tr&iacute; một Ph&oacute; Thủ tướng.</p>

<p>Vấn đề đặt ra trong nội dung c&ocirc;ng t&aacute;c nh&acirc;n sự, theo cơ cấu hiện tại, số lượng c&aacute;c cơ cấu l&atilde;nh đạo nh&agrave; nước gồm 51 vị tr&iacute;. Tuy nhi&ecirc;n, tại Hội nghị Trung ương 3 vừa qua, Ban Chấp h&agrave;nh Trung ương thống nhất chỉ giới thiệu 50 vị tr&iacute;.</p>

<p>Trao đổi về việc n&agrave;y, Tổng Thư k&yacute; Quốc hội B&ugrave;i Văn Cường khẳng định, kỳ họp n&agrave;y, Quốc hội tiến h&agrave;nh kiện to&agrave;n tất cả c&aacute;c chức danh l&atilde;nh đạo c&aacute;c cơ quan nh&agrave; nước theo quy định của ph&aacute;p luật, cụ thể l&agrave; 50 vị tr&iacute;.</p>

<p>Khối Quốc hội, Quốc hội kiện to&agrave;n to&agrave;n bộ c&aacute;c chức danh l&atilde;nh đạo Quốc hội, l&atilde;nh đạo c&aacute;c cơ quan của Quốc hội, của UB Thường vụ Quốc hội.</p>

<p>Khối cơ quan Ch&iacute;nh phủ, Tổng Thư k&yacute; B&ugrave;i Văn Cường cho biết: &quot;Trước đ&acirc;y, theo th&ocirc;ng lệ, Ch&iacute;nh phủ c&oacute; 5 Ph&oacute; Thủ tướng nhưng kỳ họp n&agrave;y, Quốc hội sẽ chỉ kiện to&agrave;n 4 vị tr&iacute;, đều l&agrave; c&aacute;c Ph&oacute; Thủ tướng t&aacute;i cử. Theo đ&oacute;, một vị tr&iacute; chức danh l&atilde;nh đạo nh&agrave; nước được r&uacute;t đợt n&agrave;y ch&iacute;nh l&agrave; một Ph&oacute; Thủ tướng Ch&iacute;nh phủ&quot;.</p>

<p><strong>Bộ m&aacute;y Ch&iacute;nh phủ sẽ kiện to&agrave;n 27 chức danh</strong></p>

<p>Tr&igrave;nh b&agrave;y th&ecirc;m về việc thực hiện quy tr&igrave;nh c&ocirc;ng t&aacute;c nh&acirc;n sự tại kỳ họp, Trưởng Ban C&ocirc;ng t&aacute;c đại biểu của UB Thường vụ Quốc hội Nguyễn Thị Thanh nhận định, theo quy định của luật Tổ chức Quốc hội, Tổ chức Ch&iacute;nh phủ, c&ocirc;ng t&aacute;c nh&acirc;n sự l&agrave; một trong những nhiệm vụ trọng t&acirc;m Quốc hội phải thực hiện trong kỳ họp đầu nhiệm kỳ, để bắt đầu cho hoạt động của cả kh&oacute;a.</p>

<p><img alt="Rút một vị trí, Chính phủ còn 4 Phó Thủ tướng được giới thiệu tái cử - 3" src="https://icdn.dantri.com.vn/thumb_w/660/2021/07/17/2106560993518048030173631056501586342098038n-1626512343776.jpg" title="Rút một vị trí, Chính phủ còn 4 Phó Thủ tướng được giới thiệu tái cử - 3" /></p>

<p>Nhấn để ph&oacute;ng to ảnh</p>

<p>B&agrave; Nguyễn Thị Thanh giải th&iacute;ch về c&aacute;c chức danh được kiện to&agrave;n trong kỳ họp lần n&agrave;y.</p>

<p>Về c&aacute;c chức danh được kiện to&agrave;n trong kỳ họp lần n&agrave;y, b&agrave; Thanh giải th&iacute;ch, sau Đại hội XIII của Đảng, để đảm bảo t&iacute;nh đồng bộ, tổng thể, li&ecirc;n th&ocirc;ng về c&ocirc;ng t&aacute;c c&aacute;n bộ, tại kỳ họp 11 kh&oacute;a XIV, Quốc hội đ&atilde; kiện to&agrave;n một bước c&ocirc;ng t&aacute;c nh&acirc;n sự. Do c&aacute;ch thức tổ chức, c&aacute;c cơ quan nh&agrave; nước hoạt động theo nhiệm kỳ n&ecirc;n đến kỳ họp thứ nhất đầu nhiệm kỳ mới, Quốc hội kh&oacute;a XV, việc kiện to&agrave;n c&aacute;c chức danh l&atilde;nh đạo cơ quan nh&agrave; nước cần thực hiện theo đ&uacute;ng quy tr&igrave;nh, quy định của Hiến ph&aacute;p, ph&aacute;p luật.</p>

<p>&quot;C&aacute;c nh&acirc;n sự được kiện to&agrave;n lần n&agrave;y kh&ocirc;ng thay đổi so với kỳ họp 11 của Quốc hội kh&oacute;a XIV th&igrave; đ&acirc;y vẫn l&agrave; việc phải l&agrave;m theo quy định. Việc thực hiện quy tr&igrave;nh bầu, ph&ecirc; chuẩn, thực hiện tuy&ecirc;n thệ với c&aacute;c chức danh l&atilde;nh đạo chủ chốt tại Quốc hội kỳ n&agrave;y sẽ c&agrave;ng thể hiện tr&aacute;ch nhiệm của c&aacute;c chức danh trước Quốc hội v&agrave; cử tri, nh&acirc;n d&acirc;n cả nước&quot; - b&agrave; Thanh ph&aacute;t biểu.</p>

<p>Cũng theo Trưởng Ban C&ocirc;ng t&aacute;c đại biểu, c&aacute;c chức danh được kiện to&agrave;n kỳ n&agrave;y đ&atilde; được b&aacute;o c&aacute;o Bộ Ch&iacute;nh trị, ban chấp h&agrave;nh Trung ương, li&ecirc;n quan đến cơ cấu tổ chức của c&aacute;c khối cơ quan. Với khối Ch&iacute;nh phủ, b&agrave; Thanh cho biết, Bộ m&aacute;y Ch&iacute;nh phủ kỳ n&agrave;y sẽ kiện to&agrave;n 27 chức danh, gồm Thủ tướng, 4 Ph&oacute; Thủ tướng, 18 Bộ trưởng v&agrave; 4 Thủ trưởng cơ quan ngang bộ.</p>

<p>&quot;Đề &aacute;n cơ cấu tổ chức Ch&iacute;nh phủ đ&atilde; được xem x&eacute;t cụ thể cẩn thận tr&ecirc;n cơ sở c&acirc;n nhắc tổng thể về c&ocirc;ng t&aacute;c c&aacute;n bộ. Theo đ&oacute;, Bộ Ch&iacute;nh trị, Ban Chấp h&agrave;nh Trung ương đ&atilde; cho &yacute; kiến về cơ cấu Ch&iacute;nh phủ, trước mắt c&oacute; 4 Ph&oacute; Thủ tướng&quot; - Trưởng Ban C&ocirc;ng t&aacute;c đại biểu th&ocirc;ng tin.</p>

<p>B&agrave; Nguyễn Thị Thanh cũng n&oacute;i th&ecirc;m, trước đ&acirc;y, Ch&iacute;nh phủ c&oacute; một Ph&oacute; Thủ tướng ki&ecirc;m Bộ trưởng Ngoại giao. Đến nay, vị tr&iacute; n&agrave;y được t&aacute;ch ra, Ph&oacute; Thủ tướng Phạm B&igrave;nh Minh kh&ocirc;ng c&ograve;n ki&ecirc;m nhiệm chức danh Bộ trưởng Ngoại giao, &ocirc;ng B&ugrave;i Thanh Sơn đ&atilde; được ph&ecirc; chuẩn bổ nhiệm l&agrave;m Bộ trưởng Ngoại giao tại kỳ họp cuối c&ugrave;ng của Quốc hội kh&oacute;a trước. Theo đ&oacute;, cơ cấu Ch&iacute;nh phủ kỳ n&agrave;y sẽ được kiện to&agrave;n theo hướng n&agrave;y.</p>', 1, N'133085027077147044_slideshow1221b.jpg')
INSERT [dbo].[News] ([Id], [Name], [Description], [Content], [Hot], [Photo]) VALUES (3, N'Phó Thủ tướng: Cán bộ chống dịch thiếu trách nhiệm, sẵn sàng có người thay', N'<p>Ng&agrave;y 17/7, Ph&oacute; Thủ tướng Vũ Đức Đam, Trưởng Ban Chỉ đạo quốc gia ph&ograve;ng, chống dịch&nbsp;<a href="https://dantri.com.vn/suc-khoe/dai-dich-covid-19.htm">Covid-19</a>&nbsp;dự giao ban trực tuyến ngắn với TPHCM để triển khai c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch.</p>

<p>Ng&agrave;y 17/7, Ph&oacute; Thủ tướng Vũ Đức Đam, Trưởng Ban Chỉ đạo quốc gia ph&ograve;ng, chống dịch&nbsp;<a href="https://dantri.com.vn/suc-khoe/dai-dich-covid-19.htm">Covid-19</a>&nbsp;dự giao ban trực tuyến ngắn với TPHCM để triển khai c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch.</p>', N'<p>Ng&agrave;y 17/7, Ph&oacute; Thủ tướng Vũ Đức Đam, Trưởng Ban Chỉ đạo quốc gia ph&ograve;ng, chống dịch&nbsp;<a href="https://dantri.com.vn/suc-khoe/dai-dich-covid-19.htm">Covid-19</a>&nbsp;dự giao ban trực tuyến ngắn với TPHCM để triển khai c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch.</p>

<p><img alt="Phó Thủ tướng: Cán bộ chống dịch thiếu trách nhiệm, sẵn sàng có người thay - 1" src="https://icdn.dantri.com.vn/thumb_w/660/2021/07/17/vu-duc-dam-1-1626519560689.jpg" title="Phó Thủ tướng: Cán bộ chống dịch thiếu trách nhiệm, sẵn sàng có người thay - 1" /></p>

<p>Nhấn để ph&oacute;ng to ảnh</p>

<p>Ph&oacute; Thủ tướng Vũ Đức Đam c&ugrave;ng l&atilde;nh đạo TPHCM họp giao ban về t&igrave;nh h&igrave;nh chống dịch Covid-19 tại th&agrave;nh phố (ảnh: VGP).</p>

<p><strong>Trung t&acirc;m cấp cứu điều phối c&aacute;c &quot;tầng&quot; điều trị</strong></p>

<p>Cập nhật t&igrave;nh h&igrave;nh th&agrave;nh phố, Chủ tịch UBND TPHCM Nguyễn Th&agrave;nh Phong cho biết, trong v&ograve;ng 24 giờ qua (t&iacute;nh đến 6h ng&agrave;y 17/7), Th&agrave;nh phố ghi nhận hơn 2.800 ca mắc Covid-19, trong đ&oacute;, phần lớn ph&aacute;t hiện trong c&aacute;c khu c&aacute;ch ly, phong tỏa (chiếm hơn 81% tổng số ca mắc), khoảng 420 ca qua s&agrave;ng lọc ở bệnh viện.</p>

<p>Hiện th&agrave;nh phố đang tập trung điều trị cho c&aacute;c ca F0 nặng nhằm giảm số ca tử vong.</p>

<p>B&iacute; thư Th&agrave;nh ủy TPHCM Nguyễn Văn N&ecirc;n x&aacute;c nhận, số ca F0, F1 ng&agrave;y c&agrave;ng tăng cao, cả trong khu c&aacute;ch ly, phong tỏa, ngo&agrave;i cộng đồng v&agrave; ph&aacute;t sinh ca nhiễm trong một số khu c&ocirc;ng nghiệp, chế xuất c&oacute; đ&ocirc;ng c&ocirc;ng nh&acirc;n. Hệ thống y tế nhiều nơi bị qu&aacute; tải.</p>

<p>Th&agrave;nh phố đ&atilde; x&acirc;y dựng bản đồ c&aacute;c khu c&aacute;ch ly tạm thời, bệnh viện d&atilde; chiến điều trị c&aacute;c F0 ở c&aacute;c mức độ kh&aacute;c nhau; đẩy mạnh ứng dụng c&ocirc;ng nghệ để thiết lập hệ thống quản l&yacute;, điều phối ca F0 tr&ecirc;n địa b&agrave;n, giao Trung t&acirc;m cấp cứu quản l&yacute;, vận h&agrave;nh hệ thống n&agrave;y, nhằm kịp thời điều phối F0 đến c&aacute;c bệnh viện ph&ugrave; hợp nhanh nhất, giải quyết t&igrave;nh h&igrave;nh ca F0 trở nặng tăng l&ecirc;n hiện nay.</p>

<p>B&iacute; thư N&ecirc;n nhận định, những vấn đề về nh&acirc;n lực, cơ sở vật chất, m&aacute;y m&oacute;c, sinh phẩm&hellip; đ&atilde; v&agrave; đang được khắc phục.</p>

<p>Chủ tịch UBND TPHCM Nguyễn Th&agrave;nh Phong cũng đề cập, hiện c&ograve;n t&igrave;nh trạng l&acirc;y nhiễm ch&eacute;o trong c&aacute;c khu phong tỏa do vẫn c&aacute;c gia đ&igrave;nh vẫn tiếp x&uacute;c với nhau. Do đ&oacute;, Chủ tịch UBND TPHCM y&ecirc;u cầu siết chặt c&aacute;c biện ph&aacute;p, bảo đảm tu&acirc;n thủ gi&atilde;n c&aacute;ch trong c&aacute;c khu phong tỏa, ph&aacute;t huy vai tr&ograve; của c&aacute;c Tổ Covid-19 cộng đồng để tăng cường kiểm tra, gi&aacute;m s&aacute;t, xử l&yacute; nghi&ecirc;m nếu c&oacute; vi phạm, bảo đảm thực hiện nghi&ecirc;m Chỉ thị 16.</p>

<p>Trước t&igrave;nh trạng người d&acirc;n tụ tập đ&ocirc;ng người, dễ l&acirc;y nhiễm trong cộng đồng, B&iacute; thư Th&agrave;nh ủy Nguyễn Văn N&ecirc;n qu&aacute;n triệt: &quot;Qua kiểm tra, ph&aacute;t hiện, những nơi kh&ocirc;ng thực hiện nghi&ecirc;m, kh&ocirc;ng chấp h&agrave;nh chỉ đạo cấp tr&ecirc;n, phải xử l&yacute; nghi&ecirc;m khắc, thậm ch&iacute; đề nghị c&aacute;ch chức những l&atilde;nh đạo kh&ocirc;ng thực hiện nghi&ecirc;m c&aacute;c chỉ đạo. Từ đ&oacute;, việc chấp h&agrave;nh phải nghi&ecirc;m hơn, to&agrave;n diện hơn, đặc biệt đối với những nơi c&oacute; nguy cơ l&acirc;y nhiễm cao&quot;.</p>

<p><strong>C&aacute;c bộ chống dịch thiếu tr&aacute;ch nhiệm sẵn s&agrave;ng c&oacute; người thay</strong></p>

<p><img alt="Phó Thủ tướng: Cán bộ chống dịch thiếu trách nhiệm, sẵn sàng có người thay - 2" src="https://icdn.dantri.com.vn/thumb_w/660/2021/07/17/vu-duc-dam-2-1626519556095.jpg" title="Phó Thủ tướng: Cán bộ chống dịch thiếu trách nhiệm, sẵn sàng có người thay - 2" /></p>

<p>Nhấn để ph&oacute;ng to ảnh</p>

<p>Ph&oacute; Thủ tướng: &quot;Nếu gi&atilde;n c&aacute;ch, phong tỏa m&agrave; ở dưới vẫn giao lưu với nhau th&igrave; cũng bằng thừa&quot;.</p>

<p>Đồng t&igrave;nh với quan điểm cương quyết của l&atilde;nh đạo TPHCM, Ph&oacute; Thủ tướng Vũ Đức Đam nhấn mạnh Th&agrave;nh phố phải siết chặt quản l&yacute;, kh&ocirc;ng để l&acirc;y nhiễm ch&eacute;o trong khu phong tỏa, c&aacute;ch ly.</p>

<p>Chia sẻ với th&agrave;nh phố c&oacute; địa b&agrave;n rộng, d&acirc;n số đ&ocirc;ng n&ecirc;n việc kiểm so&aacute;t rất kh&oacute; khăn nhưng Ph&oacute; Thủ tướng đề nghị TPHCM phải thực hiện rất quyết liệt, huy động hệ thống ch&iacute;nh trị v&agrave;o cuộc, từ c&aacute;c cấp ch&iacute;nh quyền, đến mọi tổ chức, đo&agrave;n thể. Ph&oacute; Thủ tướng t&aacute;n th&agrave;nh quan điểm, nơi n&agrave;o để xảy ra l&acirc;y nhiễm trong khu phong tỏa, khu c&aacute;ch ly phải xử l&yacute; to&agrave;n diện l&atilde;nh đạo nơi đ&oacute;.</p>

<p>Theo Ph&oacute; Thủ tướng, dịch bệnh k&eacute;o d&agrave;i khiến lực lượng tham gia chống dịch căng thẳng, cần được động vi&ecirc;n, nhưng kh&ocirc;ng c&oacute; nghĩa l&agrave; kh&ocirc;ng xử l&yacute; c&aacute;c trường hợp lơ l&agrave;, kh&ocirc;ng thực hiện nghi&ecirc;m quy định.</p>

<p>&quot;T&ocirc;i tin l&agrave; ở c&aacute;c đơn vị, c&aacute;n bộ n&agrave;o thiếu tr&aacute;ch nhiệm sẵn s&agrave;ng c&oacute; người kh&aacute;c thay. Nếu gi&atilde;n c&aacute;ch, phong tỏa m&agrave; ở dưới vẫn giao lưu với nhau th&igrave; cũng bằng thừa, phải rất quyết liệt. Đ&acirc;y l&agrave; l&uacute;c cả hệ thống ch&iacute;nh trị phải rất tr&aacute;ch nhiệm&quot; - Ph&oacute; Thủ tướng n&oacute;i.</p>

<p>Về c&ocirc;ng t&aacute;c điều trị, Ph&oacute; Thủ tướng lưu &yacute; th&agrave;nh phố tăng cường vận chuyển ca F0 đến cơ sở điều trị, đặc biệt những trường hợp c&oacute; triệu chứng nặng l&ecirc;n. L&atilde;nh đạo Ch&iacute;nh phủ y&ecirc;u cầu TPHCM chủ động trang bị, tuyệt đối kh&ocirc;ng để c&aacute;c bệnh viện thiếu.</p>

<p>&quot;B&acirc;y giờ, c&aacute;c bệnh viện vẫn rỉ tai nhau l&agrave; thiếu. Đề nghị phải l&agrave;m ngay, chấn chỉnh ngay cho to&agrave;n bộ anh em b&ecirc;n dưới y&ecirc;n t&acirc;m&quot; - Ph&oacute; Thủ tướng n&oacute;i.</p>

<p>Ph&oacute; Thủ tướng cho rằng việc cung ứng h&agrave;ng h&oacute;a, hoạt động của c&aacute;c doanh nghiệp cũng phải &quot;chấp nhận thương đau&quot;, đảm bảo tuyệt đối an to&agrave;n, nếu kh&ocirc;ng th&igrave; nỗ lực ph&ograve;ng chống dịch sẽ đổ s&ocirc;ng đổ biển. Theo &ocirc;ng, th&agrave;nh phố cần động vi&ecirc;n người d&acirc;n chịu kh&oacute; vất vả, chia sẻ kh&oacute; khăn tạm thời trước mắt để tu&acirc;n thủ nghi&ecirc;m c&aacute;c quy định gi&atilde;n c&aacute;ch x&atilde; hội.</p>', 1, N'133085026986611602_ny.jpg')
INSERT [dbo].[News] ([Id], [Name], [Description], [Content], [Hot], [Photo]) VALUES (4, N'Vì sao Hà Nội xuất hiện nhiều chùm ca bệnh chưa rõ nguồn lây?', N'<p>S&aacute;ng 17/7, H&agrave; Nội vừa ghi nhận th&ecirc;m 13 trường hợp dương t&iacute;nh với&nbsp;<a href="https://dantri.com.vn/suc-khoe/dai-dich-covid-19.htm">SARS-CoV-2</a>&nbsp;, trong đ&oacute; c&oacute; 6 F1 của bệnh nh&acirc;n T.T.H. thuộc ch&ugrave;m ca bệnh li&ecirc;n quan đến chung cư Sunshine.&nbsp;</p>

<p>B&ecirc;n cạnh ổ dịch C&ocirc;ng ty SEI - Khu c&ocirc;ng nghiệp Thăng Long (Đ&ocirc;ng Anh) v&agrave; x&atilde; An Mỹ (huyện Mỹ Đức), H&agrave; Nội đang phải đối mặt với c&aacute;c ch&ugrave;m ca bệnh phức tạp kh&aacute;c gồm: Nh&oacute;m nh&acirc;n vi&ecirc;n ng&acirc;n h&agrave;ng c&oacute; địa chỉ tại 25 L&yacute; Thường Kiệt (quận Ho&agrave;n Kiếm), nh&acirc;n vi&ecirc;n giao pizza tại cửa h&agrave;ng số 30 Đo&agrave;n Trần Nghiệp (Hai B&agrave; Trưng); 3 c&aacute;n bộ Viện Cơ kh&iacute; Năng lượng v&agrave; Mỏ (Thanh Xu&acirc;n).</p>', N'<p>S&aacute;ng 17/7, H&agrave; Nội vừa ghi nhận th&ecirc;m 13 trường hợp dương t&iacute;nh với&nbsp;<a href="https://dantri.com.vn/suc-khoe/dai-dich-covid-19.htm">SARS-CoV-2</a>&nbsp;, trong đ&oacute; c&oacute; 6 F1 của bệnh nh&acirc;n T.T.H. thuộc ch&ugrave;m ca bệnh li&ecirc;n quan đến chung cư Sunshine.&nbsp;</p>

<p>B&ecirc;n cạnh ổ dịch C&ocirc;ng ty SEI - Khu c&ocirc;ng nghiệp Thăng Long (Đ&ocirc;ng Anh) v&agrave; x&atilde; An Mỹ (huyện Mỹ Đức), H&agrave; Nội đang phải đối mặt với c&aacute;c ch&ugrave;m ca bệnh phức tạp kh&aacute;c gồm: Nh&oacute;m nh&acirc;n vi&ecirc;n ng&acirc;n h&agrave;ng c&oacute; địa chỉ tại 25 L&yacute; Thường Kiệt (quận Ho&agrave;n Kiếm), nh&acirc;n vi&ecirc;n giao pizza tại cửa h&agrave;ng số 30 Đo&agrave;n Trần Nghiệp (Hai B&agrave; Trưng); 3 c&aacute;n bộ Viện Cơ kh&iacute; Năng lượng v&agrave; Mỏ (Thanh Xu&acirc;n).</p>

<p>Như vậy, sau khoảng thời gian ngắn dịch bệnh lắng xuống, H&agrave; Nội đang phải đối mặt với đợt dịch mới phức tạp, kh&oacute; lường hơn.</p>

<p><strong>Nguy cơ b&ugrave;ng dịch đến từ nhiều nguồn</strong></p>

<p>Chiều 17/7, trao đổi với ph&oacute;ng vi&ecirc;n&nbsp;<em>D&acirc;n tr&iacute;</em>, &ocirc;ng Khổng Minh Tuấn, Ph&oacute; Gi&aacute;m đốc CDC H&agrave; Nội đ&atilde; c&oacute; những l&yacute; giải về việc, H&agrave; Nội li&ecirc;n tiếp xuất hiện c&aacute;c ch&ugrave;m ca bệnh mới, chưa r&otilde; nguồn l&acirc;y trong những ng&agrave;y qua.</p>

<p>Theo &ocirc;ng Tuấn, hiện ch&ugrave;m ca bệnh kh&ocirc;ng r&otilde; nguồn l&acirc;y phức tạp nhất ở H&agrave; Nội hiện l&agrave; nh&oacute;m nh&acirc;n vi&ecirc;n ng&acirc;n h&agrave;ng c&oacute; địa chỉ tại 25 L&yacute; Thường Kiệt (quận Ho&agrave;n Kiếm). Ca bệnh chỉ điểm l&agrave; nữ nh&acirc;n vi&ecirc;n H., kh&ocirc;ng c&oacute; lịch tr&igrave;nh li&ecirc;n quan đến c&aacute;c tỉnh, v&ugrave;ng dịch v&agrave; 2 th&aacute;ng nay kh&ocirc;ng đi khỏi H&agrave; Nội.</p>

<p><img alt="Vì sao Hà Nội xuất hiện nhiều chùm ca bệnh chưa rõ nguồn lây? - 2" src="https://icdn.dantri.com.vn/thumb_w/660/2021/07/17/2phongtoa25ngoquyenbocongthuongjpg1626427374889-1626512126634.jpg" title="Vì sao Hà Nội xuất hiện nhiều chùm ca bệnh chưa rõ nguồn lây? - 2" /></p>

<p>Nhấn để ph&oacute;ng to ảnh</p>

<p>Trụ sở Bộ C&ocirc;ng Thương tại 25 Ng&ocirc; Quyền phải phong tỏa do li&ecirc;n quan ca bệnh tại Viện Cơ kh&iacute; Năng lượng v&agrave; Mỏ.</p>

<p>Theo b&aacute;o c&aacute;o dịch tễ, ng&agrave;y 14/7, b&agrave; H. sốt 38,5 độ C, đau họng. Ng&agrave;y 16/7, b&agrave; đến Bệnh viện Đại học Y H&agrave; Nội kh&aacute;m v&agrave; được chuyển v&agrave;o khu s&agrave;ng lọc người ho sốt.</p>

<p>Sau khi lấy mẫu v&agrave; l&agrave;m x&eacute;t nghiệm Covid-19, b&agrave; nhận kết quả dương t&iacute;nh. Theo l&atilde;nh đạo quận Ho&agrave;n Kiếm, ph&ograve;ng l&agrave;m việc người n&agrave;y c&oacute; tr&ecirc;n 20 người, đ&atilde; x&aacute;c định 21 F1 c&ugrave;ng cơ quan.</p>

<p>&quot;Trong chiều nay 17/7, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh x&aacute;c định xem nguồn l&acirc;y của ch&ugrave;m ca bệnh n&agrave;y xuất ph&aacute;t từ đ&acirc;u, qua đ&oacute; đưa ra phương hướng xử l&yacute;, phong tỏa v&agrave; truy vết c&aacute;c F li&ecirc;n quan&quot;, &ocirc;ng Tuấn n&oacute;i.</p>

<p>Ch&ugrave;m ca bệnh thứ hai chưa x&aacute;c định nguồn l&acirc;y l&agrave; nh&acirc;n vi&ecirc;n giao pizza của cửa h&agrave;ng số 30 Đo&agrave;n Trần Nghiệp (quận Hai B&agrave; Trưng). Theo CDC H&agrave; Nội, cửa h&agrave;ng n&agrave;y gần với t&ograve;a nh&agrave; 189 B&agrave; Triệu l&agrave; nơi c&oacute; 5 người mắc&nbsp;<a href="https://dantri.com.vn/suc-khoe/dai-dich-covid-19.htm">Covid-19</a>&nbsp;(đến từ TP.HCM) l&agrave;m việc. Tuy nhi&ecirc;n, đơn vị n&agrave;y thừa nhận chưa c&oacute; sự li&ecirc;n hệ r&otilde; r&agrave;ng n&agrave;o của nh&acirc;n vi&ecirc;n giao pizza với nh&oacute;m ca bệnh từ TP.HCM.</p>

<p><img alt="Vì sao Hà Nội xuất hiện nhiều chùm ca bệnh chưa rõ nguồn lây? - 3" src="https://icdn.dantri.com.vn/thumb_w/660/2021/07/17/33333-1626502402357.jpg" title="Vì sao Hà Nội xuất hiện nhiều chùm ca bệnh chưa rõ nguồn lây? - 3" /></p>

<p>Nhấn để ph&oacute;ng to ảnh</p>

<p>Ng&agrave;y 17/7, lực lượng chức năng đ&atilde; phong tỏa khu F3, ng&otilde; 171 Th&aacute;i H&agrave; với hơn 10 hộ d&acirc;n, nơi bệnh nh&acirc;n T.C.T., 31 tuổi, sinh sống.</p>

<p>C&ograve;n ch&ugrave;m ca bệnh li&ecirc;n quan đến Viện Cơ kh&iacute; Năng lượng v&agrave; Mỏ (Thanh Xu&acirc;n), theo &ocirc;ng Tuấn đ&acirc;y l&agrave; ch&ugrave;m ca bệnh c&oacute; nguồn l&acirc;y đến từ tỉnh Bắc Ninh.</p>

<p>Ch&ugrave;m ca bệnh Khu c&ocirc;ng nghiệp Thăng Long c&oacute; nguồn l&acirc;y từ Bắc Giang, v&agrave; c&aacute;c ổ dịch rải r&aacute;c tại Hai B&agrave; Trưng, Bắc Từ Li&ecirc;m, Quốc Oai... c&oacute; nguồn l&acirc;y đến từ TP.HCM.</p>

<p><strong>Chỉ cần lọt 1-2 trường hợp l&agrave; c&oacute; thể th&agrave;nh ổ dịch</strong></p>

<p>&Ocirc;ng Khổng Minh Tuấn, Ph&oacute; gi&aacute;m đốc CDC H&agrave; Nội nhận định, th&agrave;nh phố đang trong đợt dịch phức tạp, nguy cơ b&ugrave;ng dịch đến từ nhiều nguồn với nhiều c&aacute;ch thức đa dạng.</p>

<p>&quot;Nguy cơ tại H&agrave; Nội lu&ocirc;n ở mức rất cao, do l&agrave; địa b&agrave;n trung t&acirc;m, đầu n&atilde;o của cả nước, nhiều trường hợp đi từ v&ugrave;ng dịch về nếu kh&ocirc;ng kiểm so&aacute;t hết, th&igrave; chỉ cần lọt 1-2 người l&agrave; cũng c&oacute; thể b&ugrave;ng ph&aacute;t th&agrave;nh ổ dịch mới&quot;, &ocirc;ng Tuấn chia sẻ.</p>

<p><img alt="Vì sao Hà Nội xuất hiện nhiều chùm ca bệnh chưa rõ nguồn lây? - 4" src="https://icdn.dantri.com.vn/thumb_w/660/2021/07/15/chc7330-1626335483956.jpg" title="Vì sao Hà Nội xuất hiện nhiều chùm ca bệnh chưa rõ nguồn lây? - 4" /></p>

<p>Nhấn để ph&oacute;ng to ảnh</p>

<p>Khu c&ocirc;ng nghiệp Thăng Long thường xuy&ecirc;n ghi nhận ca nhiễm mới trong 2 tuần qua.&nbsp;</p>

<p>Theo l&atilde;nh đạo CDC H&agrave; Nội, hiện ổ dịch tại C&ocirc;ng ty SEI - KCN Thăng Long đang được kiểm so&aacute;t tốt, kh&ocirc;ng c&oacute; ca l&acirc;y nhiễm ngo&agrave;i cộng đồng, chủ yếu l&agrave; c&aacute;c F1 đ&atilde; được c&aacute;ch ly trước đ&oacute;.</p>

<p>Nguy&ecirc;n nh&acirc;n chủ yếu khiến ổ dịch n&agrave;y tiếp tục ph&aacute;t sinh ca nhiễm mới l&agrave; số lượng c&ocirc;ng nh&acirc;n l&agrave;m việc c&ugrave;ng ph&acirc;n xưởng với ca F0 lớn, li&ecirc;n tục trong nhiều ng&agrave;y, n&ecirc;n khả năng l&acirc;y lan mạnh.</p>

<p>Theo thống k&ecirc;, tổng số ca dương t&iacute;nh&nbsp;<a href="https://dantri.com.vn/suc-khoe/dai-dich-covid-19.htm">SARS-CoV-2</a>&nbsp;tại H&agrave; Nội từ ng&agrave;y 29/4 đến nay l&agrave; 376 trường hợp. Ri&ecirc;ng từ ng&agrave;y 5/7 đến nay l&agrave; 117 trường hợp thuộc 5 ch&ugrave;m ca bệnh. Ch&ugrave;m ca bệnh li&ecirc;n quan đến Bắc Giang c&oacute; 54 trường hợp, ch&ugrave;m ca bệnh li&ecirc;n quan đến TPHCM (Hoa V&ocirc;i- Quốc Oai: 18; Nguyễn Du- Hai B&agrave; Trưng: 7; H&ograve;a X&aacute;-Ứng H&ograve;a: 5; c&aacute;c quận, huyện kh&aacute;c: 10); ch&ugrave;m ca bệnh tại An Mỹ - Mỹ Đức: 10 trường hợp; ch&ugrave;m ca bệnh li&ecirc;n quan đến chung cư Sunshine, Ho&agrave;ng Mai: 9 trường hợp; T&acirc;n Mai - Ho&agrave;ng Mai: một trường hợp; ch&ugrave;m ca bệnh li&ecirc;n quan đến Bắc Ninh: 3 trường hợp.</p>', 1, N'133085026862608814_la.jpg')
INSERT [dbo].[News] ([Id], [Name], [Description], [Content], [Hot], [Photo]) VALUES (5, N'HLV Park Hang Seo có danh sách sơ bộ đội tuyển Việt Nam', N'<p>Sau khi rà soát, danh sách trên có thể được HLV&nbsp;<a href="https://dantri.com.vn/hlv-park-hang-seo.tag">Park Hang Seo</a>&nbsp;rút gọn xuống còn hơn 30 cầu thủ. Do thời gian qua V-League không diễn ra, đồng nghĩa với việc HLV Park Hang Seo không thể đánh giá phong độ của các cầu thủ cũng như tìm kiếm nhân tố mới.</p><p>Vì thế, nhiều khả năng chiến lược gia người Hàn Quốc vẫn triệu tập những gương mặt cũ đã cùng mình tham dự vòng loại thứ 2 World Cup 2022 ở UAE vừa qua.</p>', N'<p>Sau khi rà soát, danh sách trên có thể được HLV&nbsp;<a href="https://dantri.com.vn/hlv-park-hang-seo.tag">Park Hang Seo</a>&nbsp;rút gọn xuống còn hơn 30 cầu thủ. Do thời gian qua V-League không diễn ra, đồng nghĩa với việc HLV Park Hang Seo không thể đánh giá phong độ của các cầu thủ cũng như tìm kiếm nhân tố mới.</p><p>Vì thế, nhiều khả năng chiến lược gia người Hàn Quốc vẫn triệu tập những gương mặt cũ đã cùng mình tham dự vòng loại thứ 2 World Cup 2022 ở UAE vừa qua.</p><p><img src="https://icdn.dantri.com.vn/thumb_w/660/2021/07/17/danhsachdtvndocx-1626516704681.jpeg" alt="HLV Park Hang Seo có danh sách sơ bộ đội tuyển Việt Nam - 1"></p><p>Nhấn để phóng to ảnh</p><p>Đội tuyển Việt Nam nhiều khả năng không có sự thay đổi về nhân sự.</p><p>Như vậy, những cái tên như Duy Mạnh, Quế Ngọc Hải, Bùi Tiến Dũng, Văn Thanh, Văn Hậu, Trọng Hoàng, Tuấn Anh, Xuân Trường, Quang Hải, Văn Toàn, Công Phượng, Tiến Linh… chắc chắn có tên. Ngoài ra, một số gương mặt trẻ hoặc ít được sử dụng như Việt Anh, Hai Long, Cao Văn Triền, Thanh Bình… cũng được HLV người Hàn Quốc tiếp tục trao cho cơ hội lên tuyển.</p><p>Với trường hợp của thủ thành Đặng Văn Lâm, nhiều khả năng&nbsp;<a href="https://dantri.com.vn/hlv-park-hang-seo.tag">HLV Park Hang Seo</a>&nbsp;sẽ triệu tập trong đợt tập trung lần này. Trước đó, đến phút cuối ông Park đã phải loại Đặng Văn Lâm ở chiến dịch vòng loại 2 World Cup 2022 khu vực châu Á, do thủ thành Việt Kiều là F1 của ca F0 Covid-19 tại Nhật Bản.</p><p>Trong thời gian qua, Đặng Văn Lâm đã thể hiện sự cố gắng để thể hiện mình tại Cerezo Osaka. Thủ thành Việt Nam đã có 2 lần được bắt chính trong trận Cerezo Osaka thắng 2-0 Gainare Tottori ở vòng 2 Cúp Hoàng Đế và mới đây là lượt trận thứ 5 AFC Champions League 2021, khi đội bóng Nhật Bản thắng 5-0 trước Guangzhou FC.</p><p><img src="https://icdn.dantri.com.vn/thumb_w/660/2021/07/17/danhsachdtvndocx-1626516704791.jpeg" alt="HLV Park Hang Seo có danh sách sơ bộ đội tuyển Việt Nam - 2"></p><p>Nhấn để phóng to ảnh</p><p>Văn Lâm sẽ trở lại đội tuyển Việt Nam.</p><p>"Mục tiêu của tôi thời gian tới vẫn là tiếp tục tập luyện chăm chỉ mỗi ngày, cố gắng học hỏi nhiều hơn nữa ở môi trường có tính chuyên nghiệp cao, gồm những cầu thủ đẳng cấp và các bài tập chất lượng của HLV thủ môn.</p><p>Tôi sẽ nỗ lực hết sức mình nếu có cơ hội tập trung cùng đội tuyển Việt Nam, cố gắng cống hiến những gì tốt nhất trong khả năng của bản thân", Đặng Văn Lâm mong muốn được trở lại đội tuyển Việt Nam.</p><p>Trước các trận vòng loại thứ 2 World Cup 2022 diễn ra ở UAE, Văn Lâm luôn là số 1 trong khung gỗ đội tuyển Việt Nam. Nhưng ở thời điểm này, anh chắc chắn phải cạnh tranh khốc liệt với Tấn Trường nếu muốn giành suất bắt chính.</p><p>Về công tác chuẩn bị cho vòng loại thứ 3 World Cup 2022 khu vực châu Á vào tháng 9 tới, VFF đang lên kế hoạch tập trung sớm cho đội tuyển Việt Nam. Mới đây, VPF tạm dừng kế hoạch tổ chức giai đoạn 2 V-League 2021 do ảnh hưởng dịch Covid-19. BTC giải thậm chí đề xuất lùi giải tới tháng 2/2022. VFF và ông Park vì vậy cũng phải điều chỉnh kế hoạch tập trung của đội tuyển Việt Nam.</p><p>"Yêu cầu đặt ra là các cầu thủ cần được đảm bảo điều kiện tốt nhất để duy trì thể lực cũng như phong độ, cảm giác bóng, qua đó chuẩn bị tốt nhất cho Vòng loại World Cup. Để đạt mục tiêu, kế hoạch của đội tuyển Việt Nam càng cụ thể, chi tiết càng tốt bởi khoảng cách các trận sân nhà và sân khách rất ngắn.</p><p>Nếu không chuẩn bị kỹ, chúng ta sẽ khó đảm bảo sự khoa học và hiệu quả", Phó Chủ tịch VFF Trần Quốc Tuấn cho biết.</p><p>HLV Park Hang Seo vừa qua đã trở về Hàn Quốc để lo việc gia đình. Dự kiến cuối tháng 7 này, ông Park sẽ trở về Việt Nam, và sẽ bắt tay vào công tác chuẩn bị cho đội tuyển.</p>', 1, N'133345060267861926_user2-160x160.jpg')
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [CustomerId], [Create], [Price], [Status]) VALUES (3, 6, CAST(N'2023-02-09' AS Date), 138000000, 0)
INSERT [dbo].[Orders] ([Id], [CustomerId], [Create], [Price], [Status]) VALUES (4, 6, CAST(N'2023-02-09' AS Date), 58000000, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[OrdersDetail] ON 

INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (4, 3, 17, 2, 15000000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (5, 3, 9, 3, 20800000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (6, 4, 7, 1, 16800000)
INSERT [dbo].[OrdersDetail] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (7, 4, 14, 1, 30000000)
SET IDENTITY_INSERT [dbo].[OrdersDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (1, N'tools_equipment_6', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'133196283030880996_tools_equipment_6.jpg', 1, 32000000, 80)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (4, N'tools_equipment_2', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'133196282744640015_tools_equipment_2.jpg', 1, 31000000, 70)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (5, N'kidtoy_08', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'133196282401282105_kidtoy_08.jpg', 1, 30000000, 60)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (6, N'organics_spa_2', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'133196282090010638_organics_spa_2.jpg', 1, 29000000, 50)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (7, N'kidtoy_07', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'133196281753161160_kidtoy_07.jpg', 1, 28000000, 40)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (8, N'kidtoy_04', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'133196281429265951_kidtoy_04.jpg', 1, 27000000, 30)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (9, N'kidtoy_03', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'133196280508981330_kidtoy_03.jpg', 1, 26000000, 20)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (10, N'kidtoy_02', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'133196277292480976_kidtoy_02.jpg', 1, 30000000, 25)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (12, N'kidtoy_01', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'133196276931050240_kidtoy_01.jpg', 1, 30000000, 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (14, N'furniture_08', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'133196274753286857_furniture_08.jpg', 0, 30000000, 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (16, N'furniture_07', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', N'133196274061600030_furniture_07.jpg', 1, 30000000, 0)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Content], [Photo], [Hot], [Price], [Discount]) VALUES (17, N'tools_equipment_8', N'<p>Lorem ipsum dolor sit amet, an munere tibique consequat mel, congue albucius no qui, a t everti meliore erroribus sea. ro cum. Sea ne accusata voluptatibus. Ne cum falli dolor voluptua, duo ei sonet choro facilisis, labores officiis torquatos cum ei.</p>

<p>Cum altera mandamus in, mea verear disputationi et. Vel regione discere ut, legere expetenda ut eos. In nam nibh invenire similique. Atqui mollis ea his, ius graecis accommodare te. No eam tota nostrum eque. Est cu nibh clita. Sed an nominavi, et stituto, duo id rebum lucilius. Te eam iisque deseruisse, ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus taria .</p>

<p>experian soleat maluisset per. Has eu idque similique, et blandit scriptorem tatibus mea. Vis quaeque ocurreret ea.cu bus scripserit, modus voluptaria ex per.</p>', N'<p>Lorem ipsum dolor sit amet, an munere tibique consequat mel, congue albucius no qui, a t everti meliore erroribus sea. ro cum. Sea ne accusata voluptatibus. Ne cum falli dolor voluptua, duo ei sonet choro facilisis, labores officiis torquatos cum ei.</p>

<p>Cum altera mandamus in, mea verear disputationi et. Vel regione discere ut, legere expetenda ut eos. In nam nibh invenire similique. Atqui mollis ea his, ius graecis accommodare te. No eam tota nostrum eque. Est cu nibh clita. Sed an nominavi, et stituto, duo id rebum lucilius. Te eam iisque deseruisse, ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus taria .</p>

<p>experian soleat maluisset per. Has eu idque similique, et blandit scriptorem tatibus mea. Vis quaeque ocurreret ea.cu bus scripserit, modus voluptaria ex per.</p>', N'133196273398997130_tools_equipment_8.jpg', 0, 30000000, 50)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (5, 17, 5)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (6, 17, 5)
INSERT [dbo].[Rating] ([Id], [ProductId], [Star]) VALUES (7, 10, 5)
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[Slides] ON 

INSERT [dbo].[Slides] ([Id], [Name], [Photo], [Title], [SubTitle], [Info], [Link]) VALUES (1, N'Slide 1', N'133200397360291943_main-slider-1-1.jpg', N'Kid Smart Watches', N'Compra todos tus productos Smart por internet.', N'Info slide 1', N'http://dantri.com.vn')
INSERT [dbo].[Slides] ([Id], [Name], [Photo], [Title], [SubTitle], [Info], [Link]) VALUES (2, N'Slide 2', N'133200397509154672_main-slider-1-2.jpg', N'Title slide 2', N'Sub Title slide 2', N'Info slide 2', N'http://dantri.com.vn')
INSERT [dbo].[Slides] ([Id], [Name], [Photo], [Title], [SubTitle], [Info], [Link]) VALUES (3, N'Slide 3', N'133200397611329392_main-slider-1-3.jpg', N'Title slide 3', N'Sub Title slide 3', N'Info slide 3', N'http://dantri.com.vn')
SET IDENTITY_INSERT [dbo].[Slides] OFF
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [Name]) VALUES (1, N'Fashion Clothings')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (2, N'Laptop Batteries')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (3, N'Printer & Ink')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (4, N'CPUs & Prosecsors')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (5, N'Sound & Speaker')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (6, N'Shop Smartphone & Tablets')
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
SET IDENTITY_INSERT [dbo].[TagsProducts] ON 

INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (3, 1, 18)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (4, 4, 19)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (5, 3, 19)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (6, 2, 19)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (7, 4, 20)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (8, 2, 20)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (17, 4, 17)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (18, 3, 17)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (19, 2, 17)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (20, 1, 17)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (21, 4, 16)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (22, 3, 16)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (23, 2, 16)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (24, 1, 16)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (35, 6, 14)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (36, 5, 14)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (37, 4, 14)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (38, 3, 14)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (39, 2, 14)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (40, 1, 14)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (41, 6, 12)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (42, 5, 12)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (43, 4, 12)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (44, 3, 12)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (45, 2, 12)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (46, 1, 12)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (47, 6, 10)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (48, 5, 10)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (49, 4, 10)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (50, 3, 10)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (51, 2, 10)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (52, 1, 10)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (53, 4, 9)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (54, 3, 9)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (55, 2, 9)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (56, 3, 8)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (57, 2, 8)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (58, 1, 8)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (59, 4, 7)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (60, 3, 7)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (61, 2, 7)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (62, 1, 7)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (63, 5, 6)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (64, 4, 6)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (65, 3, 6)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (66, 2, 6)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (67, 6, 5)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (68, 5, 5)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (69, 4, 5)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (70, 3, 5)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (71, 2, 5)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (72, 1, 5)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (73, 4, 4)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (74, 3, 4)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (75, 2, 4)
INSERT [dbo].[TagsProducts] ([Id], [TagId], [ProductId]) VALUES (76, 1, 4)
SET IDENTITY_INSERT [dbo].[TagsProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Email], [Password]) VALUES (1, N'Nguyễn Văn A', N'nva@gmail.com', N'$2a$11$61G.em05kF/ZoDcm5I4BieVZ13kThIROocOj/M5nScChh9gvvfMZe')
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password]) VALUES (2, N'Nguyễn Văn B', N'nvb@gmail.com', N'$2a$11$61G.em05kF/ZoDcm5I4BieVZ13kThIROocOj/M5nScChh9gvvfMZe')
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password]) VALUES (3, N'Nguyễn Văn C', N'nvc@gmail.com', N'$2a$11$61G.em05kF/ZoDcm5I4BieVZ13kThIROocOj/M5nScChh9gvvfMZe')
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password]) VALUES (4, N'Nguyễn Văn D', N'nvd@gmail.com', N'$2a$11$61G.em05kF/ZoDcm5I4BieVZ13kThIROocOj/M5nScChh9gvvfMZe')
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password]) VALUES (5, N'Nguyễn Văn E', N'nve@gmail.com', N'$2a$11$61G.em05kF/ZoDcm5I4BieVZ13kThIROocOj/M5nScChh9gvvfMZe')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_DisplayHomePage]  DEFAULT ((0)) FOR [DisplayHomePage]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_news_hot]  DEFAULT ((0)) FOR [Hot]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Discount_1]  DEFAULT ((0)) FOR [Discount]
GO
