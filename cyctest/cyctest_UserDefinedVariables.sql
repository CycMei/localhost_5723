set @ids = 10;
select (@ids := id) as IDSs from cyctest.acyctest_books where id = 11;
select @ids;


set @idname = 'id';
set @s = concat("select ", @idname, " from cyctest.acyctest_books;");
PREPARE stmt FROM @s;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;