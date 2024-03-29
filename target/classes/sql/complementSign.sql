USE [HRDB]
GO
drop table IF EXISTS [dbo].[ComplementSignAuditted];
drop table IF EXISTS [dbo].[ComplementSignPendingApproval];

/****** Object:  Table [dbo].[ComplementSignAuditted]    Script Date: 2021/8/31 上午 02:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComplementSignAuditted](
	[empname] [nvarchar](50) NOT NULL,
	[empno] [nvarchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[type] [nvarchar](10) NOT NULL,
	[managerNo] [int] NOT NULL,
	[applied_date] [datetime] NOT NULL,
	[Serial_Number] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](10) NOT NULL,
	[reason] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ComplementSignAuditted] PRIMARY KEY CLUSTERED 
(
	[Serial_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComplementSignPendingApproval]    Script Date: 2021/8/31 上午 02:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComplementSignPendingApproval](
	[empname] [nvarchar](50) NOT NULL,
	[empno] [nvarchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[type] [nvarchar](10) NOT NULL,
	[managerNo] [int] NOT NULL,
	[applied_date] [datetime] NOT NULL,
	[Serial_Number] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](10) NOT NULL,
	[reason] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ComplementSignAuditted] ON 

INSERT [dbo].[ComplementSignAuditted] ([empname], [empno], [date], [type], [managerNo], [applied_date], [Serial_Number], [Status], [reason]) VALUES (N'蜘蛛人', N'rd1', CAST(N'2021-08-31' AS Date), N'CheckOut', 3, CAST(N'2021-08-25T18:00:00.000' AS DateTime), 24, N'Pass', N'忘記打卡')
SET IDENTITY_INSERT [dbo].[ComplementSignAuditted] OFF
GO
SET IDENTITY_INSERT [dbo].[ComplementSignPendingApproval] ON 

INSERT [dbo].[ComplementSignPendingApproval] ([empname], [empno], [date], [type], [managerNo], [applied_date], [Serial_Number], [Status], [reason]) VALUES (N'蜘蛛人', N'rd1', CAST(N'2021-08-31' AS Date), N'CheckIn', 3, CAST(N'2021-08-27T09:00:00.000' AS DateTime), 43, N'pending', N'忘記打卡')
INSERT [dbo].[ComplementSignPendingApproval] ([empname], [empno], [date], [type], [managerNo], [applied_date], [Serial_Number], [Status], [reason]) VALUES (N'蜘蛛人', N'rd1', CAST(N'2021-08-31' AS Date), N'CheckOut', 3, CAST(N'2021-08-30T18:00:00.000' AS DateTime), 44, N'pending', N'忘記打卡')
SET IDENTITY_INSERT [dbo].[ComplementSignPendingApproval] OFF
GO
