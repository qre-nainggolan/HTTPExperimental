USE [WBS-PGS]
GO

/****** Object:  Table [dbo].[TRS_VehicleImage]    Script Date: 14/02/2020 16:46:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TRS_VehicleImage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Mill] [varchar](64) NULL,
	[VehicleNo] [varchar](64) NULL,
	[TripDate] [varchar](64) NULL,
	[Status] [varchar](32) NULL,
	[FilePath] [varchar](512) NULL,
	[DateCreate] [datetime] NULL,
	[DateUpdate] [datetime] NULL,
	[Creator] [varchar](512) NULL,
	[Active] [int] NULL,
 CONSTRAINT [PK_TRS_VehicleImage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TRS_VehicleImage] ADD  CONSTRAINT [DF_TRS_VehicleImage_active]  DEFAULT ((1)) FOR [Active]
GO


