delimiter ||
create function agregar_actor(nombre varchar(45), apellidos varchar(45))
returns int modifies sql data
deterministic
begin
	declare actorid int;
    select max(actor_id) from actor into actorid;
    set actorid = actorid + 1;
    insert into actor(actor_id, first_name, last_name)
		values(actorid, nombre, apellidos);
    return actorid;

end ||
delimiter ;