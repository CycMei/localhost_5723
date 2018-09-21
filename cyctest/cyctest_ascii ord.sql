
-- ASCII(str);
-- 返回  字符串str  的  最左侧字符  的数值(ascii码)。 
-- 如果str是空字符串，则返回0。
-- 如果  str为NULL，则返回NULL。 ASCII（）适用于  8位字符 (1 个字节的 字符， 二进制 8 位， 比如汉字就不行)。

select ascii('');			-- 0
select ascii(NULL);		-- NULL
select ascii('2');		-- 50
select ascii(2);			-- 50
select ascii('232');	-- 2->50
select ascii(232);		-- 2->50

-- 不适用
select ascii('齉');		
select ascii('陈');		








-- ORD(str);
-- 若字符串str 的 最左字符是 一个 多字节字符，则返回该字符的代码， 
-- 代码的计算通过使用以下公式计算其组成字节的数值而得出:
-- (1st byte code) + (2nd byte code × 256) + (3rd byte code × 256 * 2) ...
select ord('小');
select ord('小陈陈');

-- 如果 最左边 的 字符 不是多字节字符，则ORD（）返回与ASCII（）函数相同的值。
select ord('223') = ascii('232');		-- 1
select ord(223) = ascii(232);				-- 1


