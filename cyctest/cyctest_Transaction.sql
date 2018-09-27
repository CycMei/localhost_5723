begin;
select * from cyctest.acyctest_books;
insert into cyctest.acyctest_books(`name`, `hot`) values("c++ primer 6.0", 1);
commit;
select * from cyctest.acyctest_books;


begin;
select * from cyctest.acyctest_books;
insert into cyctest.acyctest_books(`name`, `hot`) values("c++ primer 8.0", 1);
rollback;
select * from cyctest.acyctest_books;