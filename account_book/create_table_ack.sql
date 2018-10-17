drop table if exists `account_book`.`ac_book`;

create table if not exists `account_book`.`ac_book`(
	`id` smallint unsigned not null primary key auto_increment comment '主键',
	`co_payment` enum('no','yes') not null comment '是否共同支付',
	`user_id` tinyint unsigned not null comment '购买人，对应 ac_user 表的主键',
	`kind_id` tinyint unsigned not null comment '购买的商品，对应 kind 表的主键',
	`goods_description` varchar(255) character set utf8 collate utf8_general_ci not null default '' comment '购买商品相关描述',
	`money` decimal(7, 2) unsigned not null comment '用的多少钱',
	`money_unit_id` tinyint unsigned not null comment '钱单位，对应表 ac_unit 的主键',
	`weight` decimal(5,2) unsigned not null default '0' comment '购买多少（重量 数量）',
	`weight_unit_id` tinyint unsigned not null default '0' comment '重量单位对应表 ac_unit 的主键',
	`buy_datetime` datetime not null default CURRENT_TIMESTAMP comment '购买时间',
	`register_datetime` datetime not null default CURRENT_TIMESTAMP comment '登记时间：也就是写到数据库的时间',
	constraint `fk_ack_user_id` foreign key(`user_id`) references `ac_user`(`id`) on delete restrict on update restrict,
	constraint `fk_ack_kind_id` foreign key(`kind_id`) references `ac_kind`(`id`) on delete restrict on update restrict,
	constraint `money_ack_unit_id` foreign key(`money_unit_id`) references `ac_unit`(`id`) on delete restrict on update restrict
)
default character set = utf8 
default collate = utf8_general_ci 
engine = InnoDB
comment '账本表'
;


insert into `account_book`.`ac_book` values
(`id`, 		'yes', 		1, 		5, 		'    ',                 20.2, 		3, 		0, 		4, 		'2018-10-4', '2018-10-17'),
(`id`, 		'yes', 		2, 		5, 		'    ',                 8.9, 		  3, 		0, 		4, 		'2018-10-4', '2018-10-17'),
(`id`, 		'yes', 		2, 		5, 		'    ',                 8.5, 		  3, 		0, 		4, 		'2018-10-5', '2018-10-17'),
(`id`, 		'yes', 		2, 		5, 		'    ',                 9.6, 		  3, 		0, 		4, 		'2018-10-6', '2018-10-17'),
(`id`, 		'yes', 		2, 		5, 		'    ',                 11.1, 		3, 		0, 		4, 		'2018-10-8', '2018-10-17'),
(`id`, 		'yes', 		2, 		5, 		'    ',                 7.9, 			3, 		0, 		4, 		'2018-10-9', '2018-10-17'),
(`id`, 		'yes', 		1, 		5, 		'    ',                 18, 			3, 		0, 		4, 		'2018-10-10', '2018-10-17'),
(`id`, 		'yes', 		2, 		5, 		'    ',                 8.9, 			3, 		0, 		4, 		'2018-10-10', '2018-10-17'),
(`id`, 		'yes', 		2, 		5, 		'    ',                 14.3, 		3, 		0, 		4, 		'2018-10-11', '2018-10-17'),
(`id`, 		'yes', 		2, 		5, 		'    ',                 11.2, 		3, 		0, 		4, 		'2018-10-12', '2018-10-17'),
(`id`, 		'yes', 		1, 		5, 		'    ',                 15, 			3, 		0, 		4, 		'2018-10-13', '2018-10-17'),
(`id`, 		'yes', 		2, 		5, 		'    ',                 21.8, 		3, 		0, 		4, 		'2018-10-14', '2018-10-17'),
(`id`, 		'yes', 		1, 		5, 		'    ',                 7.1, 			3, 		0, 		4, 		'2018-10-15', '2018-10-17'),
(`id`, 		'yes', 		2, 		3, 		'大米',                 5.2, 			3, 		0, 		4, 		'2018-10-16', '2018-10-17'),
(`id`, 		'yes', 		2, 		5, 		'丝瓜',                 5.9, 			3, 		0, 		4, 		'2018-10-17', '2018-10-17'),
(`id`, 		'yes', 		1, 		5, 		'四季豆、橘子',         12, 			3, 		0, 		4, 		'2018-10-17', '2018-10-17')
;