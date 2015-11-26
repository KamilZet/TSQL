use AdventureWorks2012
go


if object_id('util.spReinitObject') is not null DROP PROC util.spReinitObject
GO

create procedure util.spReinitObject
(
	@objName sysname
)
as
begin;set nocount on

declare @sql varchar(100);

SELECT
	@sql = 'if object_id(''AdventureWorks2012.' + @objName + ''') is not null drop ' + CASE type
		WHEN 'U' THEN 'table ' + @objName
		WHEN 'P' THEN 'procedure ' + @objName
		ELSE null
	END
FROM sys.objects
WHERE object_id = OBJECT_ID(@objName);

if (@sql is not null) exec @sql

END
GO


EXEC util.spReinitObject 'util.spReinitObject'
GO