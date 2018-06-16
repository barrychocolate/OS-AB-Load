/****** Object:  Table [dbo].[NSPL]    Script Date: 15/06/2018 17:53:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NSPL](
	[PCD] [varchar](7) NOT NULL,
	[PCD2] [varchar](8) NOT NULL,
	[PCDS] [varchar](8) NOT NULL,
	[DOINTR] [varchar](6) NOT NULL,
	[DOTERM] [varchar](6) NOT NULL,
	[USERTYPE] [smallint] NULL,
	[OSEAST1M] [numeric](18, 0) NULL,
	[OSNRTH1M] [numeric](18, 0) NULL,
	[OSGRDIND] [smallint] NULL,
	[OA11] [varchar](9) NULL,
	[CTY] [varchar](9) NULL,
	[CED] [varchar](9) NULL,
	[LAUA] [varchar](9) NULL,
	[WARD] [varchar](9) NULL,
	[HLTHAU] [varchar](9) NULL,
	[NHSER] [varchar](9) NULL,
	[CTRY] [varchar](9) NOT NULL,
	[RGN] [varchar](9) NULL,
	[PCON] [varchar](9) NULL,
	[EER] [varchar](9) NULL,
	[TECLEC] [varchar](9) NULL,
	[TTWA] [varchar](9) NULL,
	[PCT] [varchar](9) NULL,
	[NUTS] [varchar](10) NULL,
	[PARK] [varchar](9) NULL,
	[LSOA11] [varchar](9) NULL,
	[MSOA11] [varchar](9) NULL,
	[WZ11] [varchar](9) NULL,
	[CCG] [varchar](9) NULL,
	[BUA11] [varchar](9) NULL,
	[BUASD11] [varchar](9) NULL,
	[RU11IND] [varchar](2) NULL,
	[OAC11] [varchar](3) NULL,
	[LAT] [float] NOT NULL,
	[LONG] [float] NOT NULL,
	[LEP1] [varchar](9) NULL,
	[LEP2] [varchar](9) NULL,
	[PFA] [varchar](9) NULL,
	[IMD] [numeric](18, 0) NOT NULL,
	[calncv] [varchar](9) null,
	[stp] [varchar](9) null
) ON [PRIMARY]
GO