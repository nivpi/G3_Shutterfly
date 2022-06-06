/****** Object:  Table [dbo].[BILLINGS]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[BILLINGS](
	[CC_Number] [varchar](20) NOT NULL,
	[CC_Expiry] [varchar](4) NULL,
	[CC_Holder] [varchar](30) NULL,
	[Street_Name] [varchar](20) NULL,
	[Street_Number] [varchar](7) NULL,
	[City] [varchar](20) NULL,
	[Zip] [varchar](10) NULL,
 CONSTRAINT [PK_BILLINGS] PRIMARY KEY CLUSTERED 
(
	[CC_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[BILLINGS]  WITH CHECK ADD  CONSTRAINT [FK_CityBillings] FOREIGN KEY([City])
REFERENCES [dbo].[CITIES] ([City])
ALTER TABLE [dbo].[BILLINGS] CHECK CONSTRAINT [FK_CityBillings]
