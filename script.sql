USE [master]
GO
/****** Object:  Database [US_TimesheetPortal]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE DATABASE [US_TimesheetPortal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'US_TimesheetPortal', FILENAME = N'E:\SQLData\US_TimesheetPortal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'US_TimesheetPortal_log', FILENAME = N'E:\SQLLog\US_TimesheetPortal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [US_TimesheetPortal] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [US_TimesheetPortal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [US_TimesheetPortal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET ARITHABORT OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [US_TimesheetPortal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [US_TimesheetPortal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [US_TimesheetPortal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [US_TimesheetPortal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [US_TimesheetPortal] SET  MULTI_USER 
GO
ALTER DATABASE [US_TimesheetPortal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [US_TimesheetPortal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [US_TimesheetPortal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [US_TimesheetPortal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [US_TimesheetPortal] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'US_TimesheetPortal', N'ON'
GO
ALTER DATABASE [US_TimesheetPortal] SET QUERY_STORE = OFF
GO
USE [US_TimesheetPortal]
GO
/****** Object:  User [GOEVO\SVC_TSPortal_DEV]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE USER [GOEVO\SVC_TSPortal_DEV] FOR LOGIN [GOEVO\SVC_TSPortal_DEV] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [GOEVO\SVC_SQL_Compare]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE USER [GOEVO\SVC_SQL_Compare] FOR LOGIN [GOEVO\SVC_SQL_Compare] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [GOEVO\srvadmin]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE USER [GOEVO\srvadmin] FOR LOGIN [GOEVO\srvadmin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [GOEVO\SG-US007-DEV-Users]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE USER [GOEVO\SG-US007-DEV-Users] FOR LOGIN [GOEVO\SG-US007-DEV-Users]
GO
/****** Object:  User [GOEVO\SG-DataManagement-Reporting]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE USER [GOEVO\SG-DataManagement-Reporting] FOR LOGIN [GOEVO\SG-DataManagement-Reporting]
GO
/****** Object:  User [GOEVO\SG_InformationTechnology_Development]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE USER [GOEVO\SG_InformationTechnology_Development] FOR LOGIN [GOEVO\SG_InformationTechnology_Development]
GO
/****** Object:  User [GOEVO\SG_Information_Technology_Quality_Assurance]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE USER [GOEVO\SG_Information_Technology_Quality_Assurance] FOR LOGIN [GOEVO\SG_Information_Technology_Quality_Assurance]
GO
/****** Object:  User [GOEVO\RMAgentDEV]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE USER [GOEVO\RMAgentDEV] FOR LOGIN [GOEVO\RMAgentDEV] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [GOEVO\RMAgent]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE USER [GOEVO\RMAgent] FOR LOGIN [GOEVO\RMAgent] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [GOEVO\Paul.Chen]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE USER [GOEVO\Paul.Chen] FOR LOGIN [GOEVO\Paul.Chen] WITH DEFAULT_SCHEMA=[GOEVO\Paul.Chen]
GO
/****** Object:  User [GOEVO\MX-ALL-Database-Developer]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE USER [GOEVO\MX-ALL-Database-Developer] FOR LOGIN [GOEVO\MX-ALL-Database-Developer]
GO
/****** Object:  User [GOEVO\itdev-china]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE USER [GOEVO\itdev-china] FOR LOGIN [GOEVO\itdev-china]
GO
/****** Object:  User [GOEVO\ITDEV]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE USER [GOEVO\ITDEV] FOR LOGIN [GOEVO\ITDEV]
GO
/****** Object:  User [GOEVO\DWUtility_SQL2_Dev]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE USER [GOEVO\DWUtility_SQL2_Dev] FOR LOGIN [GOEVO\DWUtility_SQL2_Dev] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_CUSTOMROLE_TimesheetPortal]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE ROLE [db_CUSTOMROLE_TimesheetPortal]
GO
/****** Object:  DatabaseRole [db_CUSTOMROLE_SQL_Compare]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE ROLE [db_CUSTOMROLE_SQL_Compare]
GO
/****** Object:  DatabaseRole [db_CUSTOMROLE_ReportingAnalyst]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE ROLE [db_CUSTOMROLE_ReportingAnalyst]
GO
/****** Object:  DatabaseRole [db_CUSTOMROLE_ReleaseManagement]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE ROLE [db_CUSTOMROLE_ReleaseManagement]
GO
/****** Object:  DatabaseRole [db_CUSTOMROLE_QA]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE ROLE [db_CUSTOMROLE_QA]
GO
/****** Object:  DatabaseRole [db_CUSTOMROLE_ObjectChangeReport]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE ROLE [db_CUSTOMROLE_ObjectChangeReport]
GO
/****** Object:  DatabaseRole [db_CUSTOMROLE_Development]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE ROLE [db_CUSTOMROLE_Development]
GO
ALTER ROLE [db_CUSTOMROLE_TimesheetPortal] ADD MEMBER [GOEVO\SVC_TSPortal_DEV]
GO
ALTER ROLE [db_CUSTOMROLE_SQL_Compare] ADD MEMBER [GOEVO\SVC_SQL_Compare]
GO
ALTER ROLE [db_CUSTOMROLE_Development] ADD MEMBER [GOEVO\SG-US007-DEV-Users]
GO
ALTER ROLE [db_CUSTOMROLE_ReportingAnalyst] ADD MEMBER [GOEVO\SG-DataManagement-Reporting]
GO
ALTER ROLE [db_CUSTOMROLE_Development] ADD MEMBER [GOEVO\SG_InformationTechnology_Development]
GO
ALTER ROLE [db_CUSTOMROLE_QA] ADD MEMBER [GOEVO\SG_Information_Technology_Quality_Assurance]
GO
ALTER ROLE [db_CUSTOMROLE_ReleaseManagement] ADD MEMBER [GOEVO\RMAgentDEV]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [GOEVO\RMAgentDEV]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [GOEVO\RMAgentDEV]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [GOEVO\RMAgentDEV]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [GOEVO\RMAgentDEV]
GO
ALTER ROLE [db_datareader] ADD MEMBER [GOEVO\RMAgentDEV]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [GOEVO\RMAgentDEV]
GO
ALTER ROLE [db_CUSTOMROLE_ReleaseManagement] ADD MEMBER [GOEVO\RMAgent]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [GOEVO\RMAgent]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [GOEVO\RMAgent]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [GOEVO\RMAgent]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [GOEVO\RMAgent]
GO
ALTER ROLE [db_datareader] ADD MEMBER [GOEVO\RMAgent]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [GOEVO\RMAgent]
GO
ALTER ROLE [db_CUSTOMROLE_Development] ADD MEMBER [GOEVO\MX-ALL-Database-Developer]
GO
ALTER ROLE [db_owner] ADD MEMBER [GOEVO\itdev-china]
GO
ALTER ROLE [db_owner] ADD MEMBER [GOEVO\ITDEV]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [GOEVO\ITDEV]
GO
ALTER ROLE [db_CUSTOMROLE_ObjectChangeReport] ADD MEMBER [GOEVO\DWUtility_SQL2_Dev]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [db_CUSTOMROLE_ReleaseManagement]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [db_CUSTOMROLE_ReleaseManagement]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [db_CUSTOMROLE_ReleaseManagement]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [db_CUSTOMROLE_ReleaseManagement]
GO
ALTER ROLE [db_datareader] ADD MEMBER [db_CUSTOMROLE_ReleaseManagement]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [db_CUSTOMROLE_ReleaseManagement]
GO
/****** Object:  Schema [GOEVO\Paul.Chen]    Script Date: 10/9/2021 11:34:23 PM ******/
CREATE SCHEMA [GOEVO\Paul.Chen]
GO
/****** Object:  Table [dbo].[_UserImport_]    Script Date: 10/9/2021 11:34:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_UserImport_](
	[DataSource] [nvarchar](50) NULL,
	[SAM_AcctName] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[First_Name] [nvarchar](50) NULL,
	[Middle_Name] [nvarchar](50) NULL,
	[Last_Name] [nvarchar](50) NULL,
	[CountryCode] [nvarchar](50) NULL,
	[Department] [nvarchar](100) NULL,
	[Department_ID] [nvarchar](50) NULL,
	[JobGrade] [nvarchar](50) NULL,
	[Manager_SAM] [nvarchar](50) NULL,
	[Submitted_BY] [nvarchar](50) NULL,
	[Submitted_SAM] [nvarchar](50) NULL,
	[IsMgr] [varchar](1) NULL,
	[IsTO] [varchar](1) NULL,
	[IsITExec] [varchar](1) NULL,
	[IsAccounting] [varchar](1) NULL,
	[IsProjAdmin] [varchar](1) NULL,
	[IsTSAdmin] [varchar](1) NULL,
	[Note] [nvarchar](500) NULL,
	[IsOK] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/9/2021 11:34:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Title] [varchar](100) NULL,
	[JobGradeId] [int] NULL,
	[DeptCode] [varchar](10) NULL,
	[CountryCode] [char](3) NULL,
	[ManagerID] [int] NULL,
	[EmailAlert] [bit] NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeActivityMap]    Script Date: 10/9/2021 11:34:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeActivityMap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
	[ActivityId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
 CONSTRAINT [PK_EmployeeActivityMap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeRole]    Script Date: 10/9/2021 11:34:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
 CONSTRAINT [PK_EmployeeRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enum]    Script Date: 10/9/2021 11:34:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enum](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[KeyVal] [varchar](15) NOT NULL,
	[TextVal] [nvarchar](100) NULL,
	[Description] [nvarchar](500) NULL,
	[ParentId] [int] NULL,
	[OrderSeq] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 10/9/2021 11:34:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[TypeId] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ProdDate] [datetime] NULL,
	[EstHrs] [int] NULL,
	[PIRNum] [varchar](20) NULL,
	[CountryCode] [char](3) NULL,
	[RequestBy] [varchar](500) NULL,
	[StatusId] [int] NULL,
	[StatusDate] [datetime] NULL,
	[IsPredefined] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectActivity]    Script Date: 10/9/2021 11:34:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectActivity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[ActivityId] [int] NOT NULL,
	[IsActive] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTeam]    Script Date: 10/9/2021 11:34:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTeam](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[TeamId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 10/9/2021 11:34:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DeptCode] [varchar](10) NULL,
	[ManagerId] [int] NULL,
	[OwnerId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamEmployee]    Script Date: 10/9/2021 11:34:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamEmployee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeamId] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
 CONSTRAINT [PK_TeamEmployee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheet]    Script Date: 10/9/2021 11:34:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[ProjectID] [int] NOT NULL,
	[ActivityId] [int] NOT NULL,
	[ActivityDate] [date] NOT NULL,
	[Hours] [decimal](18, 2) NOT NULL,
	[Description] [varchar](5000) NULL,
	[SourceId] [int] NULL,
	[SubmissionId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
 CONSTRAINT [PK_TimeSheet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheetSubmission]    Script Date: 10/9/2021 11:34:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheetSubmission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[PeriodCode] [varchar](10) NOT NULL,
	[StatusId] [int] NOT NULL,
	[StatusDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
 CONSTRAINT [PK_TimeSheetSubmission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkflowHistory]    Script Date: 10/9/2021 11:34:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WorkflowId] [int] NOT NULL,
	[EntityId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[StatusBy] [varchar](50) NOT NULL,
	[StatusDate] [datetime] NOT NULL,
	[Comment] [nvarchar](500) NULL,
	[PrevHistoryId] [int] NOT NULL,
	[IsCurrent] [bit] NULL,
 CONSTRAINT [PK_WorkflowHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Serhiyp', N'Serhiy.Pavlov@evopayments.com', N'Serhiy', NULL, N'Pavlov', N'ESP', N'706 Front-End Processing Operations', N'706', N'10', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'No SAM', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Craig.Lehtovaara', N'clehtovaara@delegopayments.com', N'Craig', N'Thomas', N'Lehtovaara', N'CAN', N'723 Delego IT', N'723', N'11', N'', N'Craig Lehtovaara', N'Craig.Lehtovaara', NULL, N'Y', NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Hani.Hassanain', N'hhassanain@delegopayments.com', N'Hani', N'Mohammed Moein', N'Hassanain', N'CAN', N'723 Delego IT', N'723', N'4', N'', N'Craig Lehtovaara', N'Craig.Lehtovaara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Gilad.Israeli', N'gisraeli@delegopayments.com', N'Gilad', NULL, N'Israeli', N'CAN', N'723 Delego IT', N'723', N'5', N'', N'Craig Lehtovaara', N'Craig.Lehtovaara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Ramesh.Sud', N'rsud@delegopayments.com', N'Ramesh', N'Alexander Singh', N'Sud', N'CAN', N'723 Delego IT', N'723', N'4', N'', N'Craig Lehtovaara', N'Craig.Lehtovaara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Colin.Stranc', N'cstranc@delegopayments.com', N'Colin', N'MacKenzie', N'Stranc', N'CAN', N'723 Delego IT', N'723', N'4', N'', N'Craig Lehtovaara', N'Craig.Lehtovaara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Derek.Lo', N'dlo@delegopayments.com', N'Wing Hong Derek', NULL, N'Lo', N'CAN', N'723 Delego IT', N'723', N'4', N'', N'Craig Lehtovaara', N'Craig.Lehtovaara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Mansoor.Khan', N'mkhan@delegopayments.com', N'Mansoor', NULL, N'Khan', N'CAN', N'723 Delego IT', N'723', N'6', N'', N'Craig Lehtovaara', N'Craig.Lehtovaara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Vinay.Sidhu', N'vsidhu@delegopayments.com', N'Vinay', NULL, N'Sidhu', N'CAN', N'723 Delego IT', N'723', N'4', N'', N'Craig Lehtovaara', N'Craig.Lehtovaara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Nevin.Huynh', N'?', N'Nevin', NULL, N'Huynh', N'CAN', N'723 Delego IT', N'723', N'?', N'', N'Craig Lehtovaara', N'Craig.Lehtovaara', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Sean.Rose', N'?', N'Sean', N'Justin', N'Rose', N'CAN', N'723 Delego IT', N'723', N'?', N'', N'Craig Lehtovaara', N'Craig.Lehtovaara', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Michael.Hartwick', N'?', N'Michael', N'James', N'Hartwick', N'CAN', N'723 Delego IT', N'723', N'?', N'', N'Craig Lehtovaara', N'Craig.Lehtovaara', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'andrew.zhang', N'Andrew.Zhang@evopayments.com', N'Andrew', NULL, N'Zhang', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'biao.shang', N'peter.shang@evopayments.com', N'Peter', NULL, N'Shang', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'6', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'bob.shen', N'bob.shen@evopayments.com', N'Bob', NULL, N'Shen', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'6', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'congxi.liu', N'congxi.liu@evopayments.com', N'Kevin', NULL, N'Liu', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'dongdong.zhang', N'Jack.Zhang@evopayments.com', N'Jack', NULL, N'Zhang', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'6', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'dongming.hu', N'dongming.hu@evopayments.com', N'Dongming', NULL, N'Hu', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'6', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'edison.chen', N'edison.chen@evopayments.com', N'Edison', NULL, N'Chen', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'feng.zhang', N'feng.zhang@evopayments.com', N'Feng', NULL, N'Zhang', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'fuen.wu', N'fuen.wu@evopayments.com', N'Fuen', NULL, N'Wu', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'gerry.deng', N'gerry.deng@evopayments.com', N'Gerry', NULL, N'Deng', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'6', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Guangze.Chen', N'Guangze.Chen@evopayments.com', N'Guangze', NULL, N'Chen', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'guanjun.zhu', N'guanjun.zhu@evopayments.com', N'Guanjun', NULL, N'Zhu', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'haisong.jia', N'haisong.jia@evopayments.com', N'Haisong', NULL, N'Jia', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'7', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'hua.deng', N'Edward.Deng@evopayments.com', N'Edward', NULL, N'Deng', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'6', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'jessie.shu', N'jessie.shu@evopayments.com', N'Jessie', NULL, N'Shu', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'6', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'jia.yang', N'jia.yang@evopayments.com', N'Jia', NULL, N'Yang', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'jin.xie', N'Jin.Xie@evopayments.com', N'Xie', NULL, N'Jin', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'jinye.han', N'kit.han@evopayments.com', N'Kit', NULL, N'Han', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'6', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Jun.Pan', N'James.Pan@evopayments.com', N'James', NULL, N'Pan', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'kai.chen', N'Kallen.Chen@evopayments.com', N'Kallen', NULL, N'Chen', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'kuo.wang', N'kuo.wang@evopayments.com', N'Kuo', NULL, N'Wang', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'li.zhang', N'richard.zhang@evopayments.com', N'Richard', NULL, N'Zhang', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'8', N'', N'Richard Zhang', N'li.zhang', NULL, N'Y', NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'liang.zhao', N'jason.zhao@evopayments.com', N'Jason', NULL, N'Zhao', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'7', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'martin.ma', N'martin.ma@evopayments.com', N'Martin', NULL, N'Ma', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'meng.chang', N'Connor.Chang@evopayments.com', N'Connor', NULL, N'Chang', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'minghao.tan', N'reggie.tan@evopayments.com', N'Reggie', NULL, N'Tan', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Qinglong.Qian', N'Tony.Qian@evopayments.com', N'Tony', NULL, N'Qian', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'rui.wang', N'ray.wang@evopayments.com', N'Ray', NULL, N'Wang', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'7', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'seven.qian', N'seven.qian@evopayments.com', N'Seven', NULL, N'Qian', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'shiying.song', N'shiying.song@evopayments.com', N'Shiying', NULL, N'Song ', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Shuai.Li', N'owen.li@evopayments.com', N'Owen', NULL, N'Li', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'6', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'shuangyu.zhu', N'josh.zhu@evopayments.com', N'Josh', NULL, N'Zhu', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'wenxiang.jiang', N'Ben.Jiang@evopayments.com', N'Ben', NULL, N'Jiang', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'6', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Xiaofeng.Wang', N'jim.wang@evopayments.com', N'Jim', NULL, N'Wang', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'xiaoqi.fang', N'gigi.fang@evopayments.com', N'Gigi', NULL, N'Fang', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'6', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'xuefei.liu', N'phil.liu@evopayments.com', N'Phil', NULL, N'Liu', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'6', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'xuhui.cao', N'benjamin.cao@evopayments.com', N'Benjamin', NULL, N'Cao', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'4', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'yanjun.he', N'Leo.He@evopayments.com', N'Leo', NULL, N'He', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'6', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'zhilong.zhang', N'nick.zhang@evopayments.com', N'Nick', NULL, N'Zhang', N'CHN', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Chun.Wang', N'Truman.Wang@evopayments.com', N'Truman', NULL, N'Wang', N'CHN', N'714 Quality Assurance', N'714', N'3', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Hanming.Mao', N'Kelly.Mao@evopayments.com', N'Kelly', NULL, N'Mao', N'CHN', N'714 Quality Assurance', N'714', N'3', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Hannah.Wang', N'Hannah.Wang@evopayments.com', N'Hannah', NULL, N'Wang', N'CHN', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Lucy.Peng', N'Lucy.Peng@evopayments.com', N'Lucy', NULL, N'Peng', N'CHN', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Neal.Li', N'Neal.Li@evopayments.com', N'Neal', NULL, N'Li', N'CHN', N'714 Quality Assurance', N'714', N'5', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Summer.Chen', N'Summer.Chen@evopayments.com', N'Summer', NULL, N'Chen', N'CHN', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Hua.Deng', N'Edward.Deng@evopayments.com', N'Edward', NULL, N'Deng', N'CHN', N'257 Corporate IT Audit', N'257', N'6', N'', N'Andrew Diamond', N'Andrew.Diamond', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Kai.Chen', N'Kallen.Chen@evopayments.com', N'Kallen', NULL, N'Chen', N'CHN', N'257 Corporate IT Audit', N'257', N'5', N'', N'Andrew Diamond', N'Andrew.Diamond', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Shuangyu.Zhu', N'josh.zhu@evopayments.com', N'Josh', NULL, N'Zhu', N'CHN', N'257 Corporate IT Audit', N'257', N'5', N'', N'Andrew Diamond', N'Andrew.Diamond', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Fen.Wang', N'Arya.Wang@evopayments.com', N'Arya', NULL, N'Wang', N'CHN', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Qinhua.Rui', N'Ana.Rui@evopayments.com', N'Ana', NULL, N'Rui', N'CHN', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'yuan.chen', N'Candice.Chen@evopayments.com', N'Candice', NULL, N'Chen', N'CHN', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Chunyan.Lu', N'Chunyan.Lu@evopayments.com', N'Chunyan', NULL, N'Lu', N'CHN', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Shiying.Dai', N'Elaine.Dai@evopayments.com', N'Elaine', NULL, N'Dai', N'CHN', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Yuan.Qiu', N'Elva.Qiu@evopayments.com', N'Elva', NULL, N'Qiu', N'CHN', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'jianhua.yi', N'Grace.Yi@evopayments.com', N'Grace', NULL, N'Yi', N'CHN', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Xiaoya.Qian', N'Hammer.Qian@evopayments.com', N'Hammer', NULL, N'Qian', N'CHN', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Haiyan.Zhang', N'Haiyan.Zhang@evopayments.com', N'Haiyan', NULL, N'Zhang', N'CHN', N'714 Quality Assurance', N'714', N'5', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Hui.Zhou', N'Herbert.Zhou@evopayments.com', N'Herbert', NULL, N'Zhou', N'CHN', N'714 Quality Assurance', N'714', N'5', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Jingjing.hu', N'Jingjing.Hu@evopayments.com', N'Jing Jing', NULL, N'Hu', N'CHN', N'714 Quality Assurance', N'714', N'8', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, N'Y', NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'xiaoxuan.ji', N'Xiaoxuan.Ji@evopayments.com', N'Jessica', NULL, N'Ji', N'CHN', N'714 Quality Assurance', N'714', N'5', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Ling.Xu', N'Ling.Xu@evopayments.com', N'Ling', NULL, N'Xu', N'CHN', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Mengying.Zhang', N'Nancy.Zhang@evopayments.com', N'Nancy', NULL, N'Zhang', N'CHN', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Qiumeng.Dai', N'Riven.Dai@evopayments.com', N'Riven', NULL, N'Dai', N'CHN', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'yaping.wu', N'Rena.Wu@evopayments.com', N'Rena', NULL, N'Wu', N'CHN', N'714 Quality Assurance', N'714', N'6', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'meijuan.shi', N'Sophia.Shi@evopayments.com', N'Sophia', NULL, N'Shi', N'CHN', N'714 Quality Assurance', N'714', N'5', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'ying.xu', N'Vicky.Xu@evopayments.com', N'Vicky', NULL, N'Xu', N'CHN', N'714 Quality Assurance', N'714', N'5', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+CN_MX_CA', N'Xiaoyan.Liu', N'Xiaoyan.Liu@evopayments.com', N'Xiaoyan', NULL, N'Liu', N'CHN', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Han.Wang', N'?', N'Hannah', NULL, N'Wang', N'CHN', N'714 Quality Assurance', N'714NODUS', N'?', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Qizhen.Peng', N'?', N'Lucy', NULL, N'Peng', N'CHN', N'714 Quality Assurance', N'714NODUS', N'?', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Xiaochun.Li', N'?', N'Neal', NULL, N'Li', N'CHN', N'714 Quality Assurance', N'714NODUS', N'?', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'jing.chen', N'?', N'Summer', NULL, N'Chen', N'CHN', N'714 Quality Assurance', N'714NODUS', N'?', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Christian.Canseco', N'?', N'Christian', N'Alexander', N'Canseco Espinosa', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Pedro.Castillo', N'?', N'Pedro', NULL, N'Castillo Larios', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Ana.Cortes', N'?', N'Ana', N'Karen', N'Cortes Mendoza', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Jonathan.Hidalgo', N'?', N'Jonathan', N'Raymundo', N'Hidalgo Alquicira', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Fernando.Huerta', N'?', N'Luis', N'Fernando', N'Huerta Zampayo', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Salvador.Martinez', N'?', N'Salvador', NULL, N'Martinez Ramirez', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Rodrigo.Orozco', N'?', N'Rodrigo', NULL, N'Orozco Martinez', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Oscar.Sandria', N'?', N'Oscar', N'Manuel', N'Sandria Reynoso', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Cesar.Toledo', N'?', N'Cesar', NULL, N'Toledo Cortez', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Jose.Aguilar', N'?', N'Jose', NULL, N'Aguilar Reyfa', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Yonic.Gomez', N'?', N'Yonic', N'Antonio', N'Gomez Sanchez', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Noemi.Morales', N'?', N'Noemi', N'Yazmin', N'Morales Pascual', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'JaimeG', N'?', N'Jose', N'Jaime', N'Gonzalez Robles', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Roberto.Arriola', N'?', N'Roberto', NULL, N'Arriola Rojano', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Uzziel.Jimenez', N'?', N'Uzziel', NULL, N'Jimenez Valencia', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Ricardo.Sanchez', N'?', N'Ricardo', NULL, N'Sanchez Rosete', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Alejandro.Salazar', N'?', N'Alejandro', NULL, N'Salazar Camarillo', N'MEX', N'706 Front-End Processing Operations', N'706', N'?', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
GO
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Ruben.Espino', N'?', N'Rub?n', N'?ngel', N'Espino Ortega', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Angel.Soto', N'?', N'Angel', N'Ulises', N'Soto Petriz', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Jose.Barragan', N'?', N'Jos?', N'Alfredo', N'Barrag?n Ventura', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Edgar.Linares', N'?', N'Edgar', NULL, N'Linares Gonz?lez', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Samuel.Gomez', N'?', N'Samuel', NULL, N'G?mez Ovando', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Juan.Pineda', N'?', N'Juan', N'Antonio', N'Pineda Espinos', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Paolo.DeLaRosa', N'?', N'Jose', N'Paolo', N'De la Rosa Guzm?n', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Jose.Castro', N'?', N'Jos?', N'Guadalupe', N'Castro Melquiadez', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Adan.Martinez', N'?', N'Ad?n', NULL, N'Mart?nez Andr?s', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Martin.Dominguez', N'?', N'Jes?s', N'Mart?n', N'Dominguez Tarango', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'JuanCarlos.Cruz', N'?', N'Juan', N'Carlos', N'Cruz Mart?nez', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Julio.Tapia', N'?', N'Julio', NULL, N'Tapia Serrano', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'JoseLuis.Robles', N'?', N'Jos?', N'Luis', N'Robles Mat?as', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Carlos.Nunez', N'?', N'Juan', N'Carlos', N'Nu?ez Hernandez', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Ernesto.Roman', N'?', N'Ernesto', N'Ulises', N'Rom?n Gonz?lez', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Gustavo.Paredes', N'?', N'Gustavo', N'Alejandro', N'Paredes Orozco', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Efren.Garcia', N'?', N'Efr?n', NULL, N'Garc?a Guarneros', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Alexis.Lopez', N'?', N'Alexis', N'David', N'L?pez Espinosa', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Alejandro.Onofre', N'?', N'Alejandro', NULL, N'Onofre ?ngeles', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Misael.Gonzalez', N'?', N'Misael', N'Ad?n', N'Gonz?lez Salinas', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Isaac.Ramirez', N'?', N'Isaac', N'Efrain', N'Ramirez Vazquez', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'juans', N'?', N'Juan', N'Francisco', N'Salinas Ochoa', N'MEX', N'707 IT Development - Operations Back Office', N'707', N'?', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'CN_MX_CA', N'Rene.Gazano', N'?', N'Ren?', N'Pascual', N'Gazano Cancino', N'MEX', N'718 Back-End Software Development', N'718', N'?', N'', N'
?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'michaelt', N'Michael.Tingle@evopayments.com', N'Michael', N'R', N'Tingle', N'USA', N'706 Front-End Processing Operations', N'706', N'9', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'jasonb', N'Jason.Beck@evopayments.com', N'Jason', N'L', N'Beck', N'USA', N'706 Front-End Processing Operations', N'706', N'5', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'daveg', N'David.Greene@evopayments.com', N'David', N'A', N'Greene', N'USA', N'706 Front-End Processing Operations', N'706', N'10', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Michelle', N'Michelle.Mazza@evopayments.com', N'Michelle', N'A', N'Mazza-Branyan', N'USA', N'707 IT Development - Operations Back Office', N'707', N'8', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'marisao', N'Marisa.Pracilio@evopayments.com', N'Marisa', NULL, N'Pracilio', N'USA', N'707 IT Development - Operations Back Office', N'707', N'7', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'RobertS', N'Robert.Spracklin@evopayments.com', N'Robert', N'W', N'Spracklin', N'USA', N'707 IT Development - Operations Back Office', N'707', N'9', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'VaseyS', N'Vasey.Salagbi@evopayments.com', N'Vasey', NULL, N'Salagbi', N'USA', N'707 IT Development - Operations Back Office', N'707', N'5', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'SteveM', N'Steve.Magara@evopayments.com', N'Steven', N'F', N'Magara', N'USA', N'707 IT Development - Operations Back Office', N'707', N'10', N'', N'Steve Magara', N'SteveM', NULL, N'Y', NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'AndyG', N'Andy.Gurzynski@evopayments.com', N'Andy', NULL, N'Gurzynski', N'USA', N'707 IT Development - Operations Back Office', N'707', N'5', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'shofiurR', N'Shofiur.Rahman@evopayments.com', N'Shofiur', NULL, N'Rahman', N'USA', N'707 IT Development - Operations Back Office', N'707', N'5', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'LakshmiN', N'Lakshmi.Narayanan@evopayments.com', N'Lakshmi', NULL, N'Narayanan', N'USA', N'707 IT Development - Operations Back Office', N'707', N'5', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'LavanyaK', N'Lavanya.Kudumula@evopayments.com', N'Lavanya', NULL, N'Kudumula', N'USA', N'707 IT Development - Operations Back Office', N'707', N'5', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'ConnieB', N'Connie.Hougardy-Brown@evopayments.com', N'Connie', NULL, N'Hougardy-Brown', N'USA', N'707 IT Development - Operations Back Office', N'707', N'2', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'MeeraB', N'Meera.Badri@evopayments.com', N'Meera', NULL, N'Badri', N'USA', N'707 IT Development - Operations Back Office', N'707', N'5', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'KabithaC', N'Kabitha.Chirasani@evopayments.com', N'Kabitha', NULL, N'Chirasani', N'USA', N'707 IT Development - Operations Back Office', N'707', N'5', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'archanar', N'Archana.Rastogi@evopayments.com', N'Archana', NULL, N'Rastogi', N'USA', N'707 IT Development - Operations Back Office', N'707', N'5', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Michael.Granovski', N'Michael.Granovski@evopayments.com', N'Michael', NULL, N'Granovski', N'USA', N'707 IT Development - Operations Back Office', N'707', N'5', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Sonia.Leekha', N'Sonia.Leekha@evopayments.com', N'Sonia', NULL, N'Leekha', N'USA', N'707 IT Development - Operations Back Office', N'707', N'4', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Kenneth.Klein', N'Ken.Klein@evopayments.com', N'Kenneth', N'P', N'Klein', N'USA', N'707 IT Development - Operations Back Office', N'707', N'5', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'May.Ho', N'May.Ho@evopayments.com', N'May', N'Fong', N'Ho', N'USA', N'707 IT Development - Operations Back Office', N'707', N'4', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Chuck.Miller', N'Chuck.Miller@evopayments.com', N'Charles', N'D', N'Miller', N'USA', N'707 IT Development - Operations Back Office', N'707', N'10', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Marilyn.Tambe', N'Marilyn.Tambe@evopayments.com', N'Marilyn', N'E', N'Tambe', N'USA', N'707 IT Development - Operations Back Office', N'707', N'2', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Andrew.Diamond', N'andrew.Diamond@evopayments.com', N'Andrew', N'Jay', N'Diamond', N'USA', N'257 Corporate IT Audit', N'257', N'12', N'', N'Andrew Diamond', N'Andrew.Diamond', NULL, N'Y', NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'mgrover', N'Marc.Grover@evopayments.com', N'Marc', N'A', N'Grover', N'USA', N'707 IT Development - Operations Back Office', N'707', N'7', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'christaf', N'christa.ferguson@evopayments.com', N'Christa', N'M', N'Ferguson', N'USA', N'708 EVO Snap', N'708', N'6', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'darrena', N'darren.adelgren@evopayments.com', N'DARREN', N'W', N'ADELGREN', N'USA', N'708 EVO Snap', N'708', N'13', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'bonniec', N'bonnie.chokr@evopayments.com', N'Bonnie', N'L', N'Chokr', N'USA', N'708 EVO Snap', N'708', N'10', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'jeannineg', N'jeannine.lee@evopayments.com', N'Jeannine', NULL, N'Lee', N'USA', N'708 EVO Snap', N'708', N'7', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'scottl', N'scott.labrash@evopayments.com', N'Scott', N'A', N'Labrash', N'USA', N'708 EVO Snap', N'708', N'12', N'', N'Scott Labrash', N'scottl', NULL, N'Y', NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'jaimeb', N'jaime.brown@evopayments.com', N'Jaime', N'L', N'Brown', N'USA', N'708 EVO Snap', N'708', N'4', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'russellf', N'russell.fisher@evopayments.com', N'Russell', NULL, N'Fisher', N'USA', N'708 EVO Snap', N'708', N'5', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'CullenM', N'cullen.mcdevitt@evopayments.com', N'Cullen', N'G', N'Mcdevitt', N'USA', N'708 EVO Snap', N'708', N'5', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Anthony.Chiesi', N'anthony.chiesi@evopayments.com', N'Anthony', N'D', N'Chiesi', N'USA', N'708 EVO Snap', N'708', N'7', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Kevin.Winn', N'kevin.winn@evopayments.com', N'Kevin', N'M', N'Winn', N'USA', N'708 EVO Snap', N'708', N'4', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Corey.Westcott', N'corey.westcott@evopayments.com', N'Corey', NULL, N'Westcott', N'USA', N'708 EVO Snap', N'708', N'6', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Harlan.Mott', N'harlan.mott@evopayments.com', N'Harlan', NULL, N'Mott', N'USA', N'708 EVO Snap', N'708', N'10', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Justin.Gogas', N'justin.gogas@evopayments.com', N'Justin', NULL, N'Gogas', N'USA', N'708 EVO Snap', N'708', N'5', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Charles.Walkowiak', N'charlie.walkowiak@evopayments.com', N'Charles', NULL, N'Walkowiak', N'USA', N'708 EVO Snap', N'708', N'9', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Noemi.Salazar', N'noemi.salazar@evopayments.com', N'Noemi', NULL, N'Salazar Caballero', N'USA', N'708 EVO Snap', N'708', N'8', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Yazeed.Haris', N'Yazeed.Haris@evopayments.com', N'Yazeed', N'K', N'Haris', N'USA', N'708 EVO Snap', N'708', N'4', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Alex.Pigford', N'alex.pigford@evopayments.com', N'Michel', N'A', N'Pigford', N'USA', N'708 EVO Snap', N'708', N'4', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'NickR', N'Nick.Redzinak@evopayments.com', N'Nicholas', N'P', N'Redzinak', N'USA', N'707 IT Development - Operations Back Office', N'707', N'5', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'hclukey', N'harleigh.clukey@evopayments.com', N'Harleigh', NULL, N'Clukey', N'USA', N'718 Back-End Software Development', N'718', N'6', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'SureshK', N'Suresh.Karanamlaxmi@evopayments.com', N'Suresh', NULL, N'Karanam Laxmi', N'USA', N'707 IT Development - Operations Back Office', N'707', N'5', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'DeepakM', N'Deepak.Malleshappa@evopayments.com', N'Deepak', NULL, N'Malleshappa', N'USA', N'707 IT Development - Operations Back Office', N'707', N'7', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Sanjay.Patil', N'Sanjay.Patil@evopayments.com', N'Sanjay', N'J', N'Patil', N'USA', N'707 IT Development - Operations Back Office', N'707', N'6', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Hung.Tran', N'Hung.Tran@evopayments.com', N'Hung', N'Phuoc', N'Tran', N'USA', N'707 IT Development - Operations Back Office', N'707', N'6', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'scott.baker', N'scott.baker@evopayments.com', N'Scott', N'R', N'Baker', N'USA', N'718 Back-End Software Development', N'718', N'10', N'', N'Scott Baker', N'scott.baker', NULL, N'Y', NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Laura.Cardenas', N'laura.cardenas@evopayments.com', N'Laura', NULL, N'Cardenas', N'USA', N'718 Back-End Software Development', N'718', N'4', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'GSchuerman', N'greg.schuerman@evopayments.com', N'Greg', NULL, N'Schuerman', N'USA', N'718 Back-End Software Development', N'718', N'5', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'NalinyS', N'naliny.srinivasan@evopayments.com', N'Naliny', NULL, N'Srinivasan', N'USA', N'718 Back-End Software Development', N'718', N'5', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Eugene.Holman', N'eugene.holman@evopayments.com', N'Eugene', N'A', N'Holman', N'USA', N'718 Back-End Software Development', N'718', N'5', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Michael.Hansen', N'michael.hansen@evopayments.com', N'Michael', N'P', N'Hansen', N'USA', N'718 Back-End Software Development', N'718', N'5', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Sree.Chalasani', N'sree.chalasani@evopayments.com', N'Sreelakshmi', NULL, N'Chalasani', N'USA', N'718 Back-End Software Development', N'718', N'7', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Lawrence.Moore', N'lawrence.moore@evopayments.com', N'Lawrence', NULL, N'Moore', N'USA', N'718 Back-End Software Development', N'718', N'8', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'John.Frost', N'john.frost@evopayments.com', N'John', NULL, N'Frost', N'USA', N'718 Back-End Software Development', N'718', N'6', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Tejaswini.Pulivarthi', N'tejaswini.pulivarthi@evopayments.com', N'Tejaswini', NULL, N'Pulivarthi', N'USA', N'718 Back-End Software Development', N'718', N'5', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Mary.OMalley', N'mary.omalley@evopayments.com', N'Mary', N'R', N'O''Malley', N'USA', N'718 Back-End Software Development', N'718', N'5', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Cheryl.Cook', N'cheryl.cook@evopayments.com', N'Cheryl', N'L', N'Cook', N'USA', N'718 Back-End Software Development', N'718', N'4', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Alexandre.Seite', N'alexandre.seite@evopayments.com', N'Alexandre', NULL, N'Seite', N'USA', N'718 Back-End Software Development', N'718', N'5', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Debra.Karavas', N'debra.karavas@evopayments.com', N'Debra', N'Lynn', N'Karavas', N'USA', N'718 Back-End Software Development', N'718', N'4', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Jeffrey.Hanson', N'jeffrey.hanson@evopayments.com', N'Jeffrey', N'G', N'Hanson', N'USA', N'718 Back-End Software Development', N'718', N'8', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Jeremy.Wead', N'jeremy.wead@evopayments.com', N'Jeremy', N'P', N'Wead', N'USA', N'718 Back-End Software Development', N'718', N'4', N'', N'Scott Baker', N'scott.baker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'stevep', N'Steve.Pracilio@evopayments.com', N'Steven', N'P', N'Pracilio', N'USA', N'706 Front-End Processing Operations', N'706', N'12', N'', N'Steve Pracilio', N'stevep', NULL, N'Y', NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Peter.Chon', N'Peter.Chon@evopayments.com', N'Peter', NULL, N'Chon', N'USA', N'706 Front-End Processing Operations', N'706', N'4', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'David.Gerlach', N'David.Gerlach@evopayments.com', N'David', NULL, N'Gerlach', N'USA', N'706 Front-End Processing Operations', N'706', N'5', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Rondall.James', N'Rondall.James@evopayments.com', N'Rondall', NULL, N'James', N'USA', N'706 Front-End Processing Operations', N'706', N'6', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Lance.Newalu', N'Lance.Newalu@evopayments.com', N'Lance', NULL, N'Newalu', N'USA', N'706 Front-End Processing Operations', N'706', N'5', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Daphne.Walker', N'Daphne.Walker@evopayments.com', N'Daphne', NULL, N'Walker', N'USA', N'706 Front-End Processing Operations', N'706', N'5', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Raymond.Haller', N'Raymond.Haller@evopayments.com', N'Raymond', N'Alexander', N'Haller', N'USA', N'706 Front-End Processing Operations', N'706', N'4', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Simona.Tashkovska', N'Simona.Tashkovska@evopayments.com', N'Simona', N'Jovanovska', N'Tashkovska', N'USA', N'706 Front-End Processing Operations', N'706', N'5', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original+US', N'Andy.Funk', N'Andy.Funk@evopayments.com', N'Andrew', N'Claiborne', N'Funk', N'USA', N'706 Front-End Processing Operations', N'706', N'10', N'', N'Steve Pracilio', N'stevep', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Donald.Poletti', N'Don.Poletti@evopayments.com', N'Don', NULL, N'Poletti', N'USA', N'707 IT Development - Operations Back Office', N'707', N'8', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Idris.Hayward', N'ihayward@kalfoni.com', N'Idris', NULL, N'Hayward', N'USA', N'707 IT Development - Operations Back Office', N'707', N'-1', N'', N'Steve Magara', N'SteveM', NULL, NULL, NULL, NULL, NULL, NULL, N'Email is outside EVO, No JobGrade', N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'bac.bui', N'Bac.Bui@evopayments.com', N'Bac', NULL, N'Bui', N'USA', N'707 IT Development - Operations Back Office-CHINA', N'707', N'6', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, N'Submitted_By Richard Zhang but might be in different team', N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Kirthi.Karan', N'Kirthi.Karan@evopayments.com', N'Kirthi', NULL, N'Karan', N'USA', N'707 IT Development - Operations Back Office-CHINA', N'707', N'5', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, N'Submitted_By Richard Zhang but might be in different team', N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Michael.Daigh', N'Michael.Daigh@evopayments.com', N'Michael', NULL, N'Daigh', N'USA', N'707 IT Development - Operations Back Office-CHINA', N'707', N'4', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, N'Submitted_By Richard Zhang but might be in different team', N'Y')
GO
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Jonathan.Duong', N'Jonathan.Duong@evopayments.com', N'Jonathan', NULL, N'Duong', N'USA', N'714 Quality Assurance', N'714', N'4', N'', N'Jingjing Hu', N'Jingjing.hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'US', N'markma', N'?', N'Mark', N'C', N'Malinowski', N'USA', N'708 EVO Snap', N'708', N'?', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'US', N'Mattch', N'?', N'Matthew', N'J', N'Christy', N'USA', N'708 EVO Snap', N'708', N'?', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'US', N'Zoey.Green', N'?', N'Zoey', N'Michelle', N'Green', N'USA', N'708 EVO Snap', N'708', N'?', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'US', N'Debra.Kruse', N'?', N'Debra', NULL, N'Kruse', N'USA', N'708 EVO Snap', N'708', N'?', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Original', N'Shaun.Sharples', N'Shaun.Sharples@evopayments.com', N'Shaun', NULL, N'Sharples', N'USA', N'707 IT Development - Operations Back Office-CHINA', N'707', N'7', N'', N'Richard Zhang', N'li.zhang', NULL, NULL, NULL, NULL, NULL, NULL, N'Submitted_By Richard Zhang but might be in different team', N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'US', N'Nicole.Hall', N'?', N'Nicole', NULL, N'Hall', N'USA', N'708 EVO Snap', N'708', N'?', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'US', N'Marcos.Guevara', N'?', N'Marcos', N'Antonio', N'Guevara', N'USA', N'708 EVO Snap', N'708', N'?', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'US', N'Victor.Brown', N'?', N'Victor', N'James', N'Brown', N'USA', N'708 EVO Snap', N'708', N'?', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'US', N'Jason.Lawrence', N'?', N'Jason', N'Spyder', N'Lawrence', N'USA', N'708 EVO Snap', N'708', N'?', N'', N'Scott Labrash', N'scottl', NULL, NULL, NULL, NULL, NULL, NULL, N'Email,JobGrade missing', N'N')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'Maiseyl', N'Maiseyl@evopayments.com', N'Maisey', N'', N'Liu', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'12', N'michaelre', N'', N'Maiseyl', N'Y', N'Y', NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'Abdulk', N'abdul.khan@evopayments.com', N'Abdul', N'', N'Khan', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Maiseyl', N'', N'Maiseyl', N'Y', NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'Kiran.Nagpaul', N'Kiran.Nagpaul@evopayments.com', N'Kiran', N'', N'Nagpaul', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Maiseyl', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'Sivagamia', N'Sivagami.annamalai@evopayments.com', N'Sivagami', N'', N'Annamalai', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Maiseyl', N'', N'Maiseyl', N'Y', NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'Atikur.Rahman', N'Atikur.Rahman@evopayments.com', N'Atikur', N'', N'Rahman', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Sivagamia', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'Cynthiaw', N'Cynthia.wolfe@evopayments.com', N'Cynthia', N'', N'Wolfe', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Sivagamia', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'Mohammedm', N'Mohammed.Mehraz@evopayments.com', N'Mohammed', N'', N'Mehraz', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Sivagamia', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'takiam', N'Takia.munni@evopayments.com', N'Takia', N'', N'Munni', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Sivagamia', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'Zakaria.maliashvili', N'Zakaria.maliashvili@evopayments.com', N'Zakaria', N'', N'Maliashvili ', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Sivagamia', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'dino.liu', N'dino.liu@evopayments.com', N'Dino', N'', N'Liu', N'CHN', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Abdulk', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'Eugeneg', N'eugene.gruzin@evopayments.com', N'Eugene', N'', N'Gruzin', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Abdulk', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'Jayeshj', N'Jayesh.Jayadevan@evopayments.com', N'Jayesh', N'', N'Jayadevan', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Abdulk', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'Joy.han', N'Joy.han@evopayments.com', N'Joy', N'', N'Han', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Abdulk', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'joy.jing', N'joy.jing@evopayments.com', N'Joy', N'', N'Jing', N'CHN', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Abdulk', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'lakshay.puniani', N'Lakshay.Puniani@evopayments.com', N'Lakshay', N'', N'Puniani', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Abdulk', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'paul.chen', N'paul.chen@evopayments.com', N'Paul', N'', N'Chen', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Abdulk', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'paul.rao', N'paul.rao@evopayments.com', N'Paul', N'', N'Rao', N'CHN', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Abdulk', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'Pooja.Sabharwal', N'Pooja.Sabharwal@evopayments.com', N'Pooja', N'', N'Sabharwal', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Abdulk', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'Ruslanm', N'Ruslan.Mamedyarov@evopayments.com', N'Ruslan', N'', N'Manedyarov', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Abdulk', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'PCH email', N'venkatac', N'Venkata.Chittabathini@evopayments.com', N'Venkata', N'', N'Chittabathini', N'USA', N'724 IT Development - Financial & Risk Back Office', N'724', N'6', N'Abdulk', N'', N'Maiseyl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
INSERT [dbo].[_UserImport_] ([DataSource], [SAM_AcctName], [Email], [First_Name], [Middle_Name], [Last_Name], [CountryCode], [Department], [Department_ID], [JobGrade], [Manager_SAM], [Submitted_BY], [Submitted_SAM], [IsMgr], [IsTO], [IsITExec], [IsAccounting], [IsProjAdmin], [IsTSAdmin], [Note], [IsOK]) VALUES (N'Manual', N'michaelre', N'Michael.Reidenbach@evopayments.com', N'Michael', NULL, N'Reidenbach', N'USA', NULL, N'0', N'12', NULL, NULL, N'michaelre', NULL, N'Y', N'Y', NULL, NULL, NULL, NULL, N'Y')
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (1, N'Serhiyp', N'Serhiy', N'Pavlov', N'Serhiy Pavlov', N'Serhiy.Pavlov@evopayments.com', N'Technical Architect', 10, N'706', N'ESP', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (2, N'Craig.Lehtovaara', N'Craig', N'Lehtovaara', N'Craig Lehtovaara', N'clehtovaara@delegopayments.com', N'Senior Director, Software', 11, N'723', N'CAN', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (3, N'Hani.Hassanain', N'Hani', N'Hassanain', N'Hani Hassanain', N'hhassanain@delegopayments.com', N'Engineer, Development', 4, N'723', N'CAN', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (4, N'Gilad.Israeli', N'Gilad', N'Israeli', N'Gilad Israeli', N'gisraeli@delegopayments.com', N'Developer, Software', 5, N'723', N'CAN', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (5, N'Ramesh.Sud', N'Ramesh', N'Sud', N'Ramesh Sud', N'rsud@delegopayments.com', N'Engineer, Development', 4, N'723', N'CAN', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (6, N'Colin.Stranc', N'Colin', N'Stranc', N'Colin Stranc', N'cstranc@delegopayments.com', N'Engineer, Development', 4, N'723', N'CAN', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (7, N'Derek.Lo', N'Wing Hong Derek', N'Lo', N'Wing Hong Derek Lo', N'dlo@delegopayments.com', N'Engineer, Development', 4, N'723', N'CAN', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (8, N'Mansoor.Khan', N'Mansoor', N'Khan', N'Mansoor Khan', N'mkhan@delegopayments.com', N'Senior Developer, Software', 6, N'723', N'CAN', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (9, N'Vinay.Sidhu', N'Vinay', N'Sidhu', N'Vinay Sidhu', N'vsidhu@delegopayments.com', N'Engineer, Quality Assurance', 4, N'723', N'CAN', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (10, N'andrew.zhang', N'Andrew', N'Zhang', N'Andrew Zhang', N'Andrew.Zhang@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 34, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (11, N'biao.shang', N'Peter', N'Shang', N'Peter Shang', N'peter.shang@evopayments.com', N'Senior Developer', 6, N'707', N'CHN', 31, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (12, N'bob.shen', N'Bob', N'Shen', N'Bob Shen', N'bob.shen@evopayments.com', N'Senior Developer', 6, N'707', N'CHN', 31, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (13, N'congxi.liu', N'Kevin', N'Liu', N'Kevin Liu', N'congxi.liu@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 11, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (14, N'dongdong.zhang', N'Jack', N'Zhang', N'Jack Zhang', N'Jack.Zhang@evopayments.com', N'Senior Developer', 6, N'707', N'CHN', 32, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (15, N'dongming.hu', N'Dongming', N'Hu', N'Dongming Hu', N'dongming.hu@evopayments.com', N'Senior Developer', 6, N'707', N'CHN', 31, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (16, N'edison.chen', N'Edison', N'Chen', N'Edison Chen', N'edison.chen@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 11, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (17, N'feng.zhang', N'Feng', N'Zhang', N'Feng Zhang', N'feng.zhang@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 31, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (18, N'fuen.wu', N'Fuen', N'Wu', N'Fuen Wu', N'fuen.wu@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 12, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (19, N'gerry.deng', N'Gerry', N'Deng', N'Gerry Deng', N'gerry.deng@evopayments.com', N'Senior Developer', 6, N'707', N'CHN', 22, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (20, N'Guangze.Chen', N'Guangze', N'Chen', N'Guangze Chen', N'Guangze.Chen@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 32, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (21, N'guanjun.zhu', N'Guanjun', N'Zhu', N'Guanjun Zhu', N'guanjun.zhu@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 32, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (22, N'haisong.jia', N'Haisong', N'Jia', N'Haisong Jia', N'haisong.jia@evopayments.com', N'Leader Developer', 7, N'707', N'CHN', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (23, N'hua.deng', N'Edward', N'Deng', N'Edward Deng', N'Edward.Deng@evopayments.com', N'Senior Developer', 6, N'707', N'CHN', 31, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (24, N'jessie.shu', N'Jessie', N'Shu', N'Jessie Shu', N'jessie.shu@evopayments.com', N'Senior Developer', 6, N'707', N'CHN', 12, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (25, N'jia.yang', N'Jia', N'Yang', N'Jia Yang', N'jia.yang@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 32, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (26, N'jin.xie', N'Xie', N'Jin', N'Xie Jin', N'Jin.Xie@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 32, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (27, N'jinye.han', N'Kit', N'Han', N'Kit Han', N'kit.han@evopayments.com', N'Senior Developer', 6, N'707', N'CHN', 11, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (28, N'Jun.Pan', N'James', N'Pan', N'James Pan', N'James.Pan@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 12, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (29, N'kai.chen', N'Kallen', N'Chen', N'Kallen Chen', N'Kallen.Chen@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 23, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (30, N'kuo.wang', N'Kuo', N'Wang', N'Kuo Wang', N'kuo.wang@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 32, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (31, N'li.zhang', N'Richard', N'Zhang', N'Richard Zhang', N'richard.zhang@evopayments.com', N'Development Manager', 8, N'707', N'CHN', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (32, N'liang.zhao', N'Jason', N'Zhao', N'Jason Zhao', N'jason.zhao@evopayments.com', N'Leader Developer', 7, N'707', N'CHN', 31, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (33, N'martin.ma', N'Martin', N'Ma', N'Martin Ma', N'martin.ma@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 22, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (34, N'meng.chang', N'Connor', N'Chang', N'Connor Chang', N'Connor.Chang@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 31, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (35, N'minghao.tan', N'Reggie', N'Tan', N'Reggie Tan', N'reggie.tan@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 31, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (36, N'Qinglong.Qian', N'Tony', N'Qian', N'Tony Qian', N'Tony.Qian@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 12, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (37, N'rui.wang', N'Ray', N'Wang', N'Ray Wang', N'ray.wang@evopayments.com', N'Leader Developer', 7, N'707', N'CHN', 31, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (38, N'seven.qian', N'Seven', N'Qian', N'Seven Qian', N'seven.qian@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 12, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (39, N'shiying.song', N'Shiying', N'Song ', N'Shiying Song ', N'shiying.song@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 12, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (40, N'Shuai.Li', N'Owen', N'Li', N'Owen Li', N'owen.li@evopayments.com', N'Senior Developer', 6, N'707', N'CHN', 31, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (41, N'shuangyu.zhu', N'Josh', N'Zhu', N'Josh Zhu', N'josh.zhu@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 23, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (42, N'wenxiang.jiang', N'Ben', N'Jiang', N'Ben Jiang', N'Ben.Jiang@evopayments.com', N'Senior Developer', 6, N'707', N'CHN', 31, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (43, N'Xiaofeng.Wang', N'Jim', N'Wang', N'Jim Wang', N'jim.wang@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 11, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (44, N'xiaoqi.fang', N'Gigi', N'Fang', N'Gigi Fang', N'gigi.fang@evopayments.com', N'Senior Developer', 6, N'707', N'CHN', 37, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (45, N'xuefei.liu', N'Phil', N'Liu', N'Phil Liu', N'phil.liu@evopayments.com', N'Senior Developer', 6, N'707', N'CHN', 32, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (46, N'xuhui.cao', N'Benjamin', N'Cao', N'Benjamin Cao', N'benjamin.cao@evopayments.com', N'Software Developer', 4, N'707', N'CHN', 12, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (47, N'yanjun.he', N'Leo', N'He', N'Leo He', N'Leo.He@evopayments.com', N'Senior Developer', 6, N'707', N'CHN', 31, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (48, N'zhilong.zhang', N'Nick', N'Zhang', N'Nick Zhang', N'nick.zhang@evopayments.com', N'Software Developer', 5, N'707', N'CHN', 11, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (49, N'Chun.Wang', N'Truman', N'Wang', N'Truman Wang', N'Truman.Wang@evopayments.com', N'QA Technician', 3, N'714', N'CHN', 68, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (50, N'Hanming.Mao', N'Kelly', N'Mao', N'Kelly Mao', N'Kelly.Mao@evopayments.com', N'QA Technician', 3, N'714', N'CHN', 68, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (51, N'Hannah.Wang', N'Hannah', N'Wang', N'Hannah Wang', N'Hannah.Wang@evopayments.com', N'QA Engineer', 4, N'714', N'CHN', 53, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (52, N'Lucy.Peng', N'Lucy', N'Peng', N'Lucy Peng', N'Lucy.Peng@evopayments.com', N'QA Engineer', 4, N'714', N'CHN', 69, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (53, N'Neal.Li', N'Neal', N'Li', N'Neal Li', N'Neal.Li@evopayments.com', N'QA Senior Engineer', 5, N'714', N'CHN', 68, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (54, N'Summer.Chen', N'Summer', N'Chen', N'Summer Chen', N'Summer.Chen@evopayments.com', N'QA Engineer', 4, N'714', N'CHN', 53, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (55, N'Hua.Deng', N'Edward', N'Deng', N'Edward Deng', N'Edward.Deng@evopayments.com', N'Senior Developer', 6, N'257', N'CHN', 31, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (56, N'Kai.Chen', N'Kallen', N'Chen', N'Kallen Chen', N'Kallen.Chen@evopayments.com', N'Software Developer', 5, N'257', N'CHN', 23, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (57, N'Shuangyu.Zhu', N'Josh', N'Zhu', N'Josh Zhu', N'josh.zhu@evopayments.com', N'Software Developer', 5, N'257', N'CHN', 55, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (58, N'Fen.Wang', N'Arya', N'Wang', N'Arya Wang', N'Arya.Wang@evopayments.com', N'QA Engineer', 4, N'714', N'CHN', 73, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (59, N'Qinhua.Rui', N'Ana', N'Rui', N'Ana Rui', N'Ana.Rui@evopayments.com', N'QA Engineer', 4, N'714', N'CHN', 73, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (60, N'yuan.chen', N'Candice', N'Chen', N'Candice Chen', N'Candice.Chen@evopayments.com', N'QA Engineer', 4, N'714', N'CHN', 73, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (61, N'Chunyan.Lu', N'Chunyan', N'Lu', N'Chunyan Lu', N'Chunyan.Lu@evopayments.com', N'QA Engineer', 4, N'714', N'CHN', 53, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (62, N'Shiying.Dai', N'Elaine', N'Dai', N'Elaine Dai', N'Elaine.Dai@evopayments.com', N'QA Engineer', 4, N'714', N'CHN', 73, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (63, N'Yuan.Qiu', N'Elva', N'Qiu', N'Elva Qiu', N'Elva.Qiu@evopayments.com', N'QA Engineer', 4, N'714', N'CHN', 68, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (64, N'jianhua.yi', N'Grace', N'Yi', N'Grace Yi', N'Grace.Yi@evopayments.com', N'QA Engineer', 4, N'714', N'CHN', 75, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (65, N'Xiaoya.Qian', N'Hammer', N'Qian', N'Hammer Qian', N'Hammer.Qian@evopayments.com', N'QA Engineer', 4, N'714', N'CHN', 53, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (66, N'Haiyan.Zhang', N'Haiyan', N'Zhang', N'Haiyan Zhang', N'Haiyan.Zhang@evopayments.com', N'QA Senior Engineer', 5, N'714', N'CHN', 73, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (67, N'Hui.Zhou', N'Herbert', N'Zhou', N'Herbert Zhou', N'Herbert.Zhou@evopayments.com', N'QA Senior Engineer', 5, N'714', N'CHN', 53, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (68, N'Jingjing.hu', N'Jing Jing', N'Hu', N'Jing Jing Hu', N'Jingjing.Hu@evopayments.com', N'QA Manager', 8, N'714', N'CHN', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (69, N'xiaoxuan.ji', N'Jessica', N'Ji', N'Jessica Ji', N'Xiaoxuan.Ji@evopayments.com', N'QA Senior Engineer', 5, N'714', N'CHN', 68, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (70, N'Ling.Xu', N'Ling', N'Xu', N'Ling Xu', N'Ling.Xu@evopayments.com', N'QA Engineer', 4, N'714', N'CHN', 73, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (71, N'Mengying.Zhang', N'Nancy', N'Zhang', N'Nancy Zhang', N'Nancy.Zhang@evopayments.com', N'QA Engineer', 4, N'714', N'CHN', 68, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (72, N'Qiumeng.Dai', N'Riven', N'Dai', N'Riven Dai', N'Riven.Dai@evopayments.com', N'QA Engineer', 4, N'714', N'CHN', 68, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (73, N'yaping.wu', N'Rena', N'Wu', N'Rena Wu', N'Rena.Wu@evopayments.com', N'QA Lead Engineer', 6, N'714', N'CHN', 68, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (74, N'meijuan.shi', N'Sophia', N'Shi', N'Sophia Shi', N'Sophia.Shi@evopayments.com', N'QA Senior Engineer', 5, N'714', N'CHN', 68, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (75, N'ying.xu', N'Vicky', N'Xu', N'Vicky Xu', N'Vicky.Xu@evopayments.com', N'QA Senior Engineer', 5, N'714', N'CHN', 68, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (76, N'Xiaoyan.Liu', N'Xiaoyan', N'Liu', N'Xiaoyan Liu', N'Xiaoyan.Liu@evopayments.com', N'QA Engineer', 4, N'714', N'CHN', 73, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (77, N'michaelt', N'Michael', N'Tingle', N'Michael Tingle', N'Michael.Tingle@evopayments.com', N'Senior Manager, Authorization Systems', 9, N'706', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (78, N'jasonb', N'Jason', N'Beck', N'Jason Beck', N'Jason.Beck@evopayments.com', N'Developer, Certification System', 5, N'706', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (79, N'daveg', N'David', N'Greene', N'David Greene', N'David.Greene@evopayments.com', N'Architect, Software Development', 10, N'706', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (80, N'Michelle', N'Michelle', N'Mazza-Branyan', N'Michelle Mazza-Branyan', N'Michelle.Mazza@evopayments.com', N'Manager, Quality Assurance', 8, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (81, N'marisao', N'Marisa', N'Pracilio', N'Marisa Pracilio', N'Marisa.Pracilio@evopayments.com', N'Supervisor, Systems Support', 7, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (82, N'RobertS', N'Robert', N'Spracklin', N'Robert Spracklin', N'Robert.Spracklin@evopayments.com', N'Senior Manager, Software Integration Support', 9, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (83, N'VaseyS', N'Vasey', N'Salagbi', N'Vasey Salagbi', N'Vasey.Salagbi@evopayments.com', N'Developer, Software', 5, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (84, N'SteveM', N'Steven', N'Magara', N'Steven Magara', N'Steve.Magara@evopayments.com', N'Director, Software Development', 10, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (85, N'AndyG', N'Andy', N'Gurzynski', N'Andy Gurzynski', N'Andy.Gurzynski@evopayments.com', N'Developer, Software', 5, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (86, N'shofiurR', N'Shofiur', N'Rahman', N'Shofiur Rahman', N'Shofiur.Rahman@evopayments.com', N'Developer, Quality Assurance', 5, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (87, N'LakshmiN', N'Lakshmi', N'Narayanan', N'Lakshmi Narayanan', N'Lakshmi.Narayanan@evopayments.com', N'Senior Analyst, Quality Assurance', 5, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (88, N'LavanyaK', N'Lavanya', N'Kudumula', N'Lavanya Kudumula', N'Lavanya.Kudumula@evopayments.com', N'Senior Analyst, Quality Assurance', 5, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (89, N'ConnieB', N'Connie', N'Hougardy-Brown', N'Connie Hougardy-Brown', N'Connie.Hougardy-Brown@evopayments.com', N'Specialist, Systems Support', 2, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (90, N'MeeraB', N'Meera', N'Badri', N'Meera Badri', N'Meera.Badri@evopayments.com', N'Senior Analyst, Quality Assurance', 5, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (91, N'KabithaC', N'Kabitha', N'Chirasani', N'Kabitha Chirasani', N'Kabitha.Chirasani@evopayments.com', N'Senior Analyst, Quality Assurance', 5, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (92, N'archanar', N'Archana', N'Rastogi', N'Archana Rastogi', N'Archana.Rastogi@evopayments.com', N'Senior Analyst, Quality Assurance', 5, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (93, N'Michael.Granovski', N'Michael', N'Granovski', N'Michael Granovski', N'Michael.Granovski@evopayments.com', N'Developer, Software', 5, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (94, N'Sonia.Leekha', N'Sonia', N'Leekha', N'Sonia Leekha', N'Sonia.Leekha@evopayments.com', N'Analyst, Technical Business Analysis', 4, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (95, N'Kenneth.Klein', N'Kenneth', N'Klein', N'Kenneth Klein', N'Ken.Klein@evopayments.com', N'Senior Engineer, Development Operations', 5, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (96, N'May.Ho', N'May', N'Ho', N'May Ho', N'May.Ho@evopayments.com', N'Technical Business Analyst', 4, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (97, N'Chuck.Miller', N'Charles', N'Miller', N'Charles Miller', N'Chuck.Miller@evopayments.com', N'Architect, Software Development', 10, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (98, N'Marilyn.Tambe', N'Marilyn', N'Tambe', N'Marilyn Tambe', N'Marilyn.Tambe@evopayments.com', N'Specialist, Systems Support', 2, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (99, N'Andrew.Diamond', N'Andrew', N'Diamond', N'Andrew Diamond', N'andrew.Diamond@evopayments.com', N'Gobal VP ISV Technology', 12, N'257', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
GO
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (100, N'mgrover', N'Marc', N'Grover', N'Marc Grover', N'Marc.Grover@evopayments.com', N'Lead Developer, Release Pipeline', 7, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (101, N'christaf', N'Christa', N'Ferguson', N'Christa Ferguson', N'christa.ferguson@evopayments.com', N'Lead Engineer, PTLS', 6, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (102, N'darrena', N'DARREN', N'ADELGREN', N'DARREN ADELGREN', N'darren.adelgren@evopayments.com', N'SVP Software Channel - Global', 13, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (103, N'bonniec', N'Bonnie', N'Chokr', N'Bonnie Chokr', N'bonnie.chokr@evopayments.com', N'Architect, Application', 10, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (104, N'jeannineg', N'Jeannine', N'Lee', N'Jeannine Lee', N'jeannine.lee@evopayments.com', N'Lead Engineer, Software', 7, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (105, N'scottl', N'Scott', N'Labrash', N'Scott Labrash', N'scott.labrash@evopayments.com', N'Vice President, Delivery Product & Project - Global', 12, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (106, N'jaimeb', N'Jaime', N'Brown', N'Jaime Brown', N'jaime.brown@evopayments.com', N'Engineer, Quality Assurance', 4, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (107, N'russellf', N'Russell', N'Fisher', N'Russell Fisher', N'russell.fisher@evopayments.com', N'Developer, Front End Web', 5, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (108, N'CullenM', N'Cullen', N'Mcdevitt', N'Cullen Mcdevitt', N'cullen.mcdevitt@evopayments.com', N'Senior Engineer, Mobile', 5, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (109, N'Anthony.Chiesi', N'Anthony', N'Chiesi', N'Anthony Chiesi', N'anthony.chiesi@evopayments.com', N'Lead Developer, Software Platform', 7, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (110, N'Kevin.Winn', N'Kevin', N'Winn', N'Kevin Winn', N'kevin.winn@evopayments.com', N'Engineer, Software', 4, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (111, N'Corey.Westcott', N'Corey', N'Westcott', N'Corey Westcott', N'corey.westcott@evopayments.com', N'Senior Developer, Software Platform', 6, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (112, N'Harlan.Mott', N'Harlan', N'Mott', N'Harlan Mott', N'harlan.mott@evopayments.com', N'Director, Software Development', 10, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (113, N'Justin.Gogas', N'Justin', N'Gogas', N'Justin Gogas', N'justin.gogas@evopayments.com', N'Sr. Engineer, Quality Assurance', 5, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (114, N'Charles.Walkowiak', N'Charles', N'Walkowiak', N'Charles Walkowiak', N'charlie.walkowiak@evopayments.com', N'Senior Manager, Quality Assurance', 9, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (115, N'Noemi.Salazar', N'Noemi', N'Salazar Caballero', N'Noemi Salazar Caballero', N'noemi.salazar@evopayments.com', N'Manager of Delivery', 8, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (116, N'Yazeed.Haris', N'Yazeed', N'Haris', N'Yazeed Haris', N'Yazeed.Haris@evopayments.com', N'Engineer, Quality Assurance', 4, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (117, N'Alex.Pigford', N'Michel', N'Pigford', N'Michel Pigford', N'alex.pigford@evopayments.com', N'Engineer, Quality Assurance', 4, N'708', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (118, N'NickR', N'Nicholas', N'Redzinak', N'Nicholas Redzinak', N'Nick.Redzinak@evopayments.com', N'Developer, Software', 5, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (119, N'hclukey', N'Harleigh', N'Clukey', N'Harleigh Clukey', N'harleigh.clukey@evopayments.com', N'Senior Developer, Software', 6, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (120, N'SureshK', N'Suresh', N'Karanam Laxmi', N'Suresh Karanam Laxmi', N'Suresh.Karanamlaxmi@evopayments.com', N'Developer, Software', 5, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (121, N'DeepakM', N'Deepak', N'Malleshappa', N'Deepak Malleshappa', N'Deepak.Malleshappa@evopayments.com', N'Lead Developer, Software', 7, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (122, N'Sanjay.Patil', N'Sanjay', N'Patil', N'Sanjay Patil', N'Sanjay.Patil@evopayments.com', N'Senior Developer, Software', 6, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (123, N'Hung.Tran', N'Hung', N'Tran', N'Hung Tran', N'Hung.Tran@evopayments.com', N'Senior Developer, Software', 6, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (124, N'scott.baker', N'Scott', N'Baker', N'Scott Baker', N'scott.baker@evopayments.com', N'Director, Settlement System Development', 10, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (125, N'Laura.Cardenas', N'Laura', N'Cardenas', N'Laura Cardenas', N'laura.cardenas@evopayments.com', N'Analyst, Business', 4, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (126, N'GSchuerman', N'Greg', N'Schuerman', N'Greg Schuerman', N'greg.schuerman@evopayments.com', N'Developer, Software (Java)', 5, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (127, N'NalinyS', N'Naliny', N'Srinivasan', N'Naliny Srinivasan', N'naliny.srinivasan@evopayments.com', N'Developer, Software (Java)', 5, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (128, N'Eugene.Holman', N'Eugene', N'Holman', N'Eugene Holman', N'eugene.holman@evopayments.com', N'Developer, Software (Settlement)', 5, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (129, N'Michael.Hansen', N'Michael', N'Hansen', N'Michael Hansen', N'michael.hansen@evopayments.com', N'Developer, Software (Settlement)', 5, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (130, N'Sree.Chalasani', N'Sreelakshmi', N'Chalasani', N'Sreelakshmi Chalasani', N'sree.chalasani@evopayments.com', N'Lead Developer, Software', 7, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (131, N'Lawrence.Moore', N'Lawrence', N'Moore', N'Lawrence Moore', N'lawrence.moore@evopayments.com', N'Manager, Quality Assurance', 8, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (132, N'John.Frost', N'John', N'Frost', N'John Frost', N'john.frost@evopayments.com', N'Senior Developer, Software', 6, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (133, N'Tejaswini.Pulivarthi', N'Tejaswini', N'Pulivarthi', N'Tejaswini Pulivarthi', N'tejaswini.pulivarthi@evopayments.com', N'Developer, Software (Java)', 5, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (134, N'Mary.OMalley', N'Mary', N'O''Malley', N'Mary O''Malley', N'mary.omalley@evopayments.com', N'Developer, Software', 5, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (135, N'Cheryl.Cook', N'Cheryl', N'Cook', N'Cheryl Cook', N'cheryl.cook@evopayments.com', N'Analyst, Quality Assurance', 4, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (136, N'Alexandre.Seite', N'Alexandre', N'Seite', N'Alexandre Seite', N'alexandre.seite@evopayments.com', N'Developer, Software', 5, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (137, N'Debra.Karavas', N'Debra', N'Karavas', N'Debra Karavas', N'debra.karavas@evopayments.com', N'Analyst, Quality Assurance', 4, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (138, N'Jeffrey.Hanson', N'Jeffrey', N'Hanson', N'Jeffrey Hanson', N'jeffrey.hanson@evopayments.com', N'Manager, Software Development', 8, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (139, N'Jeremy.Wead', N'Jeremy', N'Wead', N'Jeremy Wead', N'jeremy.wead@evopayments.com', N'Engineer, Quality Assurance', 4, N'718', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (140, N'stevep', N'Steven', N'Pracilio', N'Steven Pracilio', N'Steve.Pracilio@evopayments.com', N'Vice President Authorization Systems', 12, N'706', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (141, N'Peter.Chon', N'Peter', N'Chon', N'Peter Chon', N'Peter.Chon@evopayments.com', N'Analyst, Quality Assurance Tester', 4, N'706', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (142, N'David.Gerlach', N'David', N'Gerlach', N'David Gerlach', N'David.Gerlach@evopayments.com', N'Senior Analyst, Quality Assurance Tester', 5, N'706', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (143, N'Rondall.James', N'Rondall', N'James', N'Rondall James', N'Rondall.James@evopayments.com', N'Senior Developer, Software', 6, N'706', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (144, N'Lance.Newalu', N'Lance', N'Newalu', N'Lance Newalu', N'Lance.Newalu@evopayments.com', N'Developer, Software', 5, N'706', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (145, N'Daphne.Walker', N'Daphne', N'Walker', N'Daphne Walker', N'Daphne.Walker@evopayments.com', N'Senior Analyst, Quality Assurance Tester', 5, N'706', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (146, N'Raymond.Haller', N'Raymond', N'Haller', N'Raymond Haller', N'Raymond.Haller@evopayments.com', N'Analyst, Quality Assurance Tester', 4, N'706', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (147, N'Simona.Tashkovska', N'Simona', N'Tashkovska', N'Simona Tashkovska', N'Simona.Tashkovska@evopayments.com', N'Senior Analyst, Quality Assurance Tester', 5, N'706', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (148, N'Andy.Funk', N'Andrew', N'Funk', N'Andrew Funk', N'Andy.Funk@evopayments.com', N'Senior Lead Developer', 10, N'706', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (149, N'Donald.Poletti', N'Don', N'Poletti', N'Don Poletti', N'Don.Poletti@evopayments.com', N'Manager, Software Development', 8, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (150, N'Idris.Hayward', N'Idris', N'Hayward', N'Idris Hayward', N'ihayward@kalfoni.com', N'Contractor', -1, N'707', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (151, N'bac.bui', N'Bac', N'Bui', N'Bac Bui', N'Bac.Bui@evopayments.com', N'Senior Developer', 6, N'707', N'USA', 155, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (152, N'Kirthi.Karan', N'Kirthi', N'Karan', N'Kirthi Karan', N'Kirthi.Karan@evopayments.com', N'Software Developer', 5, N'707', N'USA', 31, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (153, N'Michael.Daigh', N'Michael', N'Daigh', N'Michael Daigh', N'Michael.Daigh@evopayments.com', N'Software Developer', 4, N'707', N'USA', 37, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (154, N'Jonathan.Duong', N'Jonathan', N'Duong', N'Jonathan Duong', N'Jonathan.Duong@evopayments.com', N'QA Engineer', 4, N'714', N'USA', 75, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (155, N'Shaun.Sharples', N'Shaun', N'Sharples', N'Shaun Sharples', N'Shaun.Sharples@evopayments.com', N'Leader Developer', 7, N'707', N'USA', 31, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (156, N'Maiseyl', N'Maisey', N'Liu', N'Maisey Liu', N'Maiseyl@evopayments.com', N'', 12, N'724', N'USA', 176, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (157, N'Abdulk', N'Abdul', N'Khan', N'Abdul Khan', N'abdul.khan@evopayments.com', N'', 6, N'724', N'USA', 156, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (158, N'Kiran.Nagpaul', N'Kiran', N'Nagpaul', N'Kiran Nagpaul', N'Kiran.Nagpaul@evopayments.com', N'', 6, N'724', N'USA', 156, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (159, N'Sivagamia', N'Sivagami', N'Annamalai', N'Sivagami Annamalai', N'Sivagami.annamalai@evopayments.com', N'', 6, N'724', N'USA', 156, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (160, N'Atikur.Rahman', N'Atikur', N'Rahman', N'Atikur Rahman', N'Atikur.Rahman@evopayments.com', N'', 6, N'724', N'USA', 159, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (161, N'Cynthiaw', N'Cynthia', N'Wolfe', N'Cynthia Wolfe', N'Cynthia.wolfe@evopayments.com', N'', 6, N'724', N'USA', 159, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (162, N'Mohammedm', N'Mohammed', N'Mehraz', N'Mohammed Mehraz', N'Mohammed.Mehraz@evopayments.com', N'', 6, N'724', N'USA', 159, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (163, N'takiam', N'Takia', N'Munni', N'Takia Munni', N'Takia.munni@evopayments.com', N'', 6, N'724', N'USA', 159, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (164, N'Zakaria.maliashvili', N'Zakaria', N'Maliashvili ', N'Zakaria Maliashvili ', N'Zakaria.maliashvili@evopayments.com', N'', 6, N'724', N'USA', 159, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (165, N'dino.liu', N'Dino', N'Liu', N'Dino Liu', N'dino.liu@evopayments.com', N'', 6, N'724', N'CHN', 157, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (166, N'Eugeneg', N'Eugene', N'Gruzin', N'Eugene Gruzin', N'eugene.gruzin@evopayments.com', N'', 6, N'724', N'USA', 157, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (167, N'Jayeshj', N'Jayesh', N'Jayadevan', N'Jayesh Jayadevan', N'Jayesh.Jayadevan@evopayments.com', N'', 6, N'724', N'USA', 157, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (168, N'Joy.han', N'Joy', N'Han', N'Joy Han', N'Joy.han@evopayments.com', N'', 6, N'724', N'USA', 157, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (169, N'joy.jing', N'Joy', N'Jing', N'Joy Jing', N'joy.jing@evopayments.com', N'', 6, N'724', N'CHN', 157, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (170, N'lakshay.puniani', N'Lakshay', N'Puniani', N'Lakshay Puniani', N'Lakshay.Puniani@evopayments.com', N'', 6, N'724', N'USA', 157, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (171, N'paul.chen', N'Paul', N'Chen', N'Paul Chen', N'paul.chen@evopayments.com', N'', 6, N'724', N'USA', 157, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (172, N'paul.rao', N'Paul', N'Rao', N'Paul Rao', N'paul.rao@evopayments.com', N'', 6, N'724', N'CHN', 157, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (173, N'Pooja.Sabharwal', N'Pooja', N'Sabharwal', N'Pooja Sabharwal', N'Pooja.Sabharwal@evopayments.com', N'', 6, N'724', N'USA', 157, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (174, N'Ruslanm', N'Ruslan', N'Manedyarov', N'Ruslan Manedyarov', N'Ruslan.Mamedyarov@evopayments.com', N'', 6, N'724', N'USA', 157, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (175, N'venkatac', N'Venkata', N'Chittabathini', N'Venkata Chittabathini', N'Venkata.Chittabathini@evopayments.com', N'', 6, N'724', N'USA', 157, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
INSERT [dbo].[Employee] ([Id], [UserID], [FirstName], [LastName], [DisplayName], [Email], [Title], [JobGradeId], [DeptCode], [CountryCode], [ManagerID], [EmailAlert], [IsActive], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (176, N'michaelre', N'Michael', N'Reidenbach', N'Michael Reidenbach', N'Michael.Reidenbach@evopayments.com', N'', 12, N'0', N'USA', -1, 0, 1, CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system', CAST(N'2021-10-08T17:55:21.523' AS DateTime), N'system')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Enum] ON 

INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (1, N'ExpenditureTypeId', N'1', N'Expense', N'Accounting Expense Type of Expenditure', 0, 10)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (2, N'ExpenditureTypeId', N'2', N'Capital', N'Accounting Capital Type of Expenditure', 0, 20)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (4, N'ProjectTypeId', N'1', N'New Development', NULL, 2, 10)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (5, N'ProjectTypeId', N'2', N'New Enhancement - Significant', NULL, 2, 20)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (6, N'ProjectTypeId', N'3', N'New Enhancement - Not Significant', NULL, 1, 30)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (7, N'ProjectTypeId', N'4', N'Bug Fix', NULL, 1, 40)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (8, N'ProjectTypeId', N'5', N'Maintenance', NULL, 1, 50)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (9, N'ProjectTypeId', N'6', N'Other', NULL, 1, 60)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (10, N'ProjectActivityId', N'1', N'Feasibility', NULL, 1, 10)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (11, N'ProjectActivityId', N'2', N'Requirements', NULL, 1, 20)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (12, N'ProjectActivityId', N'3', N'Design', NULL, 2, 30)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (13, N'ProjectActivityId', N'4', N'Development', NULL, 2, 40)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (14, N'ProjectActivityId', N'5', N'Testing', NULL, 2, 50)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (15, N'ProjectActivityId', N'6', N'Implementation', NULL, 2, 60)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (16, N'ProjectActivityId', N'7', N'Post Implementation', NULL, 1, 70)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (17, N'ProjectStatusId', N'1', N'Pending Approval', NULL, 0, 10)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (18, N'ProjectStatusId', N'2', N'Approved', NULL, 0, 20)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (19, N'ProjectStatusId', N'3', N'Rejected', NULL, 0, 30)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (20, N'ProjectStatusId', N'4', N'Closed', NULL, 0, 40)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (21, N'ProjectStatusId', N'5', N'Impaired', NULL, 0, 50)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (22, N'ProjectStatusId', N'100', N'Deleted', NULL, 0, 60)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (23, N'TimesheetStatusId', N'0', N'Draft', NULL, 0, 10)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (24, N'TimesheetStatusId', N'1', N'Manager Approved', NULL, 0, 20)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (25, N'TimesheetStatusId', N'2', N'Executive Approved', NULL, 0, 30)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (26, N'CountryCode', N'USA', N'United State', NULL, 0, 10)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (27, N'CountryCode', N'CAN', N'Canada', NULL, NULL, 20)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (28, N'CountryCode', N'CHN', N'China', NULL, NULL, 30)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (29, N'CountryCode', N'MEX', N'Mexico', NULL, NULL, 40)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (30, N'CountryCode', N'ESP', N'Spain', NULL, NULL, 50)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (31, N'DeptCode', N'706', N'Front-End Processing Operations', NULL, NULL, 10)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (32, N'DeptCode', N'707', N'IT Development - Operations Back Office', NULL, NULL, 20)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (33, N'DeptCode', N'708', N'EVO Snap', NULL, NULL, 30)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (34, N'DeptCode', N'714', N'Quality Assurance', NULL, NULL, 40)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (35, N'DeptCode', N'718', N'Back-End Software Development', NULL, NULL, 50)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (36, N'DeptCode', N'723', N'Delego IT', NULL, NULL, 60)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (37, N'DeptCode', N'724', N'IT Development - Financial & Risk Back Office', NULL, NULL, 70)
INSERT [dbo].[Enum] ([Id], [Name], [KeyVal], [TextVal], [Description], [ParentId], [OrderSeq]) VALUES (38, N'DeptCode', N'257', N'Corporate IT Audit', NULL, NULL, 80)
SET IDENTITY_INSERT [dbo].[Enum] OFF
GO
/****** Object:  Index [UK_EmployeeActivityMap]    Script Date: 10/9/2021 11:34:25 PM ******/
ALTER TABLE [dbo].[EmployeeActivityMap] ADD  CONSTRAINT [UK_EmployeeActivityMap] UNIQUE NONCLUSTERED 
(
	[ProjectId] ASC,
	[ActivityId] ASC,
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_EmployeeRole]    Script Date: 10/9/2021 11:34:25 PM ******/
ALTER TABLE [dbo].[EmployeeRole] ADD  CONSTRAINT [UK_EmployeeRole] UNIQUE NONCLUSTERED 
(
	[EmployeeId] ASC,
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UK_ProjectActivity]    Script Date: 10/9/2021 11:34:25 PM ******/
ALTER TABLE [dbo].[ProjectActivity] ADD  CONSTRAINT [UK_ProjectActivity] UNIQUE NONCLUSTERED 
(
	[ProjectId] ASC,
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UK_ProjectTeam]    Script Date: 10/9/2021 11:34:25 PM ******/
ALTER TABLE [dbo].[ProjectTeam] ADD  CONSTRAINT [UK_ProjectTeam] UNIQUE NONCLUSTERED 
(
	[ProjectId] ASC,
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UK_TeamEmployee]    Script Date: 10/9/2021 11:34:25 PM ******/
ALTER TABLE [dbo].[TeamEmployee] ADD  CONSTRAINT [UK_TeamEmployee] UNIQUE NONCLUSTERED 
(
	[TeamId] ASC,
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SPU_Employee_Find]    Script Date: 10/9/2021 11:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*********************************************************
* PROCEDURE:  [SPU_Employee_Find]
* DESCRIPTION:  Find Employees based on searching tokens
* CREATED: [10/2021]
* BY: [PCHEN] 
MODIFICATION HISTORY
* DATE 		BY		DESCRIPTION 
*************************************************************/
CREATE PROCEDURE [dbo].[SPU_Employee_Find] 
	@Name NVARCHAR(100) = NULL,
	@Title VARCHAR(100) = NULL,
	@ManagerId INT = -1,
	@DeptCode VARCHAR(10) = NULL,
	@CountryCode CHAR(3) = NULL,
	@JsonExtras NVARCHAR(MAX) = NULL
AS
SET NOCOUNT ON
-- Convert Json Extra parameters into memeory table
/*
DECLARE @JsonExtras NVARCHAR(MAX)
	='{"deptcodes": [723], "countrycodes":["USA", "CHN"]}';
SELECT 'extra', * FROM OPENJSON(@JsonExtras)
SELECT 'deptcodes', * FROM OPENJSON(@JsonExtras, '$.deptcodes')
SELECT 'countrycodes', * FROM OPENJSON(@JsonExtras, '$.countrycodes')

*/
DECLARE @extra TABLE (
	Name nvarchar(4000), 
	Value nvarchar(max), 
	Type tinyint)
DECLARE @deptcodes_t TABLE (
	deptcode VARCHAR(20));
DECLARE @deptcodes_cnt INT;
DECLARE @countrycodes_t TABLE (
	countrycode VARCHAR(20));
DECLARE @countrycodes_cnt INT;

IF (ISJSON(@JsonExtras)>0)
BEGIN
	INSERT INTO @extra (Name, Value, Type)
		SELECT * FROM OPENJSON(@JsonExtras)
	INSERT INTO @deptcodes_t
		SELECT value FROM OPENJSON(@JsonExtras, '$.deptcodes')
	SET @deptcodes_cnt = @@ROWCOUNT

	INSERT INTO @countrycodes_t
		SELECT value FROM OPENJSON(@JsonExtras, '$.statusids')
	SET @countrycodes_cnt = @@ROWCOUNT
END
-- End of getting Extra searching parameters
SELECT 
   E.Id				AS '@Id',
   E.UserID			AS '@UserId',
   E.FirstName		AS '@FirstName',
   E.LastName		AS '@LastName',
   E.DisplayName	AS '@DisplayName',
   E.Email			AS '@Email',
   E.Title			AS '@Title',
   E.JobGradeId		AS '@JobGradeId',
   E.DeptCode		AS '@DeptCode',
   E.CountryCode	AS '@CountryCode',
   E.EmailAlert		AS '@EmailAlert',
   E.IsActive		AS '@IsActive',
   E.CreateBy		AS '@CreateBy',
   E.CreateDate		AS '@CreateDate',
   E.UpdateBy		AS '@UpdateBy',
   E.UpdateDate		AS '@UpdateDate',  
   ( SELECT 
	   M.Id				AS '@Id',
	   M.UserID			AS '@UserId',
	   M.FirstName		AS '@FirstName',
	   M.LastName		AS '@LastName',
	   M.DisplayName	AS '@DisplayName',
	   M.Email			AS '@Email',
	   M.Title			AS '@Title',
	   M.JobGradeId		AS '@JobGradeId',
	   M.DeptCode		AS '@DeptCode',
	   M.CountryCode	AS '@CountryCode',
	   M.ManagerID		AS '@ManagerId'
      FROM Employee M  
      WHERE M.Id = E.ManagerID  
      FOR XML PATH('Manager'), TYPE  
    )
FROM Employee E
WHERE (@Name IS NULL OR (LEN(@name) > 2 AND (CHARINDEX(@Name, E.FirstName)>0 OR 
						CHARINDEX(@Name, E.LastName) > 0 or
						CHARINDEX(@Name, E.DisplayName) > 0 )))
AND (@Title IS NULL OR @Title = E.Title)
AND (ISNULL(@ManagerId, -1) = -1 OR @ManagerId = E.ManagerID)
AND (@CountryCode IS NULL OR @CountryCode = E.CountryCode)
AND (@DeptCode IS NULL OR @DeptCode = E.DeptCode)
AND (@deptcodes_cnt = 0 OR EXISTS (
	SELECT 1 FROM @deptcodes_t X where X.deptcode = E.DeptCode
	)
)
  FOR XML PATH('Employee'), ROOT('ArrayOfEmployee')    

/** TEST **
select * from Employee
Working:
EXEC SPU_Employee_Find  null,  null, NULL, null, null, '{"deptcodes": [707, 724]}'

**/
GO
/****** Object:  StoredProcedure [dbo].[SPU_Employee_Get]    Script Date: 10/9/2021 11:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*********************************************************
* PROCEDURE:    [SPU_Employee_Get]
* DESCRIPTION:  
	Get [Employee] XML record based on Id or UserID(Window User Name)
* CREATED: 10/2021  PCHEN
MODIFICATION HISTORY
*
***********************************************************/
CREATE PROCEDURE [dbo].[SPU_Employee_Get] 
	@Id INT = NULL,
	@UserID VARCHAR(50) = NULL
AS BEGIN
IF (ISNULL(@Id, -1) < 1)
	SELECT @Id = Id FROM Employee WHERE UserID = @UserID

SELECT 
   E.Id				AS '@Id',
   E.UserID			AS '@UserId',
   E.FirstName		AS '@FirstName',
   E.LastName		AS '@LastName',
   E.DisplayName	AS '@DisplayName',
   E.Email			AS '@Email',
   E.Title			AS '@Title',
   E.JobGradeId		AS '@JobGradeId',
   E.DeptCode		AS '@DeptCode',
   E.CountryCode	AS '@CountryCode',
   E.EmailAlert		AS '@EmailAlert',
   E.IsActive		AS '@IsActive',
   E.CreateBy		AS '@CreateBy',
   E.CreateDate		AS '@CreateDate',
   E.UpdateBy		AS '@UpdateBy',
   E.UpdateDate		AS '@UpdateDate',  
   ( SELECT 
	   M.Id				AS '@Id',
	   M.UserID			AS '@UserId',
	   M.FirstName		AS '@FirstName',
	   M.LastName		AS '@LastName',
	   M.DisplayName	AS '@DisplayName',
	   M.Email			AS '@Email',
	   M.Title			AS '@Title',
	   M.JobGradeId		AS '@JobGradeId',
	   M.DeptCode		AS '@DeptCode',
	   M.CountryCode	AS '@CountryCode',
	   M.ManagerID		AS '@ManagerId'
      FROM Employee M  
      WHERE M.Id = E.ManagerID  
      FOR XML PATH('Manager'), TYPE  
    )
FROM Employee E
WHERE E.Id = @Id
FOR XML PATH('Employee')  

END
/* Testing *
exec spu_employee_get null, 'paul.chen'
exec spu_employee_get 32, 'paul.chen'
exec spu_employee_get 32, null
*/
GO
/****** Object:  StoredProcedure [dbo].[SPU_Employee_UpSert]    Script Date: 10/9/2021 11:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*********************************************************
* PROCEDURE:    [SPU_Employee_UpSert]
* DESCRIPTION:  To Insert or Update [Employee] record
*	Need to make sure UserID is not updatable
* CREATED: [10/2021] BY: [PCHEN] 
MODIFICATION HISTORY
*
***********************************************************/
CREATE PROCEDURE [dbo].[SPU_Employee_UpSert] 
	@Id INT = NULL,
	@UserID VARCHAR(50) = NULL,
	@FirstName NVARCHAR(50) = NULL,
	@LastName NVARCHAR(50) = NULL,
	@DisplayName NVARCHAR(200) = NULL,
	@Email VARCHAR(100) = NULL,
	@Title VARCHAR(100) = NULL,
	@JobGradeId INT = NULL,
	@DeptCode VARCHAR(10) = NULL,
	@CountryCode CHAR(3) = NULL,
	@ManagerID INT = NULL,
	@EmailAlert BIT = NULL,
	@IsActive BIT = NULL,
	@By VARCHAR(50)
AS BEGIN
	IF EXISTS(SELECT 1 FROM Employee WHERE Id = ISNULL(@Id, -1)) BEGIN
		UPDATE Employee
		SET FirstName	= ISNULL(@FirstName, FirstName),
		    LastName	= ISNULL(@LastName, LastName),
		    DisplayName = ISNULL(@DisplayName, DisplayName),
		    Email		= ISNULL(@Email, Email),
		    Title		= ISNULL(@Title, Title),
		    JobGradeId	= ISNULL(@JobGradeId, JobGradeId),
		    DeptCode	= ISNULL(@DeptCode, DeptCode),
		    CountryCode = ISNULL(@CountryCode, CountryCode),
		    ManagerID	= ISNULL(@ManagerID, ManagerID),
		    EmailAlert	= ISNULL(@EmailAlert, EmailAlert),
		    IsActive	= ISNULL(@IsActive, IsActive),
			UpdateBy	= @by,
			UpdateDate	= GETUTCDATE()
		WHERE Id = @Id
		IF (@@ROWCOUNT<>1) SELECT @Id = -1
	END
	ELSE BEGIN
		INSERT INTO [dbo].[Employee]
				   ([UserID]
				   ,[FirstName]
				   ,[LastName]
				   ,[DisplayName]
				   ,[Email]
				   ,[Title]
				   ,[JobGradeId]
				   ,[DeptCode]
				   ,[CountryCode]
				   ,[ManagerID]
				   ,[EmailAlert]
				   ,[IsActive]
				   ,[CreateDate]
				   ,[CreateBy]
				   ,[UpdateDate]
				   ,[UpdateBy])
			 VALUES 
				   (@UserID
				   ,@FirstName
				   ,@LastName
				   ,@DisplayName
				   ,@Email
				   ,@Title
				   ,@JobGradeId
				   ,@DeptCode
				   ,@CountryCode
				   ,@ManagerID
				   ,@EmailAlert
				   ,@IsActive
				   ,@By
				   ,GETUTCDATE()
				   ,@By
				   ,GETUTCDATE())
		SELECT @Id = SCOPE_IDENTITY()
	END

	RETURN @Id

END
GO
/****** Object:  StoredProcedure [dbo].[SPU_Project_Find]    Script Date: 10/9/2021 11:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*********************************************************
* PROCEDURE:  [SPU_Project_Find]
* DESCRIPTION:  Find Projects based on searching tokens
* CREATED: [10/2021]
* BY: [PCHEN] 
MODIFICATION HISTORY
* DATE 		BY		DESCRIPTION 
*************************************************************/
CREATE PROCEDURE [dbo].[SPU_Project_Find] 
	@Name NVARCHAR(100) = NULL,
	@PIRNum VARCHAR(20) = NULL,
	@ProjectTypeID INT = -1,
	@StartDate DATE = NULL,
	@EndDate DATE = NULL,
	@ProdDate DATE = NULL,
	@CountryCode CHAR(3) = NULL,
	@JsonExtras NVARCHAR(MAX) = NULL
AS
SET NOCOUNT ON
-- Convert Json Extra parameters into memeory table
/*
DECLARE @JsonExtras NVARCHAR(MAX)
	='{"deptcodes": [723], "statusids":[11,21,31]}';
SELECT 'extra', * FROM OPENJSON(@JsonExtras)
SELECT 'deptcodes', * FROM OPENJSON(@JsonExtras, '$.deptcodes')
SELECT 'statusids', * FROM OPENJSON(@JsonExtras, '$.statusids')

*/
DECLARE @extra TABLE (
	Name nvarchar(4000), 
	Value nvarchar(max), 
	Type tinyint)
DECLARE @deptcodes TABLE (
	deptcode VARCHAR(20));
DECLARE @deptcodes_cnt INT;
DECLARE @statusids TABLE (
	statusid INT)
DECLARE @statusids_cnt INT;

IF (ISJSON(@JsonExtras)>0)
BEGIN
	INSERT INTO @extra (Name, Value, Type)
		SELECT * FROM OPENJSON(@JsonExtras)
	INSERT INTO @deptcodes
		SELECT value FROM OPENJSON(@JsonExtras, '$.deptcodes')
	SET @deptcodes_cnt = @@ROWCOUNT

	INSERT INTO @statusids
		SELECT value FROM OPENJSON(@JsonExtras, '$.statusids')
	SET @statusids_cnt = @@ROWCOUNT
END
-- End of getting Extra searching parameters
SELECT *

FROM Project P
WHERE (@Name IS NULL OR (LEN(@name) > 2 AND (CHARINDEX(@Name, P.Name)>0 OR CHARINDEX(@Name, P.Description) > 0)))
AND (@PIRNum IS NULL OR @PIRNum = P.PIRNum)
AND (@ProjectTypeID = -1 OR @ProjectTypeID = P.TypeID)
AND (@StartDate IS NULL OR @StartDate >ISNULL(P.StartDate, '9/9/9999') )
AND (@EndDate IS NULL OR @EndDate < ISNULL(EndDate, '9/9/9999') )
AND (@ProdDate IS NULL OR @ProdDate >ISNULL(P.ProdDate, '9/9/9999') )
AND (@CountryCode IS NULL OR @CountryCode = P.CountryCode)
AND (@statusids_cnt = 0 OR EXISTS (
	SELECT 1 FROM @statusids A WHERE A.statusid = P.StatusId
))
AND (@deptcodes_cnt = 0 OR EXISTS (
	SELECT 1 FROM ProjectTeam PT JOIN Team T ON PT.TeamID = T.Id
	WHERE PT.ProjectID = P.Id
	)
)

GO
USE [master]
GO
ALTER DATABASE [US_TimesheetPortal] SET  READ_WRITE 
GO
