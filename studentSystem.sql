USE [master]
GO
/****** Object:  Database [stuSys]    Script Date: 2019/10/23 23:14:49 ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 2019/10/23 23:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] NOT NULL,
	[CourseName] [nchar](10) NULL,
	[CourseScore] [int] NULL,
	[TeacherID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 2019/10/23 23:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[courseId] [int] IDENTITY(1,1) NOT NULL,
	[courseName] [varchar](max) NOT NULL,
	[teacher] [char](10) NOT NULL,
	[courseProperties] [char](10) NOT NULL,
	[beginEnd] [varchar](max) NOT NULL,
	[totalTime] [int] NOT NULL,
	[className] [varchar](max) NULL,
	[year] [char](10) NOT NULL,
	[term] [int] NOT NULL,
	[major] [varchar](50) NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[courseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personalCourse]    Script Date: 2019/10/23 23:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personalCourse](
	[week] [char](10) NOT NULL,
	[firstClass] [varchar](max) NULL,
	[secondClass] [varchar](max) NULL,
	[thirdClass] [varchar](max) NULL,
	[fourthClass] [varchar](max) NULL,
	[fifthClass] [varchar](max) NULL,
	[year] [varchar](10) NULL,
	[term] [int] NULL,
	[studentId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[selectCourse]    Script Date: 2019/10/23 23:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[selectCourse](
	[courseId] [int] NOT NULL,
	[courseName] [varchar](50) NOT NULL,
	[teacher] [char](10) NOT NULL,
	[time] [varchar](50) NOT NULL,
	[classroom] [varchar](50) NOT NULL,
	[credit] [int] NOT NULL,
	[sum] [int] NOT NULL,
	[checked] [int] NOT NULL,
	[allowance]  AS ([sum]-[checked])
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2019/10/23 23:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] NOT NULL,
	[studentName] [nchar](10) NOT NULL,
	[studentPwd] [nchar](18) NOT NULL,
 CONSTRAINT [PK__Student__32C52A7937C688DC] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentCourse]    Script Date: 2019/10/23 23:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentCourse](
	[StudentID] [int] NULL,
	[CourseID] [int] NULL,
	[score] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studentList]    Script Date: 2019/10/23 23:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studentList](
	[courseId] [int] NOT NULL,
	[name] [char](10) NOT NULL,
	[extra] [varchar](50) NULL,
	[studentId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 2019/10/23 23:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherID] [int] NOT NULL,
	[TeacherName] [nchar](10) NULL,
	[TeacherPwd] [nchar](18) NULL,
PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teacherCourse]    Script Date: 2019/10/23 23:14:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacherCourse](
	[courseId] [int] NOT NULL,
	[courseName] [varchar](50) NOT NULL,
	[classroom] [varchar](50) NOT NULL,
	[time] [varchar](max) NOT NULL,
	[teacher] [char](10) NOT NULL,
	[class] [varchar](50) NULL,
	[count] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([TeacherID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Teacher]
GO
ALTER TABLE [dbo].[personalCourse]  WITH CHECK ADD  CONSTRAINT [FK_personalCourse_Student] FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[personalCourse] CHECK CONSTRAINT [FK_personalCourse_Student]
GO
ALTER TABLE [dbo].[selectCourse]  WITH CHECK ADD  CONSTRAINT [FK_selectCourse_Courses] FOREIGN KEY([courseId])
REFERENCES [dbo].[Courses] ([courseId])
GO
ALTER TABLE [dbo].[selectCourse] CHECK CONSTRAINT [FK_selectCourse_Courses]
GO
ALTER TABLE [dbo].[StudentCourse]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([courseId])
GO
ALTER TABLE [dbo].[StudentCourse]  WITH CHECK ADD  CONSTRAINT [FK_StudentCourse_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[StudentCourse] CHECK CONSTRAINT [FK_StudentCourse_Student]
GO
ALTER TABLE [dbo].[studentList]  WITH CHECK ADD  CONSTRAINT [FK_studentList_Courses] FOREIGN KEY([courseId])
REFERENCES [dbo].[Courses] ([courseId])
GO
ALTER TABLE [dbo].[studentList] CHECK CONSTRAINT [FK_studentList_Courses]
GO
ALTER TABLE [dbo].[studentList]  WITH CHECK ADD  CONSTRAINT [FK_studentList_Student] FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[studentList] CHECK CONSTRAINT [FK_studentList_Student]
GO
ALTER TABLE [dbo].[teacherCourse]  WITH CHECK ADD  CONSTRAINT [FK_teacherCourse_Courses] FOREIGN KEY([courseId])
REFERENCES [dbo].[Courses] ([courseId])
GO
ALTER TABLE [dbo].[teacherCourse] CHECK CONSTRAINT [FK_teacherCourse_Courses]
GO
USE [master]
GO
ALTER DATABASE [stuSys] SET  READ_WRITE 
GO
