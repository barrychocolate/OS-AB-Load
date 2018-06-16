declare @filecount as tinyint
declare @sqlbulk as varchar (2000)

--This variable is used to loop through all of the table numbers
set @filecount =1

While(@filecount < 36)
	begin
	
		set @sqlbulk = 'INSERT INTO [dbo].[ABPlusData] SELECT * from [dbo].[ABPlusData_' + convert(varchar, @filecount) + ']'

		print 'Inserting Table ' + convert(varchar, @filecount) + ' into ABPlusData'
		exec (@sqlbulk)

		Set @filecount = @filecount+1
	end  

