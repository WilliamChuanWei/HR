USE [hrdb]
GO
drop table IF EXISTS [dbo].[bulletin];
drop table IF EXISTS [dbo].[bulLike];
drop table IF EXISTS [dbo].[bulMessage];
drop table IF EXISTS [dbo].[bulEnroll];
GO
/****** Object:  Table [dbo].[bulEnroll]    Script Date: 2021/8/30 上午 12:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bulEnroll](
	[enrollId] [int] IDENTITY(1,1) NOT NULL,
	[empDept] [nvarchar](50) NOT NULL,
	[empName] [nvarchar](50) NOT NULL,
	[empNo] [nvarchar](50) NOT NULL,
	[enrollStatus] [nvarchar](50) NOT NULL,
	[postno] [int] NOT NULL,
	[updateTime] [datetime2](7) NOT NULL,
	[createTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK__bulEnrol__6B68B61BD81BA5FE] PRIMARY KEY CLUSTERED 
(
	[enrollId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bulletin]    Script Date: 2021/8/30 上午 12:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bulletin](
	[type] [nvarchar](50) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[postdate] [date] NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[exp] [date] NOT NULL,
	[postno] [int] IDENTITY(1,1) NOT NULL,
	[poststatus] [nvarchar](50) NOT NULL,
	[createTime] [datetime2](7) NOT NULL,
	[quotatype] [nvarchar](50) NULL,
	[quota] [int] NULL,
	[desText] [nvarchar](max) NOT NULL,
	[file1] [nvarchar](50) NULL,
	[picture] [varbinary](max) NULL,
	[endDate] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bulLike]    Script Date: 2021/8/30 上午 12:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bulLike](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[empNo] [nvarchar](50) NOT NULL,
	[likeStatus] [nvarchar](50) NOT NULL,
	[postno] [int] NOT NULL,
 CONSTRAINT [PK__bulLike__3213E83FFDB618E5] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bulMessage]    Script Date: 2021/8/30 上午 12:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bulMessage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[createTime] [datetime2](7) NULL,
	[empName] [nvarchar](50) NULL,
	[empNo] [nvarchar](50) NULL,
	[message] [nvarchar](max) NULL,
	[messageDate] [date] NULL,
	[postno] [int] NOT NULL,
	[msgStatus] [nvarchar](50) NULL,
 CONSTRAINT [PK__bulMessa__3213E83F6B724FE8] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bulEnroll] ON 

INSERT [dbo].[bulEnroll] ([enrollId], [empDept], [empName], [empNo], [enrollStatus], [postno], [updateTime], [createTime]) VALUES (1, N'HR', N'Natasha Alianovna Romanoff', N'hr1', N'參加', 11, CAST(N'2021-08-29T22:16:35.3880000' AS DateTime2), CAST(N'2021-08-29T22:16:35.3880000' AS DateTime2))
INSERT [dbo].[bulEnroll] ([enrollId], [empDept], [empName], [empNo], [enrollStatus], [postno], [updateTime], [createTime]) VALUES (2, N'RD', N'Peter Benjamin Parker', N'rd1', N'參加', 11, CAST(N'2021-08-29T22:17:52.9560000' AS DateTime2), CAST(N'2021-08-29T22:17:52.9560000' AS DateTime2))
INSERT [dbo].[bulEnroll] ([enrollId], [empDept], [empName], [empNo], [enrollStatus], [postno], [updateTime], [createTime]) VALUES (3, N'RD', N'Peter Benjamin Parker', N'rd1', N'參加', 9, CAST(N'2021-08-29T22:19:31.3000000' AS DateTime2), CAST(N'2021-08-29T22:19:31.3000000' AS DateTime2))
INSERT [dbo].[bulEnroll] ([enrollId], [empDept], [empName], [empNo], [enrollStatus], [postno], [updateTime], [createTime]) VALUES (4, N'SALES', N'Steve Rogers', N'salesmanager', N'參加', 11, CAST(N'2021-08-29T22:21:55.6250000' AS DateTime2), CAST(N'2021-08-29T22:21:55.6250000' AS DateTime2))
INSERT [dbo].[bulEnroll] ([enrollId], [empDept], [empName], [empNo], [enrollStatus], [postno], [updateTime], [createTime]) VALUES (5, N'SALES', N'Steve Rogers', N'salesmanager', N'參加', 6, CAST(N'2021-08-29T22:22:10.8450000' AS DateTime2), CAST(N'2021-08-29T22:22:10.8450000' AS DateTime2))
INSERT [dbo].[bulEnroll] ([enrollId], [empDept], [empName], [empNo], [enrollStatus], [postno], [updateTime], [createTime]) VALUES (6, N'RD', N'Hank Pym', N'rd3', N'取消參加', 9, CAST(N'2021-08-29T22:24:07.0780000' AS DateTime2), CAST(N'2021-08-29T22:23:31.5900000' AS DateTime2))
INSERT [dbo].[bulEnroll] ([enrollId], [empDept], [empName], [empNo], [enrollStatus], [postno], [updateTime], [createTime]) VALUES (7, N'SALES', N'Wanda Maximoff', N'sales1', N'參加', 11, CAST(N'2021-08-29T23:42:53.4010000' AS DateTime2), CAST(N'2021-08-29T23:42:04.0480000' AS DateTime2))
INSERT [dbo].[bulEnroll] ([enrollId], [empDept], [empName], [empNo], [enrollStatus], [postno], [updateTime], [createTime]) VALUES (8, N'RD', N'Brandt', N'rd5', N'參加', 11, CAST(N'2021-08-29T23:43:21.1340000' AS DateTime2), CAST(N'2021-08-29T23:43:21.1340000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[bulEnroll] OFF
GO
SET IDENTITY_INSERT [dbo].[bulletin] ON 

INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'公告', N'COVID-19防疫注意事項', CAST(N'2021-06-01' AS Date), N'<p>內容待補</p>', CAST(N'2021-12-31' AS Date), 1, N'normal', CAST(N'2021-08-29T19:44:15.8930000' AS DateTime2), N'', 0, N'內容待補', NULL, NULL, NULL)
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'公告', N'端午節禮金發送', CAST(N'2021-06-07' AS Date), N'<p>內容待補</p>', CAST(N'2021-06-18' AS Date), 2, N'normal', CAST(N'2021-08-29T19:59:17.0710000' AS DateTime2), N'', NULL, N'內容待補', NULL, NULL, NULL)
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'公告', N'今年度家庭日延期舉辦', CAST(N'2021-06-10' AS Date), N'<p>內容待補</p>', CAST(N'2021-06-30' AS Date), 3, N'normal', CAST(N'2021-08-29T19:59:53.9180000' AS DateTime2), N'', NULL, N'內容待補', NULL, NULL, NULL)
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'活動', N'7月份生日會', CAST(N'2021-06-25' AS Date), N'<p>內容待補</p>', CAST(N'2021-07-31' AS Date), 4, N'normal', CAST(N'2021-08-29T20:00:49.8710000' AS DateTime2), N'限制', 20, N'內容待補', NULL, NULL, CAST(N'2021-06-30' AS Date))
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'公告', N'新增特約店家-住宿9折優惠', CAST(N'2021-07-01' AS Date), N'<p>內容待補內容待補內容待補</p>', CAST(N'2021-09-30' AS Date), 5, N'normal', CAST(N'2021-08-29T20:01:32.3350000' AS DateTime2), N'', NULL, N'內容待補內容待補內容待補', NULL, NULL, NULL)
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'活動', N'8月份生日會', CAST(N'2021-07-25' AS Date), N'<p>內容待補內容待補</p>', CAST(N'2021-08-31' AS Date), 6, N'normal', CAST(N'2021-08-29T20:02:56.1300000' AS DateTime2), N'限制', 20, N'內容待補內容待補', NULL, NULL, CAST(N'2021-07-31' AS Date))
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'公告', N'人事異動通知：洛基升任阿斯嘉國王', CAST(N'2021-08-01' AS Date), N'<p>內容待補內容待補</p>', CAST(N'2021-10-31' AS Date), 7, N'normal', CAST(N'2021-08-29T20:04:46.6980000' AS DateTime2), N'', NULL, N'內容待補內容待補', NULL, NULL, NULL)
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'公告', N'新增特約店家-餐飲滿千85折', CAST(N'2021-08-03' AS Date), N'<p>內容待補內容待補</p>', CAST(N'2021-09-30' AS Date), 8, N'normal', CAST(N'2021-08-29T20:15:33.5480000' AS DateTime2), N'', NULL, N'內容待補內容待補', NULL, NULL, NULL)
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'活動', N'模仿大賽 (洛基禁止參加)', CAST(N'2021-08-10' AS Date), N'<p>內容待補內容待補</p>', CAST(N'2021-08-31' AS Date), 9, N'normal', CAST(N'2021-08-29T20:17:11.3960000' AS DateTime2), N'限制', 10, N'內容待補內容待補', NULL, NULL, CAST(N'2021-08-20' AS Date))
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'活動', N'9月份生日會', CAST(N'2021-08-25' AS Date), N'<p>內容待補內容待補</p>', CAST(N'2021-09-30' AS Date), 10, N'normal', CAST(N'2021-08-29T20:19:06.1980000' AS DateTime2), N'限制', 20, N'內容待補內容待補', NULL, NULL, CAST(N'2021-08-31' AS Date))
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'活動', N'誰能拿起雷神之鎚', CAST(N'2021-08-27' AS Date), N'<p>內容待補內容待補內容待補內容待補</p>', CAST(N'2021-09-20' AS Date), 11, N'normal', CAST(N'2021-08-29T20:20:10.4130000' AS DateTime2), N'限制', 5, N'內容待補內容待補內容待補內容待補', NULL, NULL, CAST(N'2021-09-15' AS Date))
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'公告', N'年度員工健康檢查', CAST(N'2021-08-30' AS Date), N'<p>內容待補內容待補內容待補內容待補</p>', CAST(N'2021-09-20' AS Date), 12, N'normal', CAST(N'2021-08-29T20:21:00.6860000' AS DateTime2), N'', NULL, N'內容待補內容待補內容待補內容待補', NULL, NULL, NULL)
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'公告', N'清潔消毒通知', CAST(N'2021-08-31' AS Date), N'<p>內容待補內容待補內容待補內容待補</p>', CAST(N'2021-09-10' AS Date), 13, N'normal', CAST(N'2021-08-29T20:21:55.6630000' AS DateTime2), N'', NULL, N'內容待補內容待補內容待補內容待補', NULL, NULL, NULL)
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'活動', N'中秋歌唱大賽', CAST(N'2021-09-01' AS Date), N'<p>內容待補內容待補</p>', CAST(N'2021-10-31' AS Date), 14, N'normal', CAST(N'2021-08-29T20:23:23.0570000' AS DateTime2), N'限制', 15, N'內容待補內容待補', NULL, NULL, CAST(N'2021-09-30' AS Date))
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'公告', N'新社團成立-冥想社', CAST(N'2021-09-03' AS Date), N'<p>內容待補內容待補內容待補內容待補</p>', CAST(N'2021-10-31' AS Date), 15, N'normal', CAST(N'2021-08-29T20:24:33.3990000' AS DateTime2), N'', NULL, N'內容待補內容待補內容待補內容待補', NULL, NULL, NULL)
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'活動', N'網球比賽', CAST(N'2021-09-05' AS Date), N'<p>內容待補內容待補</p>', CAST(N'2021-09-30' AS Date), 16, N'normal', CAST(N'2021-08-29T20:25:56.9860000' AS DateTime2), N'限制', 10, N'內容待補內容待補', NULL, NULL, CAST(N'2021-09-20' AS Date))
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'公告', N'中秋禮金發送', CAST(N'2021-09-16' AS Date), N'<p>內容待補內容待補</p>', CAST(N'2021-09-30' AS Date), 17, N'normal', CAST(N'2021-08-29T20:26:42.6570000' AS DateTime2), N'', NULL, N'內容待補內容待補', NULL, NULL, NULL)
INSERT [dbo].[bulletin] ([type], [title], [postdate], [description], [exp], [postno], [poststatus], [createTime], [quotatype], [quota], [desText], [file1], [picture], [endDate]) VALUES (N'活動', N'10月份生日會', CAST(N'2021-09-25' AS Date), N'<p>內容待補內容待補</p>', CAST(N'2021-10-31' AS Date), 18, N'normal', CAST(N'2021-08-29T20:27:47.6080000' AS DateTime2), N'限制', 20, N'內容待補內容待補', NULL, NULL, CAST(N'2021-09-30' AS Date))
SET IDENTITY_INSERT [dbo].[bulletin] OFF
GO
SET IDENTITY_INSERT [dbo].[bulLike] ON 

INSERT [dbo].[bulLike] ([id], [empNo], [likeStatus], [postno]) VALUES (1, N'rd1', N'喜歡', 9)
INSERT [dbo].[bulLike] ([id], [empNo], [likeStatus], [postno]) VALUES (2, N'rd1', N'喜歡', 8)
INSERT [dbo].[bulLike] ([id], [empNo], [likeStatus], [postno]) VALUES (3, N'salesmanager', N'喜歡', 11)
INSERT [dbo].[bulLike] ([id], [empNo], [likeStatus], [postno]) VALUES (4, N'salesmanager', N'喜歡', 6)
INSERT [dbo].[bulLike] ([id], [empNo], [likeStatus], [postno]) VALUES (5, N'rd3', N'喜歡', 9)
INSERT [dbo].[bulLike] ([id], [empNo], [likeStatus], [postno]) VALUES (6, N'hr1', N'喜歡', 7)
INSERT [dbo].[bulLike] ([id], [empNo], [likeStatus], [postno]) VALUES (7, N'sales1', N'喜歡', 11)
SET IDENTITY_INSERT [dbo].[bulLike] OFF
GO
