
declare @path as varchar(255)
declare @filepath as varchar(255)
declare @filename as varchar(255)
declare @filecount as tinyint
declare @sqlbulk as varchar (2000)

--Change @path to point to the directory your files are in
set @path = 'D:\OS_Mapping_Data\AddressBase_Plus\ABFLGB_CSV\data\'
--If you are loading Address Base Plus data from a different time then change @filename to match your filename leaving off the last two digits and .csv
set @filename='AddressBasePlus_FULL_2018-04-25_0'

--This variable is used to loop through all of the files and is also used for the table numbers
set @filecount =1


While(@filecount < 37)
	begin
		set @filepath = @path + @filename + format(@filecount, '0#') + '.csv'
	
		set @sqlbulk = 'BULK INSERT dbo.ABPlusData_' + convert(varchar, @filecount) + ' FROM ''' + @filepath + ''' 
		WITH     ( 
			FIELDTERMINATOR = '','', 
			ROWTERMINATOR = ''\n'', 
			FORMAT = ''csv'' )'
		--print @sqlbulk
		print 'Loading file ' + convert(varchar, @filecount)
		exec (@sqlbulk)

	  Set @filecount = @filecount+1
end  
