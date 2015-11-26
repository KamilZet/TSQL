if object_id('util.spreinitobject') is not null
	begin
	select case type
	when 'U' then drop table 
	from sys.objects where object_id = object_id('util.spreinitobject')
