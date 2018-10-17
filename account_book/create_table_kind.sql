drop table if exists `account_book`.`ac_kind`;
create table if not exists `account_book`.`ac_kind`(
	`id` tinyint unsigned not null primary key auto_increment comment '类别',
	`parent_id` tinyint unsigned not null comment '父类别',
	`kind_name` char(20) character set utf8 collate utf8_general_ci not null comment '类别名称',
	`kind_description` varchar(255) character set utf8 collate utf8_general_ci not null default '' comment '类别相关描述'
)
default character set = utf8
default collate = utf8_general_ci
engine = innodb
comment '生活类别表'
;

insert into `account_book`.`ac_kind`(`parent_id`,`kind_name`,`kind_description`) values
(0, '日用化妆', '卫生纸、卫生巾、化妆等'),
(0, '休闲食品类', '饼干、膨化食品、果仁类等'),
(0, '粮油调料类', '大米、食用油、调料等'),
(0, '炊事用品类', '厨卫用品、菜刀、餐具、盘子等'),
(0, '蔬菜水果肉质类', '蔬菜、水果、肉等'),
(0, '出行类', '公交、高铁等'),
(0, '服装类', '上衣、鞋子等'),
(0, '住房类', '水、电、气、物业费等'),
(0, '其他类', '旅游等')
;