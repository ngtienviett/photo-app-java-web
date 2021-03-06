USE [master]
GO
/****** Object:  Database [Photographer]    Script Date: 2/24/2021 11:55:09 PM ******/
CREATE DATABASE [Photographer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Photographer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.NGTIENVIETT\MSSQL\DATA\Photographer.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Photographer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.NGTIENVIETT\MSSQL\DATA\Photographer_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Photographer] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Photographer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Photographer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Photographer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Photographer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Photographer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Photographer] SET ARITHABORT OFF 
GO
ALTER DATABASE [Photographer] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Photographer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Photographer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Photographer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Photographer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Photographer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Photographer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Photographer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Photographer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Photographer] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Photographer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Photographer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Photographer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Photographer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Photographer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Photographer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Photographer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Photographer] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Photographer] SET  MULTI_USER 
GO
ALTER DATABASE [Photographer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Photographer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Photographer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Photographer] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Photographer] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Photographer]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 2/24/2021 11:55:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Address] [text] NULL,
	[City] [text] NULL,
	[Country] [text] NULL,
	[Tel] [text] NULL,
	[Email] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 2/24/2021 11:55:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[GalleryID] [int] NOT NULL,
	[GalleryName] [text] NULL,
	[Img] [text] NULL,
	[GalleryDesc] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[GalleryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GalleryImg]    Script Date: 2/24/2021 11:55:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GalleryImg](
	[GalleryID] [int] NULL,
	[Img] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Personal]    Script Date: 2/24/2021 11:55:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personal](
	[Img] [text] NULL,
	[DescImg] [text] NULL,
	[AboutMe] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Contact] ([Address], [City], [Country], [Tel], [Email]) VALUES (N'FPT University', N'Ha Noi', N'Viet Nam', N'123456', N'tienviet3353@gmai.com')
INSERT [dbo].[Gallery] ([GalleryID], [GalleryName], [Img], [GalleryDesc]) VALUES (1, N'Gallery 1', N'i284852689410739180._rsw480h360_szw480h360_.jpg', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus quae sapiente dolorem culpa eveniet modi laboriosam asperiores architecto voluptates placeat fugiat hic id alias vitae fugit, eius similique, non quia?')
INSERT [dbo].[Gallery] ([GalleryID], [GalleryName], [Img], [GalleryDesc]) VALUES (2, N'Gallery 2', N'i284852689410739202._rsw480h360_szw480h360_.jpg', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus quae sapiente dolorem culpa eveniet modi laboriosam asperiores architecto voluptates placeat fugiat hic id alias vitae fugit, eius similique, non quia?')
INSERT [dbo].[Gallery] ([GalleryID], [GalleryName], [Img], [GalleryDesc]) VALUES (3, N'Gallery 3', N'i284852689410739163._rsw480h360_szw480h360_.jpg', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus quae sapiente dolorem culpa eveniet modi laboriosam asperiores architecto voluptates placeat fugiat hic id alias vitae fugit, eius similique, non quia?')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (1, N'i284852689410739336._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (1, N'i284852689410739338_szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (1, N'i284852689410739339._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (1, N'i284852689410739343._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (1, N'i284852689410739443._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (1, N'i284852689410739585._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (1, N'i284852689425710823._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (1, N'i284852689425710847._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (2, N'i284852689410739336._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (2, N'i284852689410739338_szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (2, N'i284852689410739339._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (2, N'i284852689410739343._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (2, N'i284852689410739443._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (2, N'i284852689410739585._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (2, N'i284852689425710823._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (3, N'i284852689410739336._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (3, N'i284852689410739338_szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (3, N'i284852689410739339._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (3, N'i284852689410739343._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (3, N'i284852689410739443._szw360h1280_.jpg')
INSERT [dbo].[GalleryImg] ([GalleryID], [Img]) VALUES (3, N'i284852689410739585._szw360h1280_.jpg')
INSERT [dbo].[Personal] ([Img], [DescImg], [AboutMe]) VALUES (N'i284852689410739116._szw1280h1280_.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci. Aenean nec lorem. In porttitor. Donec laoreet nonummy augue.Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy.

')
ALTER TABLE [dbo].[GalleryImg]  WITH CHECK ADD  CONSTRAINT [FK_Gallery] FOREIGN KEY([GalleryID])
REFERENCES [dbo].[Gallery] ([GalleryID])
GO
ALTER TABLE [dbo].[GalleryImg] CHECK CONSTRAINT [FK_Gallery]
GO
USE [master]
GO
ALTER DATABASE [Photographer] SET  READ_WRITE 
GO
