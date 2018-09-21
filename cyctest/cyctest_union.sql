drop table if exists Acyctest_books;

create table if not exists Acyctest_books(
	`id` smallint(5) unsigned not null auto_increment primary key comment '主键 id',
	`name` varchar(255) character set utf8 collate utf8_general_ci not null default '' comment '书名',
	`create_time` datetime not null default CURRENT_TIMESTAMP comment '创建时间',
	`hot` bool not null default 0 comment '是否热门'
) 
default character set = utf8 
default collate = utf8_general_ci 
engine = InnoDB
;

-- alter table Acyctest_books 
-- 	modify column hot bool not null unique default 0 comment '是否热门';

alter table Acyctest_books
	add unique key `name`(`name`);


-- alter table Acyctest_books
-- 	AUTO_INCREMENT = 3;




-- select concat('select ',group_concat(COLUMN_NAME),' from ', TABLE_NAME,' ') as S
-- 	from information_schema.`COLUMNS`
-- 	where table_name = 'Acyctest_books' and TABLE_SCHEMA = 'cyctest' and COLUMN_NAME != 'id';

show full columns from Acyctest_books from cyctest;

-- select COLUMN_NAME, DATA_TYPE, CHARACTER_SET_NAME, COLLATION_NAME
-- 	from information_schema.`COLUMNS` 
-- 	where TABLE_NAME = 'Acyctest_books' and TABLE_SCHEMA = 'cyctest';





insert into Acyctest_books(`name`, hot) values('head first java1', true);
insert into Acyctest_books(`name`, hot) values('head first java2', false);
insert into Acyctest_books(`name`, hot) values('head first java3', true);
insert into Acyctest_books(`name`, hot) values('head first java4', false);
insert into Acyctest_books(`name`, hot) values('head first java5', false);
insert into Acyctest_books(`name`, hot) values('head first java6', false);
insert into Acyctest_books(`name`, hot) values('head first java7', true);
insert into Acyctest_books(`name`, hot) values('head first java8', false);

select * from Acyctest_books;


(select * from acyctest_books where hot = 0)
 union
(select * from acyctest_books where id % 2 = 0)
;

select * from acyctest_books as a right join acyctest_books as b on a.id = b.hot;






