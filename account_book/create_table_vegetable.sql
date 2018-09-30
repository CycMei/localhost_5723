drop table if exists `account_book`.`ac_agro_vegetable`;

create table if not exists `account_book`.`ac_agro_vegetable`(
	`category` tinyint unsigned not null primary key auto_increment comment '类别',
	`parent_category` tinyint unsigned not null default '1' comment '父类别',
	`category_name` varchar(255) not null default '' comment '类别名称',
	`description` varchar(255) not null default '' comment '蔬菜相关描述'
)
default character set = utf8
default collate = utf8_general_ci
engine = innodb
comment '农物生物学分类表'
;


-- create function agro_vegetable_insert_data(parent_category tinyint) returns null
-- 	set @begin_category = parent_category * 100;
-- 	set @end_category = (parent_category + 1) * 100;
	


insert into `account_book`.`ac_agro_vegetable`(`parent_category`,`category_name`,`description`) value
(0, '其他类', ''),
(0, '白菜类', ''),
(0, '直根类', ''),
(0, '茄果类', ''),
(0, '瓜类', ''),
(0, '豆类', ''),
(0, '葱蒜类', ''),
(0, '绿叶类', ''),
(0, '薯芋类', ''),
(0, '水生类', ''),
(0, '多年生蔬菜类', ''),
(0, '食用菌类', ''),
(0, '芽菜类', ''),
(0, '野生类', ''),


(2, '大白菜', ''),
(2, '小白菜', ''),

(3, '萝卜', ''),
(3, '胡萝卜', ''),


(1, '无名', '')

;