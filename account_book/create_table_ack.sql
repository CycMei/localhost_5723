drop table if exists `account_book`.`ac_book`;

create table if not exists `account_book`.`ac_book`(
	`id` smallint unsigned not null primary key auto_increment comment '主键',
	`purchaser` tinyint unsigned not null comment '购买人，对应 ac_user 表的 id 字段',
	`goods` varchar(255) not null comment '购买的商品',
	`weight` not null comment '购买多少',
	`weight_unit` tinyint unsigned not null comment '重量单位',
	`money` not null comment '用的多少钱',
	`money_unit` tinyint unsigned not null comment '钱单位',
	`buy_datetime` not null comment '购买时间',
	`description` not null comment '购买商品相关描述',
	`register_datetime` not null comment '登记时间：也就是写到数据库的时间'
)
default character set = utf8 
default collate = utf8_general_ci 
engine = InnoDB
comment '账本表'
;