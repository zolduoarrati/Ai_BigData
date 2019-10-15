USE [ght]
GO

/****** Object:  Table [dbo].[commits]    Script Date: 16/10/2019 9:06:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[commits](
	[c_id] [varchar](50) NULL,
	[c_sha] [varchar](50) NULL,
	[c_author_id] [varchar](50) NULL,
	[c_committer_id] [varchar](50) NULL,
	[c_project_id] [varchar](50) NULL,
	[c_created_at] [varchar](50) NULL,
	[country_code] [varchar](50) NULL
) ON [PRIMARY]
GO


