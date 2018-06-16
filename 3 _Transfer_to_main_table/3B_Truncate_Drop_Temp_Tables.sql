declare @filecount as tinyint
declare @sqlbulk as varchar (2000)

--This variable is used to loop through all of the table numbers
set @filecount =1

While(@filecount < 37)
	begin
		
		set @sqlbulk = 'TRUNCATE TABLE [dbo].[ABPlusData_' + convert(varchar, @filecount) + ']'
		print 'Truncating Table ' + convert(varchar, @filecount) 
		--print (@sqlbulk)
		exec (@sqlbulk)
		

		set @sqlbulk = 'DROP TABLE [dbo].[ABPlusData_' + convert(varchar, @filecount) + ']'
		print 'Dropping Table ' + convert(varchar, @filecount) 
		--print (@sqlbulk)
		exec (@sqlbulk)
		

		Set @filecount = @filecount+1
	end  

