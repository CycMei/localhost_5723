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











set @basename = 'account_book';
set @defaultChar = 'utf8';
set @defaultColl = 'utf8_general_ci';

set @createstr = concat('drop database if exists ', @basename, ';');
prepare stmt from @createstr;
execute stmt;
deallocate prepare stmt;

set @createstr = concat('create database if not exists ', @basename, ' ');
set @createstr = concat(@createstr, ' default character set = ''', @defaultChar, '''', ' default collate = ''', @defaultColl, ''';');
-- select concat('''''''',30);
-- select concat('''', 30);
-- set @createstr = concat(@createstr, "default character set = '", @defaultChar, "'", " default collate = '", @defaultColl, "';");
select @createstr;
prepare stmt from @createstr;
execute stmt;
deallocate prepare stmt;