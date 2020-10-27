USE [PeerEd]
GO

 --Object  Table [dbo].[Users]    Script Date 10262020 63425 PM 
DROP TABLE [dbo].[Users]
GO

 --Object  Table [dbo].[Users]    Script Date 10262020 63425 PM 
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Users](
	[User_ID] [int] IDENTITY(1,1) Primary Key,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO


