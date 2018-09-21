select version();

-- 值为 0 被认为 false，值为 其他 被认为 true
select if(0, 'true', 'false');	-- false
select if(1, 'true', 'false');	-- true
select if(2, 'true', 'false');	-- true

-- true 是 1 的别名  false 是 0 的别名
select if(1 = true, 'true', 'false');		-- true
select if(0 = false, 'true', 'false');	-- true
select if(2 = true, 'true', 'false');		-- false
select if(2 = false, 'true', 'false');	-- false