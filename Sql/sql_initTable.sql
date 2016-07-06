USE [v4_ML4SAAS]
GO
/****** Object:  Table [dbo].[Sys_DictCodeValue]    Script Date: 2016/07/06 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_DictCodeValue](
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
 CONSTRAINT [PK_dbo.Sys_DictCodeValue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Organization]    Script Date: 2016/07/06 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Organization](
	[ID] [nvarchar](50) NOT NULL,
	[ParentID] [nvarchar](50) NULL,
	[CustomerID] [nvarchar](50) NULL,
	[OrgTypeID] [nvarchar](50) NULL,
	[OrgState] [nvarchar](50) NULL,
	[OrgName] [nvarchar](100) NOT NULL,
	[OrgCode] [nvarchar](20) NULL,
	[OrgType] [int] NULL,
	[OrgLevel] [int] NULL,
	[SysOrgLevel] [int] NULL,
	[Manager] [nvarchar](30) NULL,
	[OrgParentPath] [varchar](900) NULL,
	[OrgNamePath] [nvarchar](4000) NULL,
	[SortNo] [int] NULL,
	[IsAvailable] [int] NULL,
	[IsDel] [int] NULL,
	[AddBy] [nvarchar](50) NULL,
	[AddDate] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Sys_Organization] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Right]    Script Date: 2016/07/06 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Right](
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
 CONSTRAINT [PK_dbo.Sys_Right] PRIMARY KEY CLUSTERED 
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
CREATE TABLE [dbo].[Sys_Role](
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
 CONSTRAINT [PK_dbo.Sys_Role] PRIMARY KEY CLUSTERED 
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
CREATE TABLE [dbo].[Sys_RoleRight](
	[ID] [nvarchar](36) NOT NULL,
	[RoleCode] [nvarchar](36) NULL,
	[RightCode] [nvarchar](50) NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Sys_RoleRight] PRIMARY KEY CLUSTERED 
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
CREATE TABLE [dbo].[Sys_RoleUser](
	[ID] [nvarchar](36) NOT NULL,
	[RoleCode] [nvarchar](36) NULL,
	[UserCode] [nvarchar](50) NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Sys_RoleUser] PRIMARY KEY CLUSTERED 
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
CREATE TABLE [dbo].[Sys_User](
	[ID] [nvarchar](50) NOT NULL,
	[Employee] [nvarchar](50) NOT NULL,
	[OrgID] [nvarchar](50) NULL,
	[CustomerID] [nvarchar](50) NULL,
	[FullName] [nvarchar](100) NULL,
	[PinYin] [nvarchar](100) NULL,
	[JobType] [nvarchar](20) NULL,
	[UserType] [nvarchar](20) NULL,
	[WorkPhone] [nvarchar](50) NULL,
	[TelePhone] [nvarchar](30) NULL,
	[Email] [nvarchar](128) NULL,
	[Address] [nvarchar](255) NULL,
	[UserBirthday] [datetime] NULL,
	[Sex] [int] NULL,
	[Title] [nvarchar](80) NULL,
	[ShortMobile] [nvarchar](12) NULL,
	[UserPosiLevel] [nvarchar](50) NULL,
	[CurrentLevel] [nvarchar](2) NULL,
	[EmployeeClass] [nvarchar](10) NULL,
	[UserGrade] [nvarchar](100) NULL,
	[CMCCAccount] [nvarchar](100) NULL,
	[UserJoinInDate] [datetime] NULL,
	[UserNation] [nvarchar](5) NULL,
	[UserReligion] [nvarchar](5) NULL,
	[UserQuitDate] [nvarchar](50) NULL,
	[UserDN] [nvarchar](255) NULL,
	[DutyDesc] [nvarchar](200) NULL,
	[ChangeTime] [nvarchar](255) NULL,
	[CreateTime] [datetime] NULL,
	[LastModifyTime] [datetime] NULL,
	[LastName] [nvarchar](40) NULL,
	[FirstName] [nvarchar](60) NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IsSuper] [int] NULL,
	[IsLock] [int] NULL,
	[Degree] [nvarchar](20) NULL,
	[Leader] [nvarchar](30) NULL,
	[SortNo] [int] NULL,
	[IsAvailable] [int] NULL,
	[IsDel] [int] NULL,
	[AreaId] [nvarchar](50) NULL,
	[ProvinceId] [nvarchar](50) NULL,
	[AddBy] [nvarchar](128) NULL,
	[AddDate] [datetime] NULL,
	[UpdateBy] [nvarchar](128) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Sys_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Sys_DictCodeValue]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.Sys_DictCodeValue_dbo.Sys_DictCodeValue_ParentID] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Sys_DictCodeValue] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Sys_DictCodeValue] NOCHECK CONSTRAINT [FK_dbo.Sys_DictCodeValue_dbo.Sys_DictCodeValue_ParentID]
GO
ALTER TABLE [dbo].[Sys_Organization]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.Sys_Organization_dbo.Customers_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Sys_Organization] NOCHECK CONSTRAINT [FK_dbo.Sys_Organization_dbo.Customers_CustomerID]
GO
ALTER TABLE [dbo].[Sys_Organization]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.Sys_Organization_dbo.Sys_Organization_ParentID] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Sys_Organization] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Sys_Organization] NOCHECK CONSTRAINT [FK_dbo.Sys_Organization_dbo.Sys_Organization_ParentID]
GO
ALTER TABLE [dbo].[Sys_Right]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.Sys_Right_dbo.Sys_Right_ParentCode] FOREIGN KEY([ParentCode])
REFERENCES [dbo].[Sys_Right] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Sys_Right] NOCHECK CONSTRAINT [FK_dbo.Sys_Right_dbo.Sys_Right_ParentCode]
GO
ALTER TABLE [dbo].[Sys_Role]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.Sys_Role_dbo.Sys_Role_ParentID] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Sys_Role] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Sys_Role] NOCHECK CONSTRAINT [FK_dbo.Sys_Role_dbo.Sys_Role_ParentID]
GO
ALTER TABLE [dbo].[Sys_RoleRight]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.Sys_RoleRight_dbo.Sys_Right_RightCode] FOREIGN KEY([RightCode])
REFERENCES [dbo].[Sys_Right] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Sys_RoleRight] NOCHECK CONSTRAINT [FK_dbo.Sys_RoleRight_dbo.Sys_Right_RightCode]
GO
ALTER TABLE [dbo].[Sys_RoleRight]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.Sys_RoleRight_dbo.Sys_Role_RoleCode] FOREIGN KEY([RoleCode])
REFERENCES [dbo].[Sys_Role] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Sys_RoleRight] NOCHECK CONSTRAINT [FK_dbo.Sys_RoleRight_dbo.Sys_Role_RoleCode]
GO
ALTER TABLE [dbo].[Sys_RoleUser]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.Sys_RoleUser_dbo.Sys_Role_RoleCode] FOREIGN KEY([RoleCode])
REFERENCES [dbo].[Sys_Role] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Sys_RoleUser] NOCHECK CONSTRAINT [FK_dbo.Sys_RoleUser_dbo.Sys_Role_RoleCode]
GO
ALTER TABLE [dbo].[Sys_RoleUser]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.Sys_RoleUser_dbo.Sys_User_UserCode] FOREIGN KEY([UserCode])
REFERENCES [dbo].[Sys_User] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Sys_RoleUser] NOCHECK CONSTRAINT [FK_dbo.Sys_RoleUser_dbo.Sys_User_UserCode]
GO
ALTER TABLE [dbo].[Sys_User]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.Sys_User_dbo.Customers_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Sys_User] NOCHECK CONSTRAINT [FK_dbo.Sys_User_dbo.Customers_CustomerID]
GO
ALTER TABLE [dbo].[Sys_User]  WITH NOCHECK ADD  CONSTRAINT [FK_dbo.Sys_User_dbo.Sys_Organization_OrgID] FOREIGN KEY([OrgID])
REFERENCES [dbo].[Sys_Organization] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Sys_User] NOCHECK CONSTRAINT [FK_dbo.Sys_User_dbo.Sys_Organization_OrgID]
GO
