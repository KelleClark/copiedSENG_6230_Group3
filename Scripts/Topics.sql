USE [PeerEd]
GO

Drop Table .dbo.Topics

CREATE TABLE [dbo].[Topics](
	[Topic_ID] [int] IDENTITY(1,1) Primary Key,
	[Name] [varchar](50) NOT NULL,
	
) ON [PRIMARY]
GO


