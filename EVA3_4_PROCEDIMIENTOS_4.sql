delimiter ||
create procedure consultar_num_actores(in apellido varchar(45), out cant int)
begin
	select count(*) into cant from actor where last_name = apellido;
    
end||
delimiter ;