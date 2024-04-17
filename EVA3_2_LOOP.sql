delimiter ||
create function sumatoria(num int)
returns int deterministic
begin
	declare resu int;
    declare cont int;
    
    set resu = 0;
    set cont = 0;
    
    sum: loop
		if cont < num then
			set cont = cont + 1;
            set resu = resu + cont;
		else
			leave sum;
        end if;
    end loop sum;
    return resu;
end||
delimiter ;