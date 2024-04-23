delimiter ||
create procedure consultar_actore(in actorid int)
begin
	select * from actor
	where actor_id = actorid;
end||
delimiter ;