delimiter ||
create function factorial(num int)
returns int deterministic
begin
	declare resu int;
    declare cont int;
    
    set resu = 1;
    set cont = 1;
    
    fac: loop
		if cont < num then
			set cont = cont + 1;
            set resu = resu * cont;
		else
			leave fac;
        end if;
    end loop fac;
    return resu;
end||
delimiter ;