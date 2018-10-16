drop table if exists `account_book`.`ac_unit`;

create table if not exists `account_book`.`ac_unit`(
	`id` tinyint unsigned not null primary key auto_increment comment '主键',
	`symbol` char(3) character set utf8 collate utf8_general_ci unique key not null comment '符号',
	`description` varchar(256) character set utf8 collate utf8_general_ci not null comment '描述'
)
default character set = utf8
default collate = utf8_general_ci
engine = innodb
comment '单位表'
;

insert into `account_book`.`ac_unit`(`symbol`, `description`) values
('g', '克'),
('kg', '千克'),
('￥', '元')
;