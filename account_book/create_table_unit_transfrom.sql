drop table if exists `account_book`.`ac_unittransform`;

create table if not exists `account_book`.`ac_unittransform`(
	`src_unit_id` tinyint unsigned not null comment '外键：需要转换的单位' ,
	`taget_unit_id` tinyint unsigned not null comment '外键：转换到的目标单位',
	`ratio` decimal(8, 4) unsigned not null comment '转换率',
	`description` varchar(256) character set utf8 collate utf8_general_ci not null default '' comment '描述',
	constraint `src_fk_unittransform_unit` foreign key(`src_unit_id`) references `ac_unit`(`id`) on delete restrict on update restrict,
	constraint `taget_fk_unittransform_unit` foreign key(`taget_unit_id`) references `ac_unit`(`id`) on delete restrict on update restrict,
	constraint `pk_src_unit_id_taget_unit_id` primary key(`src_unit_id`, `taget_unit_id`)
)
default character set = utf8
default collate = utf8_general_ci
engine = innodb
comment '单位转换表'
;

insert into `account_book`.`ac_unittransform`(`src_unit_id`, `taget_unit_id`, `ratio`, `description`) values
(1, 2, 1 / 1000, ''),
(2, 1, 1 * 1000, '')
;