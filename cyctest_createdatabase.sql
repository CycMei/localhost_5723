show variables like '%datadir%';

show global variables like "%datadir%";

select * from `performance_schema`.`global_variables` where VARIABLE_NAME like '%datadir%';

show character set like 'utf8%';
select * from information_schema.CHARACTER_SETS where CHARACTER_SET_NAME like 'utf8%';
select * from information_schema.COLLATIONS;


show storage engines;
-- select * from information_schema.`ENGINES`;


drop database if exists cyctest;
create database if not exists cyctest default character set = 'utf8' default collate = 'utf8_general_ci';
use cyctest;