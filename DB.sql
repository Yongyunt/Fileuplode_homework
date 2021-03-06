USE [master]
GO
/****** Object:  Database [homework]    Script Date: 4/6/2019 1:31:33 AM ******/
CREATE DATABASE [homework]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'homework', FILENAME = N'D:\sql\MSSQL14.SQLEXPRESS\MSSQL\DATA\homework.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'homework_log', FILENAME = N'D:\sql\MSSQL14.SQLEXPRESS\MSSQL\DATA\homework_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [homework] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [homework].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [homework] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [homework] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [homework] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [homework] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [homework] SET ARITHABORT OFF 
GO
ALTER DATABASE [homework] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [homework] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [homework] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [homework] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [homework] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [homework] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [homework] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [homework] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [homework] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [homework] SET  DISABLE_BROKER 
GO
ALTER DATABASE [homework] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [homework] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [homework] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [homework] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [homework] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [homework] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [homework] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [homework] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [homework] SET  MULTI_USER 
GO
ALTER DATABASE [homework] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [homework] SET DB_CHAINING OFF 
GO
ALTER DATABASE [homework] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [homework] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [homework] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [homework] SET QUERY_STORE = OFF
GO
USE [homework]
GO
/****** Object:  Table [dbo].[home]    Script Date: 4/6/2019 1:31:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[home](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[FilePath] [varchar](max) NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_home] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[home] ON 

INSERT [dbo].[home] ([ID], [Name], [FilePath], [Date]) VALUES (1, N'lek', N'asdasdqaw', CAST(N'2019-04-06' AS Date))
INSERT [dbo].[home] ([ID], [Name], [FilePath], [Date]) VALUES (2, N'too.jpg', N'Upload/9763ce1a-bc28-448b-91f5-a0a812325dd7.jpg', CAST(N'2019-04-06' AS Date))
INSERT [dbo].[home] ([ID], [Name], [FilePath], [Date]) VALUES (3, N'too.jpg', N'Upload/4934b02b-0ec2-408b-b652-c91c8301d31e.jpg', CAST(N'2019-04-06' AS Date))
SET IDENTITY_INSERT [dbo].[home] OFF
/****** Object:  StoredProcedure [dbo].[sqlinsert]    Script Date: 4/6/2019 1:31:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sqlinsert]
	@Name varchar(MAX),
	@Date date,
	@FilePath varchar(MAX)
AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO home
    (Name, Date, FilePath)
	VALUES  (@Name,@Date,@FilePath)

   
END
GO
/****** Object:  StoredProcedure [dbo].[sqlUpload]    Script Date: 4/6/2019 1:31:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sqlUpload]
	@Date  date
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT		 ID, Name, Date
	FROM		 home		
	WHERE	(Date = @Date)
  
END
GO
USE [master]
GO
ALTER DATABASE [homework] SET  READ_WRITE 
GO
