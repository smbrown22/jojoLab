-- Question One 
select stand_name, upper(stand_name) as upper_stand, lower(stand_name) as lower_stand, initcap(stand_name) as title_stand from stand_user;
-- Question Two 
select user_name, catchphrase, length(catchphrase) from stand_user order by length(catchphrase) desc; 
-- Question Three 
select stand_name, substr(stand_name, 0, 8) as first_eight from stand_user; 
-- Question Four 
select stand_name, instr(lower(stand_name), 'World') as where_is_world from stand_user; 
-- Question Five 
select user_name, lpad(power, 8, '*') as power_bar from stand_user; 
-- Question Six 
select power, round(power, -2)as rounded_power, trunc(power, -2)as trunc_power, mod(power, 100)as mod_power from stand_user; 
-- Question Seven
select user_name, nvl(precision, 0) as precision_status from stand_user;  
-- Question Eight 
select user_name, debut_date, next_day(add_months(debut_date, 6), 'MONDAY') as six_months from stand_user; 
-- Question Nine 
select user_name, debut_date, round(months_between(sysdate, debut_date), 0) AS months_since_debut from stand_user order by months_since_debut desc;
-- Question Ten 
select user_name, stand_name, power || ' wields ' || stand_name || ' with power ' || power || ', but dreams of ' || (power * 3) as dream_statement from stand_user;
-- Question Eleven 
select stand_name, instr(lower(stand_name), 'world') as where_is_world from stand_user; 
-- Question Twelve 
select user_name, stand_name, soundex(stand_name) AS soundcode from stand_user order by soundcode;
