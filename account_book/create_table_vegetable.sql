drop table if exists `account_book`.`ac_agro_vegetable`;

create table if not exists `account_book`.`ac_agro_vegetable`(
	`category` tinyint unsigned not null primary key auto_increment comment '类别',
	`parent_category` tinyint unsigned not null comment '父类别',
	`category_name` char(20) character set utf8 collate utf8_general_ci not null comment '类别名称',
	`description` varchar(255) character set utf8 collate utf8_general_ci not null default '' comment '蔬菜相关描述'
)
default character set = utf8
default collate = utf8_general_ci
engine = innodb
comment '农物生物学分类表'
;
	


insert into `account_book`.`ac_agro_vegetable`(`parent_category`,`category_name`,`description`) values
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
(0, '野生类', '')
;




drop function if exists GetStrLen;
create function GetStrLen(inStr varchar(1000), format varchar(10)) returns tinyint
begin
	declare unitLen tinyint default 0;
	declare resLen tinyint default 0;
	declare repLen tinyint default 0;
	declare len tinyint default 0;
	set unitLen = length(format);
	set resLen = length(inStr);
	set repLen = length(replace(inStr, format, ''));
	set len = (resLen - repLen) / 3;
	return len + 1;
end;


drop function if exists GetEleIndexOf;
create function GetEleIndexOf(inStr varchar(1000), format varchar(10), idx tinyint) returns varchar(255)
begin
	declare res varchar(255) default '';
	set res = reverse( substring_index ( reverse( substring_index(inStr, format, idx) ), format, 1) );
	return res;
end;



drop function if exists BatchInsert;
create function BatchInsert(pc tinyint, inStr varchar(100), format varchar(10)) returns tinyint
begin
	declare idx tinyint default 0;
	declare cnt tinyint default 0;
	set cnt = GetStrLen(inStr, format);
	while idx < cnt
	do
		set idx = idx + 1;
		insert into `account_book`.`ac_agro_vegetable`(`parent_category`,`category_name`,`description`) values
			(pc, GetEleIndexOf(inStr, format, idx), '');
	end while;
	return 0;
end;




set @str1 = "白菜、小白菜、叶用芥菜、菜薹、结球甘蓝（圆白菜）、球茎甘蓝、花椰菜甘蓝";
select BatchInsert(2, @str1, '、');

set @str2 = "萝卜、胡萝卜、芜箐、根用芥菜、根用甜菜";
select BatchInsert(3, @str2, '、');


set @str3 = "茄子、番茄、辣椒";
select BatchInsert(4, @str3, '、');

set @str4 = "黄瓜、南瓜、冬瓜、丝瓜、瓠瓜、菜瓜、蛇瓜、葫芦等，或包括西瓜、甜瓜等。西瓜、南瓜";
select BatchInsert(5, @str4, '、');

set @str5 = "菜豆、豇豆、刀豆、毛豆、豌豆、眉豆、蚕豆、四棱豆、扁豆";
select BatchInsert(6, @str5, '、');


set @str6 = "大葱、大蒜、洋葱、韭菜";
select BatchInsert(7, @str6, '、');

set @str7 = "芹菜、茼蒿、莴苣、苋菜、落葵、雍菜、冬寒菜、菠菜、雪里蕻";
select BatchInsert(8, @str7, '、');


set @str8 = "马铃薯、芋头、山药、姜、草石蚕、菊芋、豆薯";
select BatchInsert(9, @str8, '、');

set @str9 = "如藕（菏藕）、茭白、慈菇、荸荠、菱角、芡实";
select BatchInsert(10, @str9, '、');

set @str10 = "金针菜、石刁柏、百合、竹笋、香椿";
select BatchInsert(11, @str10, '、');

set @str311 = "蘑菇、香菇、草菇、木耳、银耳、猴头菌、竹荪";
select BatchInsert(12, @str311, '、');

set @str12 = "豌豆芽、乔麦芽、苜蓿芽、萝卜芽等、绿豆芽、黄豆（毛豆）芽";
select BatchInsert(13, @str12, '、');


set @str13 = "蕨菜、发菜、荠菜、茵陈、苦买菜、苋菜、地肤（扫帚菜）";
select BatchInsert(14, @str13, '、');






