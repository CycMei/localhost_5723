drop table if exists `account_book`.`ac_unit`;

create table if not exists `account_book`.`ac_unit`(
	`id` tinyint unsigned not null primary key auto_increment comment '主键',
	`symbol` char(2) not null comment '符号',
	`description` varchar(256) not null default '' comment '描述'
)
default character set = utf8
default collate = utf8_general_ci
engine = innodb
;