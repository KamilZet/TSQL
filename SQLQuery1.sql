use AdventureWorks2012
go

declare
	@sqlCmd varchar(400) =''

select @sqlcmd = @sqlcmd + ',' + COLUMN_NAME from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'department' and TABLE_SCHEMA = 'humanresources'

select @sqlcmd