USE [master]
GO
/****** Object:  Database [stuSys]    Script Date: 2019/10/18 22:21:33 ******/
CREATE DATABASE [stuSys]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'stuSys', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\stuSys.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'stuSys_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\stuSys_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [stuSys] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [stuSys].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [stuSys] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [stuSys] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [stuSys] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [stuSys] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [stuSys] SET ARITHABORT OFF 
GO
ALTER DATABASE [stuSys] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [stuSys] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [stuSys] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [stuSys] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [stuSys] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [stuSys] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [stuSys] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [stuSys] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [stuSys] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [stuSys] SET  ENABLE_BROKER 
GO
ALTER DATABASE [stuSys] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [stuSys] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [stuSys] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [stuSys] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [stuSys] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [stuSys] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [stuSys] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [stuSys] SET RECOVERY FULL 
GO
ALTER DATABASE [stuSys] SET  MULTI_USER 
GO
ALTER DATABASE [stuSys] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [stuSys] SET DB_CHAINING OFF 
GO
ALTER DATABASE [stuSys] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [stuSys] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [stuSys] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'stuSys', N'ON'
GO
ALTER DATABASE [stuSys] SET QUERY_STORE = OFF
GO
USE [stuSys]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [stuSys]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 2019/10/18 22:21:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[课程编号] [int] IDENTITY(1,1) NOT NULL,
	[课程名称] [varchar](max) NOT NULL,
	[任课教师] [char](10) NOT NULL,
	[课程性质] [char](10) NOT NULL,
	[起止周] [varchar](max) NOT NULL,
	[总学时] [int] NOT NULL,
	[班级名称] [varchar](max) NOT NULL,
	[学年] [char](10) NOT NULL,
	[学期] [int] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[课程编号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personalCourse]    Script Date: 2019/10/18 22:21:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personalCourse](
	[星期] [char](10) NOT NULL,
	[第一节] [varchar](max) NULL,
	[第二节] [varchar](max) NULL,
	[第三节] [varchar](max) NULL,
	[第四节] [varchar](max) NULL,
	[第五节] [varchar](max) NULL,
	[学号] [char](12) NOT NULL,
	[学年] [varchar](10) NULL,
	[学期] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[selectCourse]    Script Date: 2019/10/18 22:21:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[selectCourse](
	[课程名称] [varchar](50) NULL,
	[教师姓名] [varchar](10) NULL,
	[上课时间] [varchar](max) NULL,
	[上课地点] [varchar](max) NULL,
	[学分] [int] NULL,
	[容量] [int] NULL,
	[已选] [int] NULL,
	[余量]  AS ([容量]-[已选]),
	[课程编号] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studentList]    Script Date: 2019/10/18 22:21:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studentList](
	[课程编号] [int] NOT NULL,
	[学号] [varchar](50) NOT NULL,
	[姓名] [char](10) NOT NULL,
	[备注] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teacherCourse]    Script Date: 2019/10/18 22:21:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacherCourse](
	[课程编号] [int] NOT NULL,
	[课程名称] [varchar](50) NOT NULL,
	[上课地点] [varchar](50) NOT NULL,
	[上课时间] [varchar](max) NOT NULL,
	[任课教师] [char](10) NOT NULL,
	[上课班级] [varchar](50) NULL,
	[人数] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [stuSys] SET  READ_WRITE 
GO
