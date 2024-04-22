delimiter ||
create function contar()
returns int reads sql data
begin
	declare cont int;
    select count(*) into cont from actor;
    return cont;
    
end||
delimiter ;