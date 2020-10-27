USE [PeerEd]
GO

DROP Table PeerEd.dbo.History

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[History](
	[History_ID] [int] IDENTITY(1,1) Primary Key,
	[Video_ID] [int] NOT NULL,
	[View_Date] DateTime NOT NULL,
	[User_ID] [int] NOT NULL,


	CONSTRAINT FK_History_Videos_Video_ID FOREIGN KEY (Video_ID)
    REFERENCES dbo.Videos (Video_ID),

	CONSTRAINT FK_History_User_User_ID FOREIGN KEY (User_ID)
    REFERENCES dbo.Users (User_ID)
) ON [PRIMARY]
GO
