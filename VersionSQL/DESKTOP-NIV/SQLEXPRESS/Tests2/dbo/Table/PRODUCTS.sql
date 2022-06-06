/****** Object:  Table [dbo].[PRODUCTS]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[PRODUCTS](
	[Product_ID] [int] NOT NULL,
	[Product_name] [varchar](20) NULL,
	[Size] [varchar](20) NULL,
	[Price] [smallmoney] NULL,
	[in_stock] [bit] NULL,
	[Category] [varchar](20) NULL,
 CONSTRAINT [PK_PRODUCTS] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[PRODUCTS]  WITH CHECK ADD  CONSTRAINT [FK_CategoryProduct] FOREIGN KEY([Category])
REFERENCES [dbo].[CATEGORIES] ([Category_Name])
ALTER TABLE [dbo].[PRODUCTS] CHECK CONSTRAINT [FK_CategoryProduct]
ALTER TABLE [dbo].[PRODUCTS]  WITH CHECK ADD  CONSTRAINT [CK_Price] CHECK  (([Price]>(0)))
ALTER TABLE [dbo].[PRODUCTS] CHECK CONSTRAINT [CK_Price]
