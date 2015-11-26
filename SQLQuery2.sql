set NOCOUNT ON
GO

declare @sql varchar(100),@objName sysname = 'util.spReinitObject';

if object_id(@objName) is not null select 1 else select 0


SELECT
	@sql = 'if object_id(''AdventureWorks2012.' + @objName + ''') is not null drop ' + CASE type
		WHEN 'U' THEN 'table ' + @objName
		WHEN 'P' THEN 'procedure ' + @objName
		ELSE null
	end	
FROM sys.objects
WHERE object_id = OBJECT_ID(@objName);

if (@sql is not null) print @sql


select DISTINCT type,type_desc from sys.objects


select 'a' + null