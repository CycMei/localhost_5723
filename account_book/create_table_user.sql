

drop table if exists `account_book`.`ac_user`;

create table if not exists `account_book`.`ac_user`(
	`id` tinyint unsigned not null primary key auto_increment comment '主键',
	`nick_name` varchar(255) character set utf8 collate utf8_general_ci not null comment '昵称',
	`login_name` varchar(255) character set utf8 collate utf8_general_ci not null comment '登录名称',
	`login_pwd` varchar(255) character set utf8 collate utf8_general_ci not null comment '密码'
)
default character set = utf8 
default collate = utf8_general_ci 
engine = InnoDB
comment '用户表'
;