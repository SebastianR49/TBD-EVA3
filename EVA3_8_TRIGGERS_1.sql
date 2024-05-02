delimiter ||
create function generar_actorid()
returns int reads sql data
begin
	declare resu int;
	declare actorid int;
    select max(actor_id) from actor into actorid;
    if actorid = null then
		set actorid = 0;
    end if;
    set resu = actorid + 1;
    return resu;
end||
delimiter ;