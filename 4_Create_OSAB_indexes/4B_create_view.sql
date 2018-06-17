/****** Object:  View [dbo].[vw_UPRNs_by_Postcode]    Script Date: 17/06/2018 21:49:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[vw_UPRNs_by_Postcode] as
select postcode, count(uprn) as uprn_count from dbo.ABPlusData where postcode is not null
group by POSTCODE
GO


