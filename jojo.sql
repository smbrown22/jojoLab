-- Question One 
select stand_name, upper(stand_name) as upper_stand, lower(stand_name) as lower_stand, initcap(stand_name) as title_stand from stand_user;

-- Question Two 
select user_name, catchphrase, length(catchphrase) from stand_user order by length(catchphrase) desc; 

-- Question Three 
select stand_name, substr(stand_name, 0, 8) as first_eight from stand_user; 

-- Question Four 
select stand_name, instr(stand_name, 'World') as where_is_world from stand_user; 

-- Question Five 
select user_name, lpad(power, 8, '*') as power_bar from stand_user; 

-- Question Six 

-- Question Seven
select user_name, nvl(precision, 0) as precision_status from stand_user;  

-- Question Eight 

-- Question Nine 

-- Question Ten 

-- Question Eleven 

-- Question Twelve 

