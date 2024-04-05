SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS [SalesLT].[ProductStaging]
GO
CREATE TABLE [SalesLT].[ProductStaging](
	[StagingID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ProductNumber] [nvarchar](25) NOT NULL,
	[StandardCost] [money] NOT NULL,
	[ListPrice] [money] NOT NULL
)
GO
ALTER TABLE [SalesLT].[ProductStaging] ADD  CONSTRAINT [PK_ProductStaging_StagingID] PRIMARY KEY CLUSTERED 
(
	[StagingID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF) ON [PRIMARY]
GO