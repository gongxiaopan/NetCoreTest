USE [master]
GO
/****** Object:  Database [BrcueDB]    Script Date: 1/20/2016 11:14:41 AM ******/
CREATE DATABASE [BrcueDB] ON  PRIMARY 
( NAME = N'BrcueDB', FILENAME = N'D:\Database\BrcueDB.mdf' , SIZE = 29696KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BrcueDB_log', FILENAME = N'D:\Database\BrcueDB_log.ldf' , SIZE = 123648KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BrcueDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BrcueDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BrcueDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BrcueDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BrcueDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BrcueDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BrcueDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BrcueDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BrcueDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BrcueDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BrcueDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BrcueDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BrcueDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BrcueDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BrcueDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BrcueDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BrcueDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BrcueDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BrcueDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BrcueDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BrcueDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BrcueDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BrcueDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BrcueDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BrcueDB] SET RECOVERY FULL 
GO
ALTER DATABASE [BrcueDB] SET  MULTI_USER 
GO
ALTER DATABASE [BrcueDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BrcueDB] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BrcueDB', N'ON'
GO
Use BrcueDB
Go
/****** Object:  Table [dbo].[Sys_DictCodeValue]    Script Date: 2016/07/06 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysDictCode](
	[ID] [nvarchar](50) NOT NULL,
	[ParentID] [nvarchar](50) NULL,
	[DictName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[DictValue] [nvarchar](50) NULL,
	[SysDefined] [int] NULL,
	[Level] [int] NULL,
	[SortNo] [int] NULL,
	[IsAvailable] [int] NULL,
	[IsDel] [int] NULL,
	[AddBy] [nvarchar](50) NULL,
	[AddDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Sys_DictCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRight](
	[ID] [nvarchar](50) NOT NULL,
	[RightName] [nvarchar](20) NULL,
	[DisplayName] [nvarchar](20) NULL,
	[ParentCode] [nvarchar](50) NULL,
	[LevelCount] [int] NULL,
	[IsMenu] [int] NULL,
	[IsSysManage] [int] NULL,
	[MenuUrl] [nvarchar](200) NULL,
	[SubSystem] [nvarchar](10) NULL,
	[IsControl] [int] NULL,
	[IsTableControl] [int] NULL,
	[IsJsControl] [int] NULL,
	[ActionType] [nvarchar](50) NULL,
	[Pic] [nvarchar](50) NULL,
	[SortNo] [int] NULL,
	[IsAvailable] [int] NULL,
	[IsDel] [int] NULL,
	[AddBy] [nvarchar](50) NULL,
	[AddDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.SysRight] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 2016/07/06 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRole](
	[ID] [nvarchar](36) NOT NULL,
	[RoleName] [nvarchar](20) NOT NULL,
	[ParentID] [nvarchar](36) NULL,
	[HomePage] [nvarchar](255) NULL,
	[SysDefined] [int] NULL,
	[RoleLevel] [int] NULL,
	[SortNo] [int] NULL,
	[IsAvailable] [int] NULL,
	[IsDel] [int] NULL,
	[AddBy] [nvarchar](50) NULL,
	[AddDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.SysRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_RoleRight]    Script Date: 2016/07/06 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRoleRight](
	[ID] [nvarchar](36) NOT NULL,
	[RoleCode] [nvarchar](36) NULL,
	[RightCode] [nvarchar](50) NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.SysRoleRight] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_RoleUser]    Script Date: 2016/07/06 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRoleUser](
	[ID] [nvarchar](36) NOT NULL,
	[RoleCode] [nvarchar](36) NULL,
	[UserCode] [nvarchar](50) NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.SysRoleUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_User]    Script Date: 2016/07/06 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUser](
	[ID] [nvarchar](50) NOT NULL,
	[Employee] [nvarchar](50) NOT NULL,
	[OrgID] [nvarchar](50) NULL,
	[CustomerID] [nvarchar](50) NULL,
	[FullName] [nvarchar](100) NULL,
	[PinYin] [nvarchar](100) NULL,
	[WorkPhone] [nvarchar](50) NULL,
	[TelePhone] [nvarchar](30) NULL,
	[Email] [nvarchar](128) NULL,
	[Address] [nvarchar](255) NULL,
	[UserBirthday] [datetime] NULL,
	[Sex] [int] NULL,
	[Position] [nvarchar](80) NULL,
	[ShortMobile] [nvarchar](12) NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IsSuper] [int] NULL,
	[SortNo] [int] NULL,
	[IsAvailable] [int] NULL,
	[IsDel] [int] NULL,
	[AddBy] [nvarchar](128) NULL,
	[AddDate] [datetime] NULL,
	[UpdateBy] [nvarchar](128) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.SysUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_User]    Script Date: 2016/07/06 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUser](
	[ID] [nvarchar](50) NOT NULL,
	[Employee] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](100) NULL,
    [Password] [nvarchar](50) NOT NULL,
	[OrgID] [nvarchar](50) NULL,
	[CustomerId] [nvarchar](50) NULL,	
	[PinYin] [nvarchar](100) NULL,
	[WorkPhone] [nvarchar](50) NULL,
	[TelePhone] [nvarchar](30) NULL,
    [ShortMobile] [nvarchar](12) NULL,
	[Email] [nvarchar](128) NULL,
	[Address] [nvarchar](255) NULL,
	[BirthdayDate] [datetime] NULL,
	[Sex] [int] NULL,
	[PositionId] [nvarchar](80) NULL,
	[IsSuper] [int] NULL,
	[SortNo] [int] NULL,
	[IsAvailable] [int] NULL,
	[IsDel] [int] NULL,
	[AddBy] [nvarchar](128) NULL,
	[AddDate] [datetime] NULL,
	[UpdateBy] [nvarchar](128) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.SysUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Organization]    Script Date: 2016/07/06 14:45:27 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysOrganization](
	[ID] [nvarchar](50) NOT NULL,
	[ParentID] [nvarchar](50) NULL,
	[CustomerID] [nvarchar](50) NULL,
	[OrgName] [nvarchar](100) NOT NULL,
	[OrgCode] [nvarchar](20) NULL,
	[OrgLevel] [int] NULL,
	[SysOrgLevel] [int] NULL,
	[OrgParentPath] [varchar](900) NULL,
	[OrgNamePath] [nvarchar](4000) NULL,
	[SortNo] [int] NULL,
	[IsAvailable] [int] NULL,
	[IsDel] [int] NULL,
	[AddBy] [nvarchar](50) NULL,
	[AddDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.SysOrganization] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[SysDictCode]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.SysDictCode_dbo.SysDictCode_ParentID] FOREIGN KEY([ParentID])
REFERENCES [dbo].[SysDictCode] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SysDictCode] NOCHECK CONSTRAINT [FK_dbo.SysDictCode_dbo.SysDictCode_ParentID]
GO
ALTER TABLE [dbo].[SysOrganization]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.SysOrganization_dbo.Customers_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SysOrganization] NOCHECK CONSTRAINT [FK_dbo.SysOrganization_dbo.Customers_CustomerID]
GO
ALTER TABLE [dbo].[SysOrganization]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.SysOrganization_dbo.SysOrganization_ParentID] FOREIGN KEY([ParentID])
REFERENCES [dbo].[SysOrganization] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SysOrganization] NOCHECK CONSTRAINT [FK_dbo.SysOrganization_dbo.SysOrganization_ParentID]
GO
ALTER TABLE [dbo].[SysRight]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.SysRight_dbo.SysRight_ParentCode] FOREIGN KEY([ParentCode])
REFERENCES [dbo].[SysRight] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SysRight] NOCHECK CONSTRAINT [FK_dbo.SysRight_dbo.SysRight_ParentCode]
GO
ALTER TABLE [dbo].[SysRole]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.SysRole_dbo.SysRole_ParentID] FOREIGN KEY([ParentID])
REFERENCES [dbo].[SysRole] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SysRole] NOCHECK CONSTRAINT [FK_dbo.SysRole_dbo.SysRole_ParentID]
GO
ALTER TABLE [dbo].[SysRoleRight]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.SysRoleRight_dbo.SysRight_RightCode] FOREIGN KEY([RightCode])
REFERENCES [dbo].[SysRight] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SysRoleRight] NOCHECK CONSTRAINT [FK_dbo.SysRoleRight_dbo.SysRight_RightCode]
GO
ALTER TABLE [dbo].[SysRoleRight]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.SysRoleRight_dbo.SysRole_RoleCode] FOREIGN KEY([RoleCode])
REFERENCES [dbo].[SysRole] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SysRoleRight] NOCHECK CONSTRAINT [FK_dbo.SysRoleRight_dbo.SysRole_RoleCode]
GO
ALTER TABLE [dbo].[SysRoleUser]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.SysRoleUser_dbo.SysRole_RoleCode] FOREIGN KEY([RoleCode])
REFERENCES [dbo].[SysRole] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SysRoleUser] NOCHECK CONSTRAINT [FK_dbo.SysRoleUser_dbo.SysRole_RoleCode]
GO
ALTER TABLE [dbo].[SysRoleUser]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.SysRoleUser_dbo.SysUser_UserCode] FOREIGN KEY([UserCode])
REFERENCES [dbo].[SysUser] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SysRoleUser] NOCHECK CONSTRAINT [FK_dbo.SysRoleUser_dbo.SysUser_UserCode]
GO
ALTER TABLE [dbo].[SysUser]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.SysUser_dbo.Customers_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SysUser] NOCHECK CONSTRAINT [FK_dbo.SysUser_dbo.Customers_CustomerID]
GO
ALTER TABLE [dbo].[SysUser]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.SysUser_dbo.SysOrganization_OrgID] FOREIGN KEY([OrgID])
REFERENCES [dbo].[SysOrganization] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[SysUser] NOCHECK CONSTRAINT [FK_dbo.SysUser_dbo.SysOrganization_OrgID]
GO



