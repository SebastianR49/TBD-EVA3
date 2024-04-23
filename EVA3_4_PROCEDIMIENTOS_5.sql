delimiter ||
create procedure agregar_actor(nombre varchar(45), apellidos varchar(45))
begin
	declare actorid int;
    select max(actor_id) from actor into actorid;
    set actorid = actorid + 1;
    insert into actor(actor_id, first_name, last_name)
		values(actorid, nombre, apellidos);

end ||
delimiter ;