USE [PeerEd]
GO

DROP TABLE .dbo.Playlist

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Playlist](
	[Playlist_ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Playlist_Name] nvarchar(50) NOT NULL,
	[Create_Date] DateTime NOT NULL,
	[User_ID] [int] NOT NULL,

	CONSTRAINT FK_Users_User_ID FOREIGN KEY (User_ID)
    REFERENCES dbo.Users (User_ID)
) ON [PRIMARY]
GO


