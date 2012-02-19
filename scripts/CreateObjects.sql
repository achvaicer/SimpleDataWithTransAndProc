USE [SimpleDataWithTransactionAndStoredProcedureDB]
GO

/****** Object:  Table [dbo].[TableOne]    Script Date: 02/19/2012 07:43:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TableOne](
	[ColumnA] [varchar](250) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[TableTwo](
	[ColumnB] [varchar](250) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


CREATE PROCEDURE [dbo].[InsertStoredProcedure]
	@ValueA varchar(250),
	@ValueB varchar(250)
AS
BEGIN
	INSERT INTO TableOne VALUES (@ValueA);
	INSERT INTO TableTwo VALUES (@ValueB);
END
GO

CREATE PROCEDURE [dbo].[DeleteStoredProcedure]
AS
BEGIN
	DELETE FROM TableOne;
	DELETE FROM TableTwo;
END
GO