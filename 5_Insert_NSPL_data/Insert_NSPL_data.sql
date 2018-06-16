
BULK INSERT dbo.NSPL
/* update the path to point to your copy of the NSPL data  */
FROM 'D:\OS_Mapping_Data\Lookups\NSPL_MAY_2018_UK\Data\NSPL_MAY_2018_UK.csv'
 WITH     ( FIELDTERMINATOR = ',', ROWTERMINATOR = '\n', FORMAT = 'csv' )
 go


 create index index_Postcode on dbo.NSPL ([PCD],[PCD2])
go

 create index index_OA on dbo.NSPL ([OA11])
go

 create index index_LSOA on dbo.NSPL ([LSOA11])
go

 create index index_MSOA on dbo.NSPL ([MSOA11])
go

 create index index_WZ on dbo.NSPL ([WZ11])
go
