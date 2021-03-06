SET ANSI_PADDING ON
GO

/****** Object:  Index [[index_Postcode]]    Script Date: 15/06/2018 23:09:20 ******/
CREATE NONCLUSTERED INDEX [index_Postcode] ON [dbo].[ABPlusData]
(
	[POSTCODE] ASC
)
INCLUDE ([UPRN]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

SET ANSI_PADDING ON
GO

/****** Object:  Index [index_Pcode_BNum]    Script Date: 15/06/2018 23:09:20 ******/
CREATE NONCLUSTERED INDEX [index_Pcode_BNum] ON [dbo].[ABPlusData]
(
	[POSTCODE] ASC,
	[BUILDING_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Index [index_UPRN]    Script Date: 15/06/2018 23:09:20 ******/
CREATE UNIQUE NONCLUSTERED INDEX [index_UPRN] ON [dbo].[ABPlusData]
(
	[UPRN] ASC
)
INCLUDE ([POSTCODE])WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


