/****** Object:  Table [dbo].[ORDERS]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[ORDERS](
	[Order_ID] [bigint] NOT NULL,
	[Order_DT] [smalldatetime] NULL,
	[Carrier] [varchar](15) NULL,
	[DT_Expected] [smalldatetime] NULL,
	[Customer] [int] NULL,
	[Project_DT] [datetime] NULL,
	[Credit_Card] [varchar](20) NULL,
 CONSTRAINT [PK_ORDERS] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_BillingOrder] FOREIGN KEY([Credit_Card])
REFERENCES [dbo].[BILLINGS] ([CC_Number])
ALTER TABLE [dbo].[ORDERS] CHECK CONSTRAINT [FK_BillingOrder]
ALTER TABLE [dbo].[ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_ProjectOrder] FOREIGN KEY([Customer], [Project_DT])
REFERENCES [dbo].[PROJECTS] ([Customer_ID], [DT_Updated])
ALTER TABLE [dbo].[ORDERS] CHECK CONSTRAINT [FK_ProjectOrder]
