USE [PeerEd]
GO

/****** Object:  Table [dbo].[Videos]    Script Date: 10/26/2020 6:37:26 PM ******/
DROP TABLE [dbo].[Videos]
GO

/****** Object:  Table [dbo].[Videos]    Script Date: 10/26/2020 6:37:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Videos](
	[Video_ID] [int] IDENTITY(1,1) Primary Key,
	[Title] [varchar](500) NOT NULL,
	[Link] [varchar](500) NOT NULL,
	[Subject] [varchar](100) NOT NULL,
	[Topic_ID] [int] NOT NULL,
	
	CONSTRAINT FK_Topics_Topic_ID FOREIGN KEY (Topic_ID)
    REFERENCES dbo.Topics (Topic_ID)
) ON [PRIMARY]


