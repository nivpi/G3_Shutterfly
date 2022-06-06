﻿/****** Object:  Table [dbo].[PHOTOS]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[PHOTOS](
	[URL] [varchar](80) NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Date_Uploaded] [date] NULL,
 CONSTRAINT [PK_PHOTOS] PRIMARY KEY CLUSTERED 
(
	[URL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[PHOTOS]  WITH CHECK ADD  CONSTRAINT [FK_CustomerPhoto] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[CUSTOMERS] ([Customer_ID])
ALTER TABLE [dbo].[PHOTOS] CHECK CONSTRAINT [FK_CustomerPhoto]