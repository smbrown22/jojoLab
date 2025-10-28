-- Question One 
select avg(power) as avg_power, min(power) as min_power, max(power) as max_power from stand_user; 
-- Question Two 
select count(precision) as precision_exist, count(user_name) as users_exist from stand_user; 
-- Question Three 
select round(stddev(power), 3) as stddev_power, round(variance(power), 3) as variancepower from stand_user; 
-- Question Four 
select precision, avg(power) as avg_power from stand_user where precision is not null group by precision; 
-- Question Five 
select precision, avg(power) as avg_power from stand_user where precision is not null group by precision having avg(power) > 80; 
-- Question Six 
select user_name, stand_name, power - (select avg(power) from stand_user) as difference from stand_user; 
-- Question Seven
 select round(avg(power), 2) from stand_user; 
-- Question Eight 
select precision, power from stand_user where precision is not null group by rollup(precision, power) having power is not null order by precision; 
-- Question Nine 
SELECT EXTRACT(YEAR FROM debut_date) AS debut_year,
       precision,
       SUM(power) AS total_power
FROM stand_user
GROUP BY CUBE(EXTRACT(YEAR FROM debut_date), precision)
ORDER BY debut_year, precision;
