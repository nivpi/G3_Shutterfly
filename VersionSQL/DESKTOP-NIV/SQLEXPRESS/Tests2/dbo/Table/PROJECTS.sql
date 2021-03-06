/****** Object:  Table [dbo].[PROJECTS]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[PROJECTS](
	[Customer_ID] [int] NOT NULL,
	[DT_Updated] [datetime] NOT NULL,
	[Project_Name] [varchar](20) NULL,
	[Product_ID] [int] NOT NULL,
 CONSTRAINT [PK_PROJECTS] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC,
	[DT_Updated] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[PROJECTS]  WITH CHECK ADD  CONSTRAINT [FK_CustomerProject] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[CUSTOMERS] ([Customer_ID])
ALTER TABLE [dbo].[PROJECTS] CHECK CONSTRAINT [FK_CustomerProject]
ALTER TABLE [dbo].[PROJECTS]  WITH CHECK ADD  CONSTRAINT [FK_ProductProject] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[PRODUCTS] ([Product_ID])
ALTER TABLE [dbo].[PROJECTS] CHECK CONSTRAINT [FK_ProductProject]
