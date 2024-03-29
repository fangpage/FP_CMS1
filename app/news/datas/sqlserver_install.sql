SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FP_News_NewsInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[channelid] [int] NULL,
	[sortid] [int] NULL,
	[typelist] [nvarchar](200) NULL,
	[title] [nvarchar](200) NULL,
	[subtitle] [nvarchar](200) NULL,
	[color] [char](7) NULL,
	[strong] [int] NULL,
	[keywords] [nvarchar](200) NULL,
	[otherurl] [nvarchar](200) NULL,
	[content] [ntext] NULL,
	[description] [nvarchar](200) NULL,
	[img] [nvarchar](200) NULL,
	[file] [nvarchar](200) NULL,
	[source] [nvarchar](200) NULL,
	[author] [nvarchar](60) NULL,
	[postdatetime] [datetime] NULL,
	[views] [int] NULL,
	[downloads] [int] NULL,
	[comments] [int] NULL,
	[attachid] [nvarchar](255) NULL,
	[editor] [nvarchar](60) NULL,
	[status] [int] NULL,
	[allowcomment] [int] NULL,
	[allowcopy] [int] NULL,
	[istop] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FP_News_ArticleInfo]    Script Date: 04/17/2017 20:58:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_News_ArticleInfo](
	[sortid] [int] NOT NULL,
	[title] [nvarchar](200) NULL,
	[img] [nvarchar](200) NULL,
	[description] [nvarchar](200) NULL,
	[attachid] [nvarchar](250) NULL,
	[content] [ntext] NULL,
 CONSTRAINT [PK__FP_News___286137E0276EDEB3] PRIMARY KEY CLUSTERED 
(
	[sortid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Default [DF__FP_News_N__color__29572725]    Script Date: 04/17/2017 20:58:26 ******/
ALTER TABLE [dbo].[FP_News_NewsInfo] ADD  DEFAULT (N'#000000') FOR [color]
GO
