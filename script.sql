USE [master]
GO
/****** Object:  Database [GlassAuthentic]    Script Date: 2/29/2024 10:54:32 PM ******/
CREATE DATABASE [GlassAuthentic]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GlassAuthentic', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\GlassAuthentic.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GlassAuthentic_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\GlassAuthentic_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GlassAuthentic] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GlassAuthentic].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GlassAuthentic] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GlassAuthentic] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GlassAuthentic] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GlassAuthentic] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GlassAuthentic] SET ARITHABORT OFF 
GO
ALTER DATABASE [GlassAuthentic] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GlassAuthentic] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GlassAuthentic] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GlassAuthentic] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GlassAuthentic] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GlassAuthentic] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GlassAuthentic] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GlassAuthentic] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GlassAuthentic] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GlassAuthentic] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GlassAuthentic] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GlassAuthentic] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GlassAuthentic] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GlassAuthentic] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GlassAuthentic] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GlassAuthentic] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GlassAuthentic] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GlassAuthentic] SET RECOVERY FULL 
GO
ALTER DATABASE [GlassAuthentic] SET  MULTI_USER 
GO
ALTER DATABASE [GlassAuthentic] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GlassAuthentic] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GlassAuthentic] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GlassAuthentic] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GlassAuthentic] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GlassAuthentic] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'GlassAuthentic', N'ON'
GO
ALTER DATABASE [GlassAuthentic] SET QUERY_STORE = OFF
GO
USE [GlassAuthentic]
GO
/****** Object:  User [sa]    Script Date: 2/29/2024 10:54:33 PM ******/
CREATE USER [sa] FOR LOGIN [sa] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 2/29/2024 10:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_date] [date] NULL,
	[status] [nvarchar](50) NULL,
	[order_id] [int] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_bill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 2/29/2024 10:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_brand] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 2/29/2024 10:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_date] [date] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 2/29/2024 10:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[product_quantity] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_order_detail] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 2/29/2024 10:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[description] [text] NULL,
	[image_url] [varchar](max) NULL,
	[brand_id] [int] NULL,
	[release_date] [date] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 2/29/2024 10:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2/29/2024 10:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](10) NULL,
	[address] [nvarchar](50) NULL,
	[role_id] [int] NULL,
	[banned] [bit] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[brand] ON 

INSERT [dbo].[brand] ([id], [name]) VALUES (1, N'Gucci')
INSERT [dbo].[brand] ([id], [name]) VALUES (2, N'Louis Vuitton')
INSERT [dbo].[brand] ([id], [name]) VALUES (3, N'Gentle Monster')
INSERT [dbo].[brand] ([id], [name]) VALUES (4, N'Celine')
INSERT [dbo].[brand] ([id], [name]) VALUES (5, N'Chanel')
INSERT [dbo].[brand] ([id], [name]) VALUES (6, N'Chrome Hearts')
SET IDENTITY_INSERT [dbo].[brand] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (1, N'RECTANGULAR OPTICAL FRAME', 390, 10, N'Crafted from acetate, this rectangular-shape optical frame is characterized by a shiny black front and temples. The name of the House appears as a petite detail on the temples, enriching the design with a logo feel.', N'https://media.gucci.com/style/DarkGray_Center_0_0_800x800/1622845805/684515_J0740_1091_001_100_0000_Light-Rectangular-optical-frame.jpg', 1, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (2, N'SQUARE-FRAME SUNGLASSES', 450, 12, N'Presented in a shiny dark blue acetate frame, these square-frame sunglasses feature an enamel Gucci lettering and green and red Web detail across the matching temples. A solid brown lens completes the design.', N'https://media.gucci.com/style/DarkGray_Center_0_0_800x800/1689786940/778331_J0740_4023_001_100_0000_Light-Square-frame-sunglasses.jpg', 1, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (3, N'RECTANGULAR FRAME SUNGLASSES', 505, 6, N'These rectangular-frame sunglasses have a timeless appeal. Crafted from black acetate, they are characterized by subtle gold-toned Gucci lettering and rivets detailing on the frame and temples. A grey lens completes the style with a contemporary feel.', N'https://media.gucci.com/style/DarkGray_Center_0_0_800x800/1638212483/691348_J0740_1012_001_100_0000_Light-Rectangular-frame-sunglasses.jpg', 1, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (4, N'SQUARE-FRAME SUNGLASSES', 650, 3, N'Presented in a blue and grey tortoiseshell acetate frame, these square-shaped sunglasses feature an enamel Gucci logo across the matching temples. A solid grey lens completes the design.', N'https://media.gucci.com/style/DarkGray_Center_0_0_800x800/1689786958/778351_J0765_4012_001_100_0000_Light-Square-frame-sunglasses.jpg', 1, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (5, N'NAVIGATOR FRAME SUNGLASSES', 650, 21, N'For the Cruise 2024, these sunglasses are defined by a navigator shape. Crafted from gold-toned metal, the silhouette is embellished by engraving and Gucci lettering along the temples. A solid grey lens completes the design.', N'https://media.gucci.com/style/DarkGray_Center_0_0_800x800/1689786934/778328_I3330_8012_001_100_0000_Light-Navigator-frame-sunglasses.jpg', 1, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (6, N'SQUARE FRAME SUNGLASSES', 550, 17, N'This pair of black sunglasses is crafted in shiny acetate. The square-shaped frame is enhanced by a gold-toned Gucci script detail on the temples, while the solid grey lenses complete the style.', N'https://media.gucci.com/style/DarkGray_Center_0_0_800x800/1705311115/791810_J0740_1012_001_100_0000_Light-Square-frame-sunglasses.jpg', 1, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (7, N'GEOMETRIC SHAPED FRAME SUNGLASSES', 550, 11, N'This pair of black sunglasses are crafted in shiny acetate. The geometric-shaped frame is enhanced by a gold-toned Gucci script detail on the temples, while the solid grey lenses complete the style.', N'https://media.gucci.com/style/DarkGray_Center_0_0_800x800/1705311113/791806_J0740_1012_001_100_0000_Light-Geometric-shaped-frame-sunglasses.jpg', 1, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (8, N'RECTANGULAR FRAME SUNGLASSES', 435, 5, N'Defined by a lightweight gold-toned metal construction, these rectangular frames recall the styles of the 1990s and early 2000s. The matching temples, enriched with Gucci lettering, are complete with contrasting acetate tips. Rubber nose pads are a functional touch which completes the design.', N'https://media.gucci.com/style/DarkGray_Center_0_0_800x800/1686588415/755272_I3330_8038_001_100_0000_Light-Rectangular-frame-sunglasses.jpg', 1, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (9, N'ROUND SUNGLASSES', 985, 15, N'Embodying the spirit of fashion designed to be worn again and again are these round sunglasses with photochromatic grey lenses. The gradient injected acetate frame reveals shades of green and crystal, while the lens'' violet inner adds an unexpected twist.', N'https://media.gucci.com/style/DarkGray_Center_0_0_800x800/1665652585/733397_J1692_3012_001_100_0000_Light-Round-sunglasses.jpg', 1, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (10, N'RECTANGULAR SUNGLASSES', 580, 9, N'Rectangular shaped frames speak to the retro influences that weave their way into modern styles for a look that is permanently in the now. Crafted from shiny yellow gold, the silhouette is enriched with a soft yellow lens.', N'https://media.gucci.com/style/DarkGray_Center_0_0_800x800/1664986545/733392_I3330_8070_001_100_0000_Light-Rectangular-sunglasses.jpg', 1, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (11, N'LV Clash Pearls & Strass Sunglasses', 660, 2, N'The LV Clash sunglasses are offered this season in a decidedly glamorous edition. The pair’s square-shaped black acetate frames are set with a brilliant all-over mix of glittering rhinestones and luminous pearls. A metal LV Initials emblem signs the temples of these sparkling shades, which are unlikely to go unnoticed, wherever they are worn.', N'https://eu.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-lv-clash-pearls-strass-sunglasses-s00-for-men--Z2396E_PM2_Front%20view.png?wid=1090&hei=1090', 2, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (12, N'LV Confidence Square Sunglasses', 890, 13, N'The exclusive LV Confidence Square Sunglasses feature bold injected frames set with black lenses. A finely engraved new signature adorns the hinges of this sleek pair, which is also marked with an elegant metal LV logo on the temples. This low-bridge, Asian-fit design also incorporates functional nose pads for both comfort and style.', N'https://eu.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-lv-confidence-square-sunglasses-s00-sunglasses--Z2084U_PM2_Front%20view.png?wid=1090&hei=1090', 2, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (13, N'Millionaires Square Sunglasses', 1200, 14, N'The iconic 1.1 Millionaires square sunglasses are offered in an elegant dark shade of green, a color that coordinates with the season’s palette. The acetate frames feature the deep beveled front of Virgil Abloh’s original design as well as signature Monogram engraving on the top bar. An S-lock detail on the hinges harks back to the Maison’s historic trunks.', N'https://eu.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-1-1-millionaires-square-sunglasses-s00-sunglasses--Z2072E_PM2_Front%20view.png?wid=1090&hei=1090', 2, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (14, N'LV Rush Aviator Sunglasses', 850, 12, N'A fresh take on the classic aviator shape, these LV Rush Aviator Sunglasses display an elegant, modern silhouette. The acetate and metal frames are accented with an LV Initials emblem at the hinges and an engraved signature on the temples. Monogram motifs embellish the metal brow bar of this on-trend accessory for a final sophisticated touch.', N'https://eu.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-lv-rush-aviator-sunglasses-s00-sunglasses--Z2067U_PM2_Front%20view.png?wid=1090&hei=1090', 2, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (15, N'LV Urban Square Sunglasses', 370, 16, N'The LV Urban Square Sunglasses belong to a new family introduced this season. The acetate frames feature a cool metal nose bridge and are signed with LV metal logos on the front, as well as with the Louis Vuitton name spelled out on the temples. An easy-to-wear model, it comes in colourways that coordinate with the current textile collections.', N'https://eu.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-lv-urban-square-sunglasses-s00-sunglasses--Z2090E_PM2_Front%20view.png?wid=1090&hei=1090', 2, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (16, N'Lilit 01(K)', 225, 1, N'Lilit 01(K) is a square acetate Flatba frame. With soft rounded curves all around, these versatile sunglasses feature unique metal details on the temples and khaki lenses with 99.9% UV protection.', N'https://www-prd-kr.gentlemonster.com/media/catalog/product/cache/6c6f229b8a7ab97f51028776641e27d1/l/i/lilit_01_k__1_1.jpg', 3, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (17, N'Dear 01', 235, 19, N'
Discover the Dear 01 sunglasses from Gentle Monster’s 2024 Collection. This piece features a square shape highlighted with straight line details, a simple black frame, and an iconic metal detail on the temples.', N'https://www-prd-kr.gentlemonster.com/media/catalog/product/cache/6c6f229b8a7ab97f51028776641e27d1/1/1/11001_DEAR-01-1_2.jpg', 3, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (18, N'Libe G1', 235, 4, N'Libe G1 is a clear grey square Flatba frame with 99.9% UV protected black lenses. This design is highlighted by the soft curves of the front featuring circular studs and logo adorned temples.', N'https://www-prd-kr.gentlemonster.com/media/catalog/product/cache/6c6f229b8a7ab97f51028776641e27d1/l/i/libe_g1_1.jpg', 3, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (19, N'Lo Cell 01(OG)', 235, 18, N'Lo Cell 01(OG) is an oversized square Flatba frame. Distinguished by the rolled edges of the front and studs embellished on each corner of the lenses, these sunglasses feature the Gentle Monster logo accentuated by a metal detail and fitted with orange gradient lenses with 99.9% UV protection.', N'https://www-prd-kr.gentlemonster.com/media/catalog/product/cache/6c6f229b8a7ab97f51028776641e27d1/l/o/lo_cell_01_og__1.jpg', 3, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (20, N'Rococo 01', 280, 23, N'Discover the Rococo 01 sunglasses from Gentle Monster’s 2023 Collection. The straight lines of this voluminous silhouette immediately draw the eye to a composition that stands out for its remarkable design. Featuring a simple black frame, the iconic metal detail on the temples adds a touch of sophistication to this piece.', N'https://www-prd-kr.gentlemonster.com/media/catalog/product/cache/6c6f229b8a7ab97f51028776641e27d1/1/1/11001_ROCOCO_01_1_3.jpg', 3, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (22, N'TRIOMPHE METAL ', 670, 9, N'CELINE HAS SELECTED MATERIALS OF THE HIGHEST QUALITY TO CREATE YOUR SUNGLASSES. ', N'https://twicpics.celine.com/product-prd/images/large/4S281CMLB.36SM_1_SS24_P1_M.jpg?twic=v1/cover=1:1/resize-max=480', 4, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (23, N'BLACK FRAME 51 SUNGLASSES', 580, 12, N'CELINE HAS SELECTED MATERIALS OF THE HIGHEST QUALITY TO CREATE YOUR SUNGLASSES.', N'https://twicpics.celine.com/product-prd/images/large/4S268CPMB.07BT_1_FW23_M.jpg?twic=v1/cover=1:1/resize-max=480', 4, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (24, N'BLACK FRAME 49 SUNGLASSES', 510, 4, N'CELINE HAS SELECTED MATERIALS OF THE HIGHEST QUALITY TO CREATE YOUR SUNGLASSES. ', N'https://twicpics.celine.com/product-prd/images/large/4S266CPLB.10TT_1_FW23_M.jpg?twic=v1/cover=1:1/resize-max=480', 4, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (25, N'BLACK FRAME 24 SUNGLASSES', 420, 11, N'CELINE HAS SELECTED MATERIALS OF THE HIGHEST QUALITY TO CREATE YOUR SUNGLASSES.', N'https://twicpics.celine.com/product-prd/images/large/4S160CPLB.38NO_1_FALL20_766938v2.jpg?twic=v1/cover=1:1/resize-max=480', 4, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (26, N'RECTANGLE SUNGLASSES', 500, 3, N'Metal
Gold. Lenses: Grey, Gradient', N'https://www.chanel.com/images//t_one/t_fashion9//b_rgb:F7F7F7,e_brightness:-3/q_auto:good,f_autoplus,fl_lossy,dpr_1.1/w_840/rectangle-sunglasses-gold-metal-metal-packshot-default-a71542x01060l9516-9521898127390.jpg', 5, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (27, N'SQUARE SUNGLASSES', 255, 29, N'Acetate & Metal
Green', N'https://www.chanel.com/images//t_one/t_fashion9//b_rgb:F7F7F7,e_brightness:-3/q_auto:good,f_autoplus,fl_lossy,dpr_1.1/w_840/square-sunglasses-green-acetate-metal-acetate-metal-packshot-default-a71591x06081s5913-9534652579870.jpg', 5, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (28, N'SQUARE SUNGLASSES', 790, 1, N'Acetate
Black', N'https://www.chanel.com/images//t_one/t_fashion9//b_rgb:F7F7F7,e_brightness:-3/q_auto:good,f_autoplus,fl_lossy,dpr_1.1/w_840/square-sunglasses-black-acetate-acetate-packshot-default-a71564x02016s2228-9527156342814.jpg', 5, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (29, N'PILOT SUNGLASSES', 470, 5, N'Titanium & Calfskin
Brown. Lenses: Grey', N'https://www.chanel.com/images//t_one/t_fashion9//b_rgb:F7F7F7,e_brightness:-3/q_auto:good,f_autoplus,fl_lossy,dpr_1.1/w_840/pilot-sunglasses-brown-titanium-calfskin-titanium-calfskin-packshot-default-a40888x09960l8712-8853814247454.jpg', 5, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (30, N'RECTANGLE SUNGLASSES', 1150, 26, N'Acetate & Tweed
White', N'https://www.chanel.com/images//t_one/t_fashion9//b_rgb:F7F7F7,e_brightness:-3/q_auto:good,f_autoplus,fl_lossy,dpr_1.1/w_840/rectangle-sunglasses-white-acetate-tweed-acetate-tweed-packshot-default-a71576x22001s5512-9530146619422.jpg', 5, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (31, N'Wayfarer Classic Sunglasses', 1672, 7, N'Wayfarer Classic Sunglasses from Chrome Hearts
Color: Black', N'https://cdn-images.italist.com/image/upload/t_medium_dpr_2_q_auto_v_2,f_auto/032a88be11c0bae7799ed8e14408e907.jpg', 6, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (32, N'Nipplygp Sunglasses', 1610, 30, N'Nipplygp/ss from Chrome Hearts
Composition:
Imported

Color: Black', N'https://cdn-images.italist.com/image/upload/t_medium_dpr_2_q_auto_v_2,f_auto/e4654f9587f142ba98b793b2d1437353.jpg', 6, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (33, N'Oralgami Sunglasses', 1365, 15, N'Oralgami Sunglasses from Chrome Hearts
Composition: metal', N'https://cdn-images.italist.com/image/upload/t_medium_dpr_2_q_auto_v_2,f_auto/ecf0f6904978372a749b87e763384830.jpg', 6, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (34, N'Bardotgp Sunglasses', 1230, 2, N'Bardotgp Blk from Chrome Hearts
Composition:
Imported

', N'https://cdn-images.italist.com/image/upload/t_medium_dpr_2_q_auto_v_2,f_auto/992da9a457681b6e4fe57837339619fd.jpg', 6, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (35, N'Sniffer - Pinto Sunglasses', 1990, 1, N'Chrome Hearts SNIFFER - PINTO (32420729411KE56G28) are squared sunglasses made in Japan, part of the exclusive Chrome Hearts colletion. They feature brown acetate frame with yellow and red acetate layers, diamond-shaped front pins, gold-plated 925 silver Chrome Hearts cross emblem decoration on temples, and gradient yellow lens with 100% UV protection.', N'https://cdn-images.italist.com/image/upload/t_medium_dpr_2_q_auto_v_2,f_auto/15e95394fc342707f838fa3ad0a33e03.jpg', 6, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (36, N'Rectangle Rimless Sunglasses', 1970, 6, N'Rectangle Rimless Sunglasses from Chrome Hearts
Color: Gold', N'https://cdn-images.italist.com/image/upload/t_medium_dpr_2_q_auto_v_2,f_auto/08a9e8193823e596075be83b60eb9b73.jpg', 6, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (37, N'Instakilo Sunglasses', 1400, 11, N'Instakilo Sunglasses from Chrome Hearts
Composition:
Imported', N'https://cdn-images.italist.com/image/upload/t_medium_dpr_2_q_auto_v_2,f_auto/240ea1b1ed6546f9fecb89eee777e912.jpg', 6, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (38, N'Datass - Sand Sunglasses', 1620, 29, N'Chrome Hearts DATASS - SAND (32420279123GE54G60) are hexagonal sunglasses, part of Chrome Hearts''s exclusive luxury eyewear collection. They feature sand brown titanium frame with decorated nose bridge, titanium temples with Chrome Hearts signature gold-plated 925 silver emblem decorations, and gradient purple lens with 100% UV protection.', N'https://cdn-images.italist.com/image/upload/t_medium_dpr_2_q_auto_v_2,f_auto/d833ac348c5b9b19e066a2aef1263f96.jpg', 6, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (39, N'Stinger - Shiny Silver Sunglasses', 2219, 2, N'Chrome Hearts STINGER - SHINY SILVER (32419666621AE58G61) are squared aviator sunglasses made in Japan, part of the Chrome Hearts luxury eyewear collection. They feature silver titanium frame with rimless design, titanium brow bar, custom nose pads, matte black titanium temples with sterling silver Chrome Hearts emblem decoration, and gradient grey lens with 100% UV protection.', N'https://cdn-images.italist.com/image/upload/t_medium_dpr_2_q_auto_v_2,f_auto/4b00855d616550e5c886429ecfc4f354.jpg', 6, NULL)
INSERT [dbo].[product] ([id], [name], [price], [quantity], [description], [image_url], [brand_id], [release_date]) VALUES (40, N'Lick''n - Matte Black Sunglasses', 1858, 16, N'Chrome Hearts LICK''N - MATTE BLACK (324196662921E59689) are rectangular sunglasses made in Japan, part of the exclusive Chrome Hearts luxury eyewear collection. They feature matte black titanium frame, titanium temples, engraved lines decorations, custom hinge, Chrome Hearts'' 925 gold-plated silver cross emblem decoration, and gradient grey lens with 100% UV protection.', N'https://cdn-images.italist.com/image/upload/t_medium_dpr_2_q_auto_v_2,f_auto/5f7249ceec07e5126cf1374d8e2e23aa.jpg', 6, NULL)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
INSERT [dbo].[role] ([id], [name]) VALUES (1, N'admin')
INSERT [dbo].[role] ([id], [name]) VALUES (2, N'user')
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [address], [role_id], [banned]) VALUES (1, N'admin', N'admin', N'admin', N'admin@admin.com', NULL, NULL, 1, NULL)
INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [address], [role_id], [banned]) VALUES (2, N'phamkhanhtoan', N'123456', N'Phạm Khánh Toàn', N'toanpk@gmail.com', N'0123456789', N'Hà Nội', 2, NULL)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Username]    Script Date: 2/29/2024 10:54:33 PM ******/
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [UQ_Username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_order]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_user]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_user]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_order]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_brand] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_brand]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_role]
GO
USE [master]
GO
ALTER DATABASE [GlassAuthentic] SET  READ_WRITE 
GO
