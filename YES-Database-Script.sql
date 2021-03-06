USE [master]
GO
/****** Object:  Database [YES]    Script Date: 2/1/2015 12:34:56 AM ******/
CREATE DATABASE [YES] ON  PRIMARY 
( NAME = N'YES', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\YES.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'YES_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\YES_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [YES] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YES].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [YES] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YES] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YES] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YES] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YES] SET ARITHABORT OFF 
GO
ALTER DATABASE [YES] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [YES] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [YES] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [YES] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YES] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YES] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YES] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YES] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YES] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YES] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YES] SET  DISABLE_BROKER 
GO
ALTER DATABASE [YES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YES] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YES] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YES] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YES] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [YES] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YES] SET RECOVERY FULL 
GO
ALTER DATABASE [YES] SET  MULTI_USER 
GO
ALTER DATABASE [YES] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [YES] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'YES', N'ON'
GO
USE [YES]
GO
/****** Object:  Table [dbo].[YesCourse]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesCourse](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](100) NOT NULL,
	[CourseDescription] [text] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_YesCourse] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesCourseFee]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesCourseFee](
	[CourseFeeID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NULL,
	[FeeID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_CourseFee] PRIMARY KEY CLUSTERED 
(
	[CourseFeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesDesignation]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesDesignation](
	[DesignationID] [int] IDENTITY(1,1) NOT NULL,
	[DesignationName] [nvarchar](100) NULL,
	[DesignationDescription] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_YesDesignation] PRIMARY KEY CLUSTERED 
(
	[DesignationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesDistrict]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesDistrict](
	[DistrictID] [int] IDENTITY(1,1) NOT NULL,
	[DisctrictName] [nvarchar](100) NOT NULL,
	[StateID] [int] NOT NULL,
	[DisctrictDescription] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_YesDistrict] PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesEmployee]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesEmployee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeFirstName] [nvarchar](200) NOT NULL,
	[EmployeeMiddleName] [nvarchar](200) NULL,
	[EmployeeLastName] [nvarchar](200) NULL,
	[EmployeeMobileNo] [nvarchar](10) NOT NULL,
	[EmployeeAlternateMobileNo] [nvarchar](10) NULL,
	[EmployeeEmailID] [nvarchar](500) NULL,
	[EmployeeAddress1] [nvarchar](300) NULL,
	[EmployeeAddress2] [nvarchar](300) NULL,
	[EmployeeCity] [nvarchar](100) NULL,
	[StateID] [int] NULL,
	[DistrictID] [int] NULL,
	[EmployeePinCode] [int] NULL,
	[DesignationID] [int] NULL,
	[SchoolID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_YesEmployee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesExamType]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesExamType](
	[ExamTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ExamType] [nvarchar](100) NOT NULL,
	[ExamTypeDescription] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_YesExamType] PRIMARY KEY CLUSTERED 
(
	[ExamTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesFee]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesFee](
	[FeeID] [int] IDENTITY(1,1) NOT NULL,
	[FeeName] [nvarchar](200) NULL,
	[FeeDescription] [nvarchar](500) NULL,
	[FeeAmount] [money] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_YesFee] PRIMARY KEY CLUSTERED 
(
	[FeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesParent]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesParent](
	[ParentID] [int] IDENTITY(1,1) NOT NULL,
	[ParentFirstName] [nvarchar](200) NULL,
	[ParentMiddleName] [nvarchar](200) NULL,
	[ParentLastName] [nvarchar](200) NULL,
	[ParentMobileNo] [bigint] NULL,
	[ParentAlternateMobileNo] [bigint] NULL,
	[ParentEmailID] [nvarchar](500) NULL,
	[ParentAddress1] [nvarchar](300) NULL,
	[ParentAddress2] [nvarchar](300) NULL,
	[ParentCity] [nvarchar](100) NULL,
	[DistrictID] [int] NULL,
	[StateID] [int] NULL,
	[ParentPinCode] [int] NULL,
	[ParentOccupation] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_YesParent] PRIMARY KEY CLUSTERED 
(
	[ParentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesPrivilege]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesPrivilege](
	[PrivilegeID] [int] IDENTITY(1,1) NOT NULL,
	[PrivilegeName] [nvarchar](100) NOT NULL,
	[PrivilegeDescription] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_YesPrivilege] PRIMARY KEY CLUSTERED 
(
	[PrivilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesSchool]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesSchool](
	[SchoolID] [int] IDENTITY(1,1) NOT NULL,
	[SchoolName] [nvarchar](200) NOT NULL,
	[SchoolAddress1] [text] NOT NULL,
	[SchoolAddress2] [text] NULL,
	[SchoolEstiblishmentYear] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_YesSchool] PRIMARY KEY CLUSTERED 
(
	[SchoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesState]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesState](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](100) NOT NULL,
	[StateDescription] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_YesState] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesStudent]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesStudent](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[StudentFirstName] [nvarchar](200) NOT NULL,
	[StudentMiddleName] [nvarchar](200) NULL,
	[StudentLastName] [nvarchar](200) NULL,
	[StudentRollNumber] [int] NOT NULL,
	[StudentDOB] [date] NULL,
	[StudentGender] [nchar](1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[SchoolID] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_YesStudent] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesStudentMarks]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesStudentMarks](
	[StudentMarksID] [int] NOT NULL,
	[StudentSubjectID] [int] NOT NULL,
	[ExamTypeID] [int] NOT NULL,
	[ObtainedMarks] [smallint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_YesStudentMarks] PRIMARY KEY CLUSTERED 
(
	[StudentMarksID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesStudentSubjectMap]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesStudentSubjectMap](
	[StudentSubjectID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_YesStudentSubjectMap] PRIMARY KEY CLUSTERED 
(
	[StudentSubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesSubject]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesSubject](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [nvarchar](100) NOT NULL,
	[SubjectMarks] [smallint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_YesSubject] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesUser]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](200) NULL,
	[UserPassword] [nvarchar](200) NULL,
	[FalseLoginCount] [smallint] NULL,
	[EmployeeID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_YesUser] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YesUserPrivilege]    Script Date: 2/1/2015 12:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YesUserPrivilege](
	[UserPrivilegeID] [int] IDENTITY(1,1) NOT NULL,
	[PrivilegeID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_YesUserPrivilege] PRIMARY KEY CLUSTERED 
(
	[UserPrivilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[YesCourse] ON 

INSERT [dbo].[YesCourse] ([CourseID], [CourseName], [CourseDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (1, N'Nursery ', N'Nursery ', NULL, NULL, NULL)
INSERT [dbo].[YesCourse] ([CourseID], [CourseName], [CourseDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (2, N'LKG', N'LKG', NULL, NULL, NULL)
INSERT [dbo].[YesCourse] ([CourseID], [CourseName], [CourseDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (3, N'UKG', N'UKG', NULL, NULL, NULL)
INSERT [dbo].[YesCourse] ([CourseID], [CourseName], [CourseDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (4, N'Class 1', N'Class 1', NULL, NULL, NULL)
INSERT [dbo].[YesCourse] ([CourseID], [CourseName], [CourseDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (5, N'Class 2', N'Class 2', NULL, NULL, NULL)
INSERT [dbo].[YesCourse] ([CourseID], [CourseName], [CourseDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (6, N'Class 3', N'Class 3', NULL, NULL, NULL)
INSERT [dbo].[YesCourse] ([CourseID], [CourseName], [CourseDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (7, N'Class 4', N'Class 4', NULL, NULL, NULL)
INSERT [dbo].[YesCourse] ([CourseID], [CourseName], [CourseDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (8, N'Class 5', N'Class 5', NULL, NULL, NULL)
INSERT [dbo].[YesCourse] ([CourseID], [CourseName], [CourseDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (9, N'Class 6', N'Class6', NULL, NULL, NULL)
INSERT [dbo].[YesCourse] ([CourseID], [CourseName], [CourseDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (10, N'Class 7', N'Class 7', NULL, NULL, NULL)
INSERT [dbo].[YesCourse] ([CourseID], [CourseName], [CourseDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (11, N'Class 8', N'Class 8', NULL, NULL, NULL)
INSERT [dbo].[YesCourse] ([CourseID], [CourseName], [CourseDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (12, N'Class 9', N'Class 9', NULL, NULL, NULL)
INSERT [dbo].[YesCourse] ([CourseID], [CourseName], [CourseDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (13, N'Class 10', N'Class 10', NULL, NULL, NULL)
INSERT [dbo].[YesCourse] ([CourseID], [CourseName], [CourseDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (14, N'Class 11', N'Class 11', NULL, NULL, NULL)
INSERT [dbo].[YesCourse] ([CourseID], [CourseName], [CourseDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (15, N'Class 12', N'Class 12', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[YesCourse] OFF
SET IDENTITY_INSERT [dbo].[YesDesignation] ON 

INSERT [dbo].[YesDesignation] ([DesignationID], [DesignationName], [DesignationDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (1, N'Manager', N'Manager', NULL, NULL, NULL)
INSERT [dbo].[YesDesignation] ([DesignationID], [DesignationName], [DesignationDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (2, N'Principal', N'Principal', NULL, NULL, NULL)
INSERT [dbo].[YesDesignation] ([DesignationID], [DesignationName], [DesignationDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (3, N'Teacher', N'Teacher', NULL, NULL, NULL)
INSERT [dbo].[YesDesignation] ([DesignationID], [DesignationName], [DesignationDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (4, N'Sr. Teacher', N'Sr. Teacher', NULL, NULL, NULL)
INSERT [dbo].[YesDesignation] ([DesignationID], [DesignationName], [DesignationDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (5, N'Lab Assistant', N'Lab Assistant', NULL, NULL, NULL)
INSERT [dbo].[YesDesignation] ([DesignationID], [DesignationName], [DesignationDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (6, N'Peon', N'Peon', NULL, NULL, NULL)
INSERT [dbo].[YesDesignation] ([DesignationID], [DesignationName], [DesignationDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (7, N'Gardner', N'Gardner', NULL, NULL, NULL)
INSERT [dbo].[YesDesignation] ([DesignationID], [DesignationName], [DesignationDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (8, N'Gatekeeper', N'Gatekeeper', NULL, NULL, NULL)
INSERT [dbo].[YesDesignation] ([DesignationID], [DesignationName], [DesignationDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (9, N'Security', N'Security', NULL, NULL, NULL)
INSERT [dbo].[YesDesignation] ([DesignationID], [DesignationName], [DesignationDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (10, N'Sports Teacher', N'Sports Teacher', NULL, NULL, NULL)
INSERT [dbo].[YesDesignation] ([DesignationID], [DesignationName], [DesignationDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (11, N'Discipline Manager', N'Discipline Manager', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[YesDesignation] OFF
SET IDENTITY_INSERT [dbo].[YesDistrict] ON 

INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (14, N'Anantapur', 3, N'Anantapur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (15, N'Chittoor', 3, N'Chittoor', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (16, N'East Godavari', 3, N'East Godavari', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (17, N'Guntur', 3, N'Guntur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (18, N'Krishna', 3, N'Krishna', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (19, N'Kurnool', 3, N'Kurnool', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (20, N'Prakasam', 3, N'Prakasam', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (21, N'Srikakulam', 3, N'Srikakulam', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (22, N'Sri Potti Sri Ramulu Nellore', 3, N'Sri Potti Sri Ramulu Nellore', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (23, N'Vishakhapatnam', 3, N'Vishakhapatnam', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (24, N'Vizianagaram', 3, N'Vizianagaram', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (25, N'West Godavari', 3, N'West Godavari', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (26, N'Cudappah', 3, N'Cudappah', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (27, N'Anjaw', 4, N'Anjaw', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (28, N'Changlang', 4, N'Changlang', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (29, N'East Siang', 4, N'East Siang', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (30, N'East Kameng', 4, N'East Kameng', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (31, N'Kurung Kumey', 4, N'Kurung Kumey', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (32, N'Lohit', 4, N'Lohit', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (33, N'Lower Dibang Valley', 4, N'Lower Dibang Valley', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (34, N'Lower Subansiri', 4, N'Lower Subansiri', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (35, N'Papum Pare', 4, N'Papum Pare', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (36, N'Tawang', 4, N'Tawang', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (37, N'Tirap', 4, N'Tirap', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (38, N'Dibang Valley', 4, N'Dibang Valley', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (39, N'Upper Siang', 4, N'Upper Siang', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (40, N'Upper Subansiri', 4, N'Upper Subansiri', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (41, N'West Kameng', 4, N'West Kameng', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (42, N'West Siang', 4, N'West Siang', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (43, N'Mushalpur', 5, N'Mushalpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (44, N'Barpeta', 5, N'Barpeta', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (45, N'Bongaigaon', 5, N'Bongaigaon', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (46, N'Cachar', 5, N'Cachar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (47, N'Chirang', 5, N'Chirang', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (48, N'Darrang', 5, N'Darrang', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (49, N'Dhemaji', 5, N'Dhemaji', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (50, N'Dima Hasao', 5, N'Dima Hasao', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (51, N'Dhubri', 5, N'Dhubri', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (52, N'Dibrugarh', 5, N'Dibrugarh', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (53, N'Goalpara', 5, N'Goalpara', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (54, N'Golaghat', 5, N'Golaghat', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (55, N'Hailakandi', 5, N'Hailakandi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (56, N'Jorhat', 5, N'Jorhat', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (57, N'Kamrup', 5, N'Kamrup', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (58, N'Kamrup Metropolitan', 5, N'Kamrup Metropolitan', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (59, N'Karbi Anglong', 5, N'Karbi Anglong', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (60, N'Karimganj', 5, N'Karimganj', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (61, N'Kokrajhar', 5, N'Kokrajhar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (62, N'Lakhimpur', 5, N'Lakhimpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (63, N'Morigaon', 5, N'Morigaon', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (64, N'Nagaon', 5, N'Nagaon', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (65, N'Nalbari', 5, N'Nalbari', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (66, N'Sivasagar', 5, N'Sivasagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (67, N'Sonitpur', 5, N'Sonitpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (68, N'Tinsukia', 5, N'Tinsukia', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (69, N'Udalguri', 5, N'Udalguri', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (70, N'Araria', 6, N'Araria', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (71, N'Arwal', 6, N'Arwal', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (72, N'Aurangabad', 6, N'Aurangabad', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (73, N'Banka', 6, N'Banka', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (74, N'Begusarai', 6, N'Begusarai', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (75, N'Bhagalpur', 6, N'Bhagalpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (76, N'Bhojpur', 6, N'Bhojpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (77, N'Buxar', 6, N'Buxar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (78, N'Darbhanga', 6, N'Darbhanga', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (79, N'East Champaran', 6, N'East Champaran', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (80, N'Gaya', 6, N'Gaya', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (81, N'Gopalganj', 6, N'Gopalganj', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (82, N'Jamui', 6, N'Jamui', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (83, N'Jehanabad', 6, N'Jehanabad', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (84, N'Kaimur', 6, N'Kaimur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (85, N'Katihar', 6, N'Katihar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (86, N'Khagaria', 6, N'Khagaria', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (87, N'Kishanganj', 6, N'Kishanganj', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (88, N'Lakhisarai', 6, N'Lakhisarai', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (89, N'Madhepura', 6, N'Madhepura', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (90, N'Madhubani', 6, N'Madhubani', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (91, N'Munger', 6, N'Munger', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (92, N'Muzaffarpur', 6, N'Muzaffarpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (93, N'Nalanda', 6, N'Nalanda', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (94, N'Nawada', 6, N'Nawada', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (95, N'Patna', 6, N'Patna', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (96, N'Purnia', 6, N'Purnia', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (97, N'Rohtas', 6, N'Rohtas', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (98, N'Saharsa', 6, N'Saharsa', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (99, N'Samastipur', 6, N'Samastipur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (100, N'Saran', 6, N'Saran', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (101, N'Sheikhpura', 6, N'Sheikhpura', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (102, N'Sheohar', 6, N'Sheohar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (103, N'Sitamarhi', 6, N'Sitamarhi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (104, N'Siwan', 6, N'Siwan', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (105, N'Supaul', 6, N'Supaul', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (106, N'Vaishali', 6, N'Vaishali', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (107, N'West Champaran', 6, N'West Champaran', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (108, N'Agra', 29, N'Agra', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (109, N'Aligarh', 29, N'Aligarh', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (110, N'Allahabad', 29, N'Allahabad', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (111, N'Ambedkar Nagar', 29, N'Ambedkar Nagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (112, N'Auraiya', 29, N'Auraiya', NULL)
GO
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (113, N'Azamgarh', 29, N'Azamgarh', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (114, N'Bagpat', 29, N'Bagpat', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (115, N'Bahraich', 29, N'Bahraich', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (116, N'Ballia', 29, N'Ballia', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (117, N'Balrampur', 29, N'Balrampur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (118, N'Banda', 29, N'Banda', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (119, N'Barabanki', 29, N'Barabanki', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (120, N'Bareilly', 29, N'Bareilly', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (121, N'Basti', 29, N'Basti', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (122, N'Bijnor', 29, N'Bijnor', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (123, N'Budaun', 29, N'Budaun', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (124, N'Bulandshahr', 29, N'Bulandshahr', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (125, N'Chandauli', 29, N'Chandauli', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (126, N'Amethi (Chhatrapati Shahuji Maharaj Nagar)[8]', 29, N'Amethi (Chhatrapati Shahuji Maharaj Nagar)[8]', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (127, N'Chitrakoot', 29, N'Chitrakoot', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (128, N'Deoria', 29, N'Deoria', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (129, N'Etah', 29, N'Etah', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (130, N'Etawah', 29, N'Etawah', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (131, N'Faizabad', 29, N'Faizabad', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (132, N'Farrukhabad', 29, N'Farrukhabad', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (133, N'Fatehpur', 29, N'Fatehpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (134, N'Firozabad', 29, N'Firozabad', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (135, N'Gautam Buddh Nagar', 29, N'Gautam Buddh Nagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (136, N'Ghaziabad', 29, N'Ghaziabad', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (137, N'Ghazipur', 29, N'Ghazipur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (138, N'Gonda', 29, N'Gonda', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (139, N'Gorakhpur', 29, N'Gorakhpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (140, N'Hamirpur', 29, N'Hamirpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (141, N'Hardoi', 29, N'Hardoi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (142, N'Hathras (Mahamaya Nagar)', 29, N'Hathras (Mahamaya Nagar)', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (143, N'Jalaun', 29, N'Jalaun', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (144, N'Jaunpur district', 29, N'Jaunpur district', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (145, N'Jhansi', 29, N'Jhansi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (146, N'Jyotiba Phule Nagar', 29, N'Jyotiba Phule Nagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (147, N'Kannauj', 29, N'Kannauj', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (148, N'Kanpur Dehat (Ramabai Nagar)', 29, N'Kanpur Dehat (Ramabai Nagar)', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (149, N'Kanpur Nagar', 29, N'Kanpur Nagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (150, N'Kanshi Ram Nagar', 29, N'Kanshi Ram Nagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (151, N'Kaushambi', 29, N'Kaushambi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (152, N'Kushinagar', 29, N'Kushinagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (153, N'Lakhimpur Kheri', 29, N'Lakhimpur Kheri', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (154, N'Lalitpur', 29, N'Lalitpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (155, N'Lucknow', 29, N'Lucknow', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (156, N'Maharajganj', 29, N'Maharajganj', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (157, N'Mahoba', 29, N'Mahoba', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (158, N'Mainpuri', 29, N'Mainpuri', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (159, N'Mathura', 29, N'Mathura', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (160, N'Mau', 29, N'Mau', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (161, N'Meerut', 29, N'Meerut', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (162, N'Mirzapur', 29, N'Mirzapur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (163, N'Moradabad', 29, N'Moradabad', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (164, N'Muzaffarnagar', 29, N'Muzaffarnagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (165, N'Panchsheel Nagar district (Hapur)', 29, N'Panchsheel Nagar district (Hapur)', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (166, N'Pilibhit', 29, N'Pilibhit', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (167, N'Pratapgarh', 29, N'Pratapgarh', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (168, N'Raebareli', 29, N'Raebareli', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (169, N'Rampur', 29, N'Rampur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (170, N'Saharanpur', 29, N'Saharanpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (171, N'Sambhal(Bheem Nagar)', 29, N'Sambhal(Bheem Nagar)', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (172, N'Sant Kabir Nagar', 29, N'Sant Kabir Nagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (173, N'Sant Ravidas Nagar', 29, N'Sant Ravidas Nagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (174, N'Shahjahanpur', 29, N'Shahjahanpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (175, N'Shamli', 29, N'Shamli', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (176, N'Shravasti', 29, N'Shravasti', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (177, N'Siddharthnagar', 29, N'Siddharthnagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (178, N'Sitapur', 29, N'Sitapur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (179, N'Sonbhadra', 29, N'Sonbhadra', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (180, N'Sultanpur', 29, N'Sultanpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (181, N'Unnao', 29, N'Unnao', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (182, N'Varanasi', 29, N'Varanasi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (183, N'Bastar', 7, N'Bastar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (184, N'Bijapur', 7, N'Bijapur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (185, N'Bilaspur', 7, N'Bilaspur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (186, N'Dantewada', 7, N'Dantewada', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (187, N'Dhamtari', 7, N'Dhamtari', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (188, N'Durg', 7, N'Durg', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (189, N'Jashpur', 7, N'Jashpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (190, N'Janjgir-Champa', 7, N'Janjgir-Champa', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (191, N'Korba', 7, N'Korba', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (192, N'Koriya', 7, N'Koriya', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (193, N'Kanker', 7, N'Kanker', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (194, N'Kabirdham (formerly Kawardha)', 7, N'Kabirdham (formerly Kawardha)', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (195, N'Mahasamund', 7, N'Mahasamund', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (196, N'Narayanpur', 7, N'Narayanpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (197, N'Raigarh', 7, N'Raigarh', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (198, N'Rajnandgaon', 7, N'Rajnandgaon', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (199, N'Raipur', 7, N'Raipur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (200, N'Surajpur', 7, N'Surajpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (201, N'North Goa', 8, N'North Goa', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (202, N'South Goa', 8, N'South Goa', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (203, N'Dadra and Nagar Haveli', 34, N'Dadra and Nagar Haveli', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (204, N'Daman', 35, N'Daman', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (205, N'Diu', 35, N'Diu', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (206, N'Central Delhi', 39, N'Central Delhi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (207, N'East Delhi', 39, N'East Delhi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (208, N'New Delhi', 39, N'New Delhi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (209, N'North Delhi', 39, N'North Delhi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (210, N'North East Delhi', 39, N'North East Delhi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (211, N'North West Delhi', 39, N'North West Delhi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (212, N'South Delhi', 39, N'South Delhi', NULL)
GO
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (213, N'South West Delhi', 39, N'South West Delhi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (214, N'West Delhi', 39, N'West Delhi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (215, N'Ahmedabad', 9, N'Ahmedabad', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (216, N'Amreli district', 9, N'Amreli district', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (217, N'Anand', 9, N'Anand', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (218, N'Aravalli', 9, N'Aravalli', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (219, N'Banaskantha', 9, N'Banaskantha', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (220, N'Bharuch', 9, N'Bharuch', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (221, N'Bhavnagar', 9, N'Bhavnagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (222, N'Dahod', 9, N'Dahod', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (223, N'Dang', 9, N'Dang', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (224, N'Gandhinagar', 9, N'Gandhinagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (225, N'Jamnagar', 9, N'Jamnagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (226, N'Junagadh', 9, N'Junagadh', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (227, N'Kutch', 9, N'Kutch', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (228, N'Kheda', 9, N'Kheda', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (229, N'Mehsana', 9, N'Mehsana', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (230, N'Narmada', 9, N'Narmada', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (231, N'Navsari', 9, N'Navsari', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (232, N'Patan', 9, N'Patan', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (233, N'Panchmahal', 9, N'Panchmahal', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (234, N'Porbandar', 9, N'Porbandar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (235, N'Rajkot', 9, N'Rajkot', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (236, N'Sabarkantha', 9, N'Sabarkantha', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (237, N'Surendranagar', 9, N'Surendranagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (238, N'Surat', 9, N'Surat', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (239, N'Tapi', 9, N'Tapi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (240, N'Vadodara', 9, N'Vadodara', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (241, N'Valsad', 9, N'Valsad', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (242, N'Ambala', 10, N'Ambala', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (243, N'Bhiwani', 10, N'Bhiwani', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (244, N'Faridabad', 10, N'Faridabad', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (245, N'Fatehabad', 10, N'Fatehabad', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (246, N'Gurgaon', 10, N'Gurgaon', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (247, N'Hissar', 10, N'Hissar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (248, N'Jhajjar', 10, N'Jhajjar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (249, N'Jind', 10, N'Jind', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (250, N'Karnal', 10, N'Karnal', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (251, N'Kaithal', 10, N'Kaithal', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (252, N'Kurukshetra', 10, N'Kurukshetra', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (253, N'Mahendragarh', 10, N'Mahendragarh', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (254, N'Mewat', 10, N'Mewat', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (255, N'Palwal', 10, N'Palwal', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (256, N'Panchkula', 10, N'Panchkula', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (257, N'Panipat', 10, N'Panipat', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (258, N'Rewari', 10, N'Rewari', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (259, N'Rohtak', 10, N'Rohtak', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (260, N'Sirsa', 10, N'Sirsa', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (261, N'Sonipat', 10, N'Sonipat', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (262, N'Yamuna Nagar', 10, N'Yamuna Nagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (263, N'Bilaspur', 11, N'Bilaspur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (264, N'Chamba', 11, N'Chamba', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (265, N'Hamirpur', 11, N'Hamirpur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (266, N'Kangra', 11, N'Kangra', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (267, N'Kinnaur', 11, N'Kinnaur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (268, N'Kullu', 11, N'Kullu', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (269, N'Lahaul and Spiti', 11, N'Lahaul and Spiti', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (270, N'Mandi', 11, N'Mandi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (271, N'Shimla', 11, N'Shimla', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (272, N'Sirmaur', 11, N'Sirmaur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (273, N'Solan', 11, N'Solan', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (274, N'Una', 11, N'Una', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (275, N'Anantnag', 12, N'Anantnag', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (276, N'Badgam', 12, N'Badgam', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (277, N'Bandipora', 12, N'Bandipora', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (278, N'Baramulla', 12, N'Baramulla', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (279, N'Doda', 12, N'Doda', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (280, N'Ganderbal', 12, N'Ganderbal', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (281, N'Jammu', 12, N'Jammu', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (282, N'Kargil', 12, N'Kargil', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (283, N'Kathua', 12, N'Kathua', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (284, N'Kishtwar', 12, N'Kishtwar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (285, N'Kupwara', 12, N'Kupwara', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (286, N'Kulgam', 12, N'Kulgam', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (287, N'Leh', 12, N'Leh', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (288, N'Poonch', 12, N'Poonch', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (289, N'Pulwama', 12, N'Pulwama', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (290, N'Rajouri', 12, N'Rajouri', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (291, N'Ramban', 12, N'Ramban', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (292, N'Reasi', 12, N'Reasi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (293, N'Samba', 12, N'Samba', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (294, N'Shopian', 12, N'Shopian', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (295, N'Srinagar', 12, N'Srinagar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (296, N'Udhampur', 12, N'Udhampur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (297, N'Bokaro', 13, N'Bokaro', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (298, N'Chatra', 13, N'Chatra', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (299, N'Deoghar', 13, N'Deoghar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (300, N'Dhanbad', 13, N'Dhanbad', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (301, N'Dumka', 13, N'Dumka', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (302, N'East Singhbhum', 13, N'East Singhbhum', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (303, N'Garhwa', 13, N'Garhwa', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (304, N'Giridih', 13, N'Giridih', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (305, N'Godda', 13, N'Godda', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (306, N'Gumla', 13, N'Gumla', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (307, N'Hazaribag', 13, N'Hazaribag', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (308, N'Jamtara', 13, N'Jamtara', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (309, N'Khunti', 13, N'Khunti', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (310, N'Koderma', 13, N'Koderma', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (311, N'Latehar', 13, N'Latehar', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (312, N'Lohardaga', 13, N'Lohardaga', NULL)
GO
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (313, N'Pakur', 13, N'Pakur', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (314, N'Palamu', 13, N'Palamu', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (315, N'Ramgarh', 13, N'Ramgarh', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (316, N'Ranchi', 13, N'Ranchi', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (317, N'Sahibganj', 13, N'Sahibganj', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (318, N'Seraikela Kharsawan', 13, N'Seraikela Kharsawan', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (319, N'Simdega', 13, N'Simdega', NULL)
INSERT [dbo].[YesDistrict] ([DistrictID], [DisctrictName], [StateID], [DisctrictDescription], [IsActive]) VALUES (320, N'West Singhbhum', 13, N'West Singhbhum', NULL)
SET IDENTITY_INSERT [dbo].[YesDistrict] OFF
SET IDENTITY_INSERT [dbo].[YesEmployee] ON 

INSERT [dbo].[YesEmployee] ([EmployeeID], [EmployeeFirstName], [EmployeeMiddleName], [EmployeeLastName], [EmployeeMobileNo], [EmployeeAlternateMobileNo], [EmployeeEmailID], [EmployeeAddress1], [EmployeeAddress2], [EmployeeCity], [StateID], [DistrictID], [EmployeePinCode], [DesignationID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (1, N'Arun', N'Kumar', N'Kushwaha', N'9452479733', NULL, N'arunkushwaha@gmail.com', N'Vill+Post-Prasad pur up', N'Chawni line', N'Ghazipur', 29, 139, 123456, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[YesEmployee] ([EmployeeID], [EmployeeFirstName], [EmployeeMiddleName], [EmployeeLastName], [EmployeeMobileNo], [EmployeeAlternateMobileNo], [EmployeeEmailID], [EmployeeAddress1], [EmployeeAddress2], [EmployeeCity], [StateID], [DistrictID], [EmployeePinCode], [DesignationID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (3, N'Surya', N'Prakash', N'Singh', N'9818249888', NULL, N'jrsurya@gmail.com', N'Vill-Chitter ka dera, Post-Bareji', N'Bhadaura-123', N'Bhadaura', 29, 137, 123423, 2, 1, NULL, NULL, NULL)
INSERT [dbo].[YesEmployee] ([EmployeeID], [EmployeeFirstName], [EmployeeMiddleName], [EmployeeLastName], [EmployeeMobileNo], [EmployeeAlternateMobileNo], [EmployeeEmailID], [EmployeeAddress1], [EmployeeAddress2], [EmployeeCity], [StateID], [DistrictID], [EmployeePinCode], [DesignationID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (4, N'Ajay', NULL, N'Kushwaha', N'9898989898', NULL, N'ajay.kushwaha@gmail.com', N'Vill+Post Prasad pur', N'Chawni line', N'Ghazipur', 29, 137, 989898, 3, 1, NULL, NULL, NULL)
INSERT [dbo].[YesEmployee] ([EmployeeID], [EmployeeFirstName], [EmployeeMiddleName], [EmployeeLastName], [EmployeeMobileNo], [EmployeeAlternateMobileNo], [EmployeeEmailID], [EmployeeAddress1], [EmployeeAddress2], [EmployeeCity], [StateID], [DistrictID], [EmployeePinCode], [DesignationID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (5, N'Sunil', N'Kumar', N'Maurya', N'9765654565', NULL, N'sunil@gmail.com', N'Kanharbag', NULL, N'Patna', 6, 70, 123456, 4, 1, NULL, NULL, NULL)
INSERT [dbo].[YesEmployee] ([EmployeeID], [EmployeeFirstName], [EmployeeMiddleName], [EmployeeLastName], [EmployeeMobileNo], [EmployeeAlternateMobileNo], [EmployeeEmailID], [EmployeeAddress1], [EmployeeAddress2], [EmployeeCity], [StateID], [DistrictID], [EmployeePinCode], [DesignationID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (6, N'Amit', NULL, N'Khatri', N'9891245675', NULL, N'amit@yahoo.co.in', N'Bhao gali, Near cort', NULL, NULL, 29, 120, NULL, 5, 1, NULL, NULL, NULL)
INSERT [dbo].[YesEmployee] ([EmployeeID], [EmployeeFirstName], [EmployeeMiddleName], [EmployeeLastName], [EmployeeMobileNo], [EmployeeAlternateMobileNo], [EmployeeEmailID], [EmployeeAddress1], [EmployeeAddress2], [EmployeeCity], [StateID], [DistrictID], [EmployeePinCode], [DesignationID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (7, N'Sanjay', NULL, N'Shukla', N'9898989899', NULL, N'sanjay@yahoo.co.in', N'Post-office gali.', NULL, NULL, 6, 80, 232328, 2, 1, NULL, NULL, NULL)
INSERT [dbo].[YesEmployee] ([EmployeeID], [EmployeeFirstName], [EmployeeMiddleName], [EmployeeLastName], [EmployeeMobileNo], [EmployeeAlternateMobileNo], [EmployeeEmailID], [EmployeeAddress1], [EmployeeAddress2], [EmployeeCity], [StateID], [DistrictID], [EmployeePinCode], [DesignationID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (9, N'Mehtab', NULL, N'Ali', N'8787676778', NULL, N'mehtab.ali@cygrp.com', N'Gali No-5/10,
Maujpur', N'Shahadra,Delhi 91', NULL, 39, 207, 200331, 3, 1, NULL, NULL, NULL)
INSERT [dbo].[YesEmployee] ([EmployeeID], [EmployeeFirstName], [EmployeeMiddleName], [EmployeeLastName], [EmployeeMobileNo], [EmployeeAlternateMobileNo], [EmployeeEmailID], [EmployeeAddress1], [EmployeeAddress2], [EmployeeCity], [StateID], [DistrictID], [EmployeePinCode], [DesignationID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (11, N'Anita', NULL, N'Kumari', N'9509857633', NULL, N'anita.kumari@gmail.com', N'Muradabad, Takiya', N'Sasaram', NULL, 6, 97, NULL, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[YesEmployee] ([EmployeeID], [EmployeeFirstName], [EmployeeMiddleName], [EmployeeLastName], [EmployeeMobileNo], [EmployeeAlternateMobileNo], [EmployeeEmailID], [EmployeeAddress1], [EmployeeAddress2], [EmployeeCity], [StateID], [DistrictID], [EmployeePinCode], [DesignationID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (12, N'Raj', NULL, N'Kumar', N'5676543456', NULL, NULL, N'RBS College, Verma colony', NULL, NULL, 29, 116, NULL, 4, 1, NULL, NULL, NULL)
INSERT [dbo].[YesEmployee] ([EmployeeID], [EmployeeFirstName], [EmployeeMiddleName], [EmployeeLastName], [EmployeeMobileNo], [EmployeeAlternateMobileNo], [EmployeeEmailID], [EmployeeAddress1], [EmployeeAddress2], [EmployeeCity], [StateID], [DistrictID], [EmployeePinCode], [DesignationID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (13, N'Dheeraj', NULL, N'Vyas', N'7673646628', NULL, N'dheeraj.vyas@cygrp.com', N'Karnal road, Samwat', NULL, NULL, 10, 250, NULL, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[YesEmployee] ([EmployeeID], [EmployeeFirstName], [EmployeeMiddleName], [EmployeeLastName], [EmployeeMobileNo], [EmployeeAlternateMobileNo], [EmployeeEmailID], [EmployeeAddress1], [EmployeeAddress2], [EmployeeCity], [StateID], [DistrictID], [EmployeePinCode], [DesignationID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (14, N'Peter', NULL, N'Shermeta', N'9887467634', NULL, N'peter.Shermeta@assure.com', N'Margao, Post office', NULL, NULL, 8, 202, NULL, 11, 1, NULL, NULL, NULL)
INSERT [dbo].[YesEmployee] ([EmployeeID], [EmployeeFirstName], [EmployeeMiddleName], [EmployeeLastName], [EmployeeMobileNo], [EmployeeAlternateMobileNo], [EmployeeEmailID], [EmployeeAddress1], [EmployeeAddress2], [EmployeeCity], [StateID], [DistrictID], [EmployeePinCode], [DesignationID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (15, N'Mugdha', NULL, N'Singh', N'9898989898', NULL, N'mugdha.sing@yahoo.com', N'Jindal Estate, NH24', NULL, NULL, 29, 136, 302201, 2, 1, NULL, NULL, NULL)
INSERT [dbo].[YesEmployee] ([EmployeeID], [EmployeeFirstName], [EmployeeMiddleName], [EmployeeLastName], [EmployeeMobileNo], [EmployeeAlternateMobileNo], [EmployeeEmailID], [EmployeeAddress1], [EmployeeAddress2], [EmployeeCity], [StateID], [DistrictID], [EmployeePinCode], [DesignationID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (16, N'Shriyanshi', NULL, N'Srivastva', N'8534667463', NULL, N'sri.vastav@hotmail.com', N'F-55/6, Golkund, Near gorakhdham temple', N'Gorakhpur UP', NULL, 29, 139, 878736, 3, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[YesEmployee] OFF
SET IDENTITY_INSERT [dbo].[YesParent] ON 

INSERT [dbo].[YesParent] ([ParentID], [ParentFirstName], [ParentMiddleName], [ParentLastName], [ParentMobileNo], [ParentAlternateMobileNo], [ParentEmailID], [ParentAddress1], [ParentAddress2], [ParentCity], [DistrictID], [StateID], [ParentPinCode], [ParentOccupation], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (2, N'Ashutosh', N'Singh', N'Kushwaha', 9891459083, NULL, N'ashutosh.kuswaha@gmail.com', N'B-21B, Kalyan Kung', N'Barola, Sector-49', N'Noida', 20, 29, 201301, N'Professional', NULL, NULL, NULL)
INSERT [dbo].[YesParent] ([ParentID], [ParentFirstName], [ParentMiddleName], [ParentLastName], [ParentMobileNo], [ParentAlternateMobileNo], [ParentEmailID], [ParentAddress1], [ParentAddress2], [ParentCity], [DistrictID], [StateID], [ParentPinCode], [ParentOccupation], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (3, N'Surya', N'Prakash', N'Singh', 9818249888, NULL, N'jrsurya23@gmail.com', N'143, RailVihar', N'Sector-33 , Noida', N'Noida', 21, 25, 201301, N'Professional', NULL, NULL, NULL)
INSERT [dbo].[YesParent] ([ParentID], [ParentFirstName], [ParentMiddleName], [ParentLastName], [ParentMobileNo], [ParentAlternateMobileNo], [ParentEmailID], [ParentAddress1], [ParentAddress2], [ParentCity], [DistrictID], [StateID], [ParentPinCode], [ParentOccupation], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (4, N'Abhay', N'Srivastava', NULL, 8789876633, NULL, N'abhay.cygrp.com', N'A/23-40, Sharimarbag Ext.', N'Shahadra, Delhi', N'Delhi', 30, 20, 100092, NULL, NULL, NULL, NULL)
INSERT [dbo].[YesParent] ([ParentID], [ParentFirstName], [ParentMiddleName], [ParentLastName], [ParentMobileNo], [ParentAlternateMobileNo], [ParentEmailID], [ParentAddress1], [ParentAddress2], [ParentCity], [DistrictID], [StateID], [ParentPinCode], [ParentOccupation], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (5, N'Kailash', NULL, N'Singh', 9891459083, 0, NULL, N'B-45/232, Alam Bag, Aligarh', NULL, NULL, 109, 29, 123123, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[YesParent] OFF
SET IDENTITY_INSERT [dbo].[YesPrivilege] ON 

INSERT [dbo].[YesPrivilege] ([PrivilegeID], [PrivilegeName], [PrivilegeDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (1, N'Admin', N'Administrator', NULL, NULL, NULL)
INSERT [dbo].[YesPrivilege] ([PrivilegeID], [PrivilegeName], [PrivilegeDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (2, N'Admission', N'Admission Management', NULL, NULL, NULL)
INSERT [dbo].[YesPrivilege] ([PrivilegeID], [PrivilegeName], [PrivilegeDescription], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (3, N'Employee Access', N'Employee Access', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[YesPrivilege] OFF
SET IDENTITY_INSERT [dbo].[YesSchool] ON 

INSERT [dbo].[YesSchool] ([SchoolID], [SchoolName], [SchoolAddress1], [SchoolAddress2], [SchoolEstiblishmentYear], [IsActive]) VALUES (1, N'Bharti Vidya peeth', N'Sector 24', N'Noida, U.P', 2000, NULL)
INSERT [dbo].[YesSchool] ([SchoolID], [SchoolName], [SchoolAddress1], [SchoolAddress2], [SchoolEstiblishmentYear], [IsActive]) VALUES (2, N'Shri Krishna Inter College', N'Derghawan, Reotipur', N'Ghazipur, U.P', 1984, NULL)
SET IDENTITY_INSERT [dbo].[YesSchool] OFF
SET IDENTITY_INSERT [dbo].[YesState] ON 

INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (3, N'Andhra Pradesh', N'Andhra Pradesh')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (4, N'Arunachal Pradesh', N'Arunachal Pradesh')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (5, N'Assam', N'Assam')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (6, N'Bihar', N'Bihar')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (7, N'Chhattisgarh', N'Chhattisgarh')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (8, N'Goa', N'Goa')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (9, N'Gujarat', N'Gujarat')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (10, N'Haryana', N'Haryana')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (11, N'Himachal Pradesh', N'Himachal Pradesh')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (12, N'Jammu and Kashmir', N'Jammu and Kashmir')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (13, N'Jharkhand', N'Jharkhand')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (14, N'Karnataka', N'Karnataka')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (15, N'Kerala', N'Kerala')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (16, N'Madhya Pradesh', N'Madhya Pradesh')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (17, N'Maharashtra', N'Maharashtra')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (18, N'Manipur', N'Manipur')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (19, N'Meghalaya', N'Meghalaya')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (20, N'Mizoram', N'Mizoram')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (21, N'Nagaland', N'Nagaland')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (22, N'Odisha', N'Odisha')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (23, N'Punjab', N'Punjab')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (24, N'Rajasthan', N'Rajasthan')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (25, N'Sikkim', N'Sikkim')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (26, N'Tamil Nadu', N'Tamil Nadu')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (27, N'Telangana', N'Telangana')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (28, N'Tripura', N'Tripura')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (29, N'Uttar Pradesh', N'Uttar Pradesh')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (30, N'Uttarakhand', N'Uttarakhand')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (31, N'West Bengal', N'West Bengal')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (32, N'Andaman and Nicobar', N'Andaman and Nicobar')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (33, N'Chandigarh', N'Chandigarh')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (34, N'Dadra and Nagar Haveli', N'Dadra and Nagar Haveli')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (35, N'Daman and Diu', N'Daman and Diu')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (36, N'Lakshadweep', N'Lakshadweep')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (37, N'National Capital Territory of Delhi', N'National Capital Territory of Delhi')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (38, N'Puducherry', N'Puducherry')
INSERT [dbo].[YesState] ([StateID], [StateName], [StateDescription]) VALUES (39, N'Delhi', N'Delhi')
SET IDENTITY_INSERT [dbo].[YesState] OFF
SET IDENTITY_INSERT [dbo].[YesStudent] ON 

INSERT [dbo].[YesStudent] ([StudentID], [StudentFirstName], [StudentMiddleName], [StudentLastName], [StudentRollNumber], [StudentDOB], [StudentGender], [ParentID], [CourseID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (1, N'Mugdha', N'Singh', NULL, 11, CAST(0x69350B00 AS Date), N'F', 2, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[YesStudent] ([StudentID], [StudentFirstName], [StudentMiddleName], [StudentLastName], [StudentRollNumber], [StudentDOB], [StudentGender], [ParentID], [CourseID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (3, N'Navya', N'Singh', NULL, 12, CAST(0xD3380B00 AS Date), N'F', 3, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[YesStudent] ([StudentID], [StudentFirstName], [StudentMiddleName], [StudentLastName], [StudentRollNumber], [StudentDOB], [StudentGender], [ParentID], [CourseID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (4, N'Kunal', N'Srivastava', NULL, 13, CAST(0x1D250B00 AS Date), N'M', 4, 13, 1, NULL, NULL, NULL)
INSERT [dbo].[YesStudent] ([StudentID], [StudentFirstName], [StudentMiddleName], [StudentLastName], [StudentRollNumber], [StudentDOB], [StudentGender], [ParentID], [CourseID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (6, N'Shantanu', N'Srivastava', NULL, 14, CAST(0x722C0B00 AS Date), N'M', 4, 7, 1, NULL, NULL, NULL)
INSERT [dbo].[YesStudent] ([StudentID], [StudentFirstName], [StudentMiddleName], [StudentLastName], [StudentRollNumber], [StudentDOB], [StudentGender], [ParentID], [CourseID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (7, N'Arti', N'Singh', NULL, 15, CAST(0x292F0B00 AS Date), N'F', 3, 5, 1, NULL, NULL, NULL)
INSERT [dbo].[YesStudent] ([StudentID], [StudentFirstName], [StudentMiddleName], [StudentLastName], [StudentRollNumber], [StudentDOB], [StudentGender], [ParentID], [CourseID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (8, N'Mridul', N'Singh', NULL, 16, CAST(0xDC2F0B00 AS Date), N'M', 2, 6, 1, NULL, NULL, NULL)
INSERT [dbo].[YesStudent] ([StudentID], [StudentFirstName], [StudentMiddleName], [StudentLastName], [StudentRollNumber], [StudentDOB], [StudentGender], [ParentID], [CourseID], [SchoolID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (9, N'Abhimanyu', NULL, N'Singh', 0, CAST(0x00000000 AS Date), N' ', 5, 11, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[YesStudent] OFF
SET IDENTITY_INSERT [dbo].[YesUser] ON 

INSERT [dbo].[YesUser] ([UserID], [UserName], [UserPassword], [FalseLoginCount], [EmployeeID], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (1, N'arun', N'arun123', 0, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[YesUser] OFF
ALTER TABLE [dbo].[YesCourse] ADD  CONSTRAINT [DF_YesCourse_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesCourseFee] ADD  CONSTRAINT [DF_YesCourseFee_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesDesignation] ADD  CONSTRAINT [DF_YesDesignation_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesDistrict] ADD  CONSTRAINT [DF_YesDistrict_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesEmployee] ADD  CONSTRAINT [DF_YesEmployee_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesExamType] ADD  CONSTRAINT [DF_YesExamType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[YesExamType] ADD  CONSTRAINT [DF_YesExamType_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[YesExamType] ADD  CONSTRAINT [DF_YesExamType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesFee] ADD  CONSTRAINT [DF_YesFee_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesParent] ADD  CONSTRAINT [DF_YesParent_CreatedDate]  DEFAULT (((1)/(31))/(2015)) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[YesParent] ADD  CONSTRAINT [DF_YesParent_ModifiedDate]  DEFAULT (((1)/(31))/(2015)) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[YesParent] ADD  CONSTRAINT [DF_YesParent_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesPrivilege] ADD  CONSTRAINT [DF_YesPrivilege_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesSchool] ADD  CONSTRAINT [DF_YesSchool_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesStudent] ADD  CONSTRAINT [DF_YesStudent_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesStudentMarks] ADD  CONSTRAINT [DF_YesStudentMarks_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[YesStudentMarks] ADD  CONSTRAINT [DF_YesStudentMarks_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[YesStudentMarks] ADD  CONSTRAINT [DF_YesStudentMarks_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesStudentSubjectMap] ADD  CONSTRAINT [DF_YesStudentSubjectMap_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesSubject] ADD  CONSTRAINT [DF_YesSubject_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesUser] ADD  CONSTRAINT [DF_YesUser_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesUserPrivilege] ADD  CONSTRAINT [DF_YesUserPrivilege_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[YesCourseFee]  WITH CHECK ADD  CONSTRAINT [FK_YesCourseFee_YesCourse] FOREIGN KEY([CourseID])
REFERENCES [dbo].[YesCourse] ([CourseID])
GO
ALTER TABLE [dbo].[YesCourseFee] CHECK CONSTRAINT [FK_YesCourseFee_YesCourse]
GO
ALTER TABLE [dbo].[YesCourseFee]  WITH CHECK ADD  CONSTRAINT [FK_YesCourseFee_YesFee] FOREIGN KEY([FeeID])
REFERENCES [dbo].[YesFee] ([FeeID])
GO
ALTER TABLE [dbo].[YesCourseFee] CHECK CONSTRAINT [FK_YesCourseFee_YesFee]
GO
ALTER TABLE [dbo].[YesDistrict]  WITH CHECK ADD  CONSTRAINT [FK_YesDistrict_YesState] FOREIGN KEY([StateID])
REFERENCES [dbo].[YesState] ([StateID])
GO
ALTER TABLE [dbo].[YesDistrict] CHECK CONSTRAINT [FK_YesDistrict_YesState]
GO
ALTER TABLE [dbo].[YesEmployee]  WITH CHECK ADD  CONSTRAINT [FK_YesEmployee_YesDesignation] FOREIGN KEY([DesignationID])
REFERENCES [dbo].[YesDesignation] ([DesignationID])
GO
ALTER TABLE [dbo].[YesEmployee] CHECK CONSTRAINT [FK_YesEmployee_YesDesignation]
GO
ALTER TABLE [dbo].[YesEmployee]  WITH CHECK ADD  CONSTRAINT [FK_YesEmployee_YesDistrict] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[YesDistrict] ([DistrictID])
GO
ALTER TABLE [dbo].[YesEmployee] CHECK CONSTRAINT [FK_YesEmployee_YesDistrict]
GO
ALTER TABLE [dbo].[YesEmployee]  WITH CHECK ADD  CONSTRAINT [FK_YesEmployee_YesSchool] FOREIGN KEY([SchoolID])
REFERENCES [dbo].[YesSchool] ([SchoolID])
GO
ALTER TABLE [dbo].[YesEmployee] CHECK CONSTRAINT [FK_YesEmployee_YesSchool]
GO
ALTER TABLE [dbo].[YesParent]  WITH CHECK ADD  CONSTRAINT [FK_YesParent_YesDistrict] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[YesDistrict] ([DistrictID])
GO
ALTER TABLE [dbo].[YesParent] CHECK CONSTRAINT [FK_YesParent_YesDistrict]
GO
ALTER TABLE [dbo].[YesStudent]  WITH CHECK ADD  CONSTRAINT [FK_YesStudent_YesCourse] FOREIGN KEY([CourseID])
REFERENCES [dbo].[YesCourse] ([CourseID])
GO
ALTER TABLE [dbo].[YesStudent] CHECK CONSTRAINT [FK_YesStudent_YesCourse]
GO
ALTER TABLE [dbo].[YesStudent]  WITH CHECK ADD  CONSTRAINT [FK_YesStudent_YesParent] FOREIGN KEY([ParentID])
REFERENCES [dbo].[YesParent] ([ParentID])
GO
ALTER TABLE [dbo].[YesStudent] CHECK CONSTRAINT [FK_YesStudent_YesParent]
GO
ALTER TABLE [dbo].[YesStudent]  WITH CHECK ADD  CONSTRAINT [FK_YesStudent_YesSchool] FOREIGN KEY([SchoolID])
REFERENCES [dbo].[YesSchool] ([SchoolID])
GO
ALTER TABLE [dbo].[YesStudent] CHECK CONSTRAINT [FK_YesStudent_YesSchool]
GO
ALTER TABLE [dbo].[YesStudentMarks]  WITH CHECK ADD  CONSTRAINT [FK_YesStudentMarks_YesExamType] FOREIGN KEY([ExamTypeID])
REFERENCES [dbo].[YesExamType] ([ExamTypeID])
GO
ALTER TABLE [dbo].[YesStudentMarks] CHECK CONSTRAINT [FK_YesStudentMarks_YesExamType]
GO
ALTER TABLE [dbo].[YesStudentMarks]  WITH CHECK ADD  CONSTRAINT [FK_YesStudentMarks_YesStudentSubjectMap] FOREIGN KEY([StudentSubjectID])
REFERENCES [dbo].[YesStudentSubjectMap] ([StudentSubjectID])
GO
ALTER TABLE [dbo].[YesStudentMarks] CHECK CONSTRAINT [FK_YesStudentMarks_YesStudentSubjectMap]
GO
ALTER TABLE [dbo].[YesStudentSubjectMap]  WITH CHECK ADD  CONSTRAINT [FK_YesStudentSubjectMap_YesStudent] FOREIGN KEY([StudentID])
REFERENCES [dbo].[YesStudent] ([StudentID])
GO
ALTER TABLE [dbo].[YesStudentSubjectMap] CHECK CONSTRAINT [FK_YesStudentSubjectMap_YesStudent]
GO
ALTER TABLE [dbo].[YesStudentSubjectMap]  WITH CHECK ADD  CONSTRAINT [FK_YesStudentSubjectMap_YesSubject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[YesSubject] ([SubjectID])
GO
ALTER TABLE [dbo].[YesStudentSubjectMap] CHECK CONSTRAINT [FK_YesStudentSubjectMap_YesSubject]
GO
ALTER TABLE [dbo].[YesUser]  WITH CHECK ADD  CONSTRAINT [FK_YesUser_YesEmployee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[YesEmployee] ([EmployeeID])
GO
ALTER TABLE [dbo].[YesUser] CHECK CONSTRAINT [FK_YesUser_YesEmployee]
GO
ALTER TABLE [dbo].[YesUserPrivilege]  WITH CHECK ADD  CONSTRAINT [FK_YesUserPrivilege_YesPrivilege] FOREIGN KEY([PrivilegeID])
REFERENCES [dbo].[YesPrivilege] ([PrivilegeID])
GO
ALTER TABLE [dbo].[YesUserPrivilege] CHECK CONSTRAINT [FK_YesUserPrivilege_YesPrivilege]
GO
ALTER TABLE [dbo].[YesUserPrivilege]  WITH CHECK ADD  CONSTRAINT [FK_YesUserPrivilege_YesUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[YesUser] ([UserID])
GO
ALTER TABLE [dbo].[YesUserPrivilege] CHECK CONSTRAINT [FK_YesUserPrivilege_YesUser]
GO
USE [master]
GO
ALTER DATABASE [YES] SET  READ_WRITE 
GO
