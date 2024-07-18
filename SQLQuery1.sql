create database priya
use priya
 create table ss( marks1 int, marks2 int, name varchar(20))
 create table sss( id int, phone bigint,name varchar(50), percentage decimal)
  alter table sss add  hgg date
  sp_help 'sss'
  alter table sss alter column id int
  alter table sss drop column hgg 
    sp_help 'sss'

insert into sss values(101,949065777,'priya',30)
update sss set percentage=40 where id=101
insert into sss values(101,949065777,'priya',66)
select percentage from sss
select distinct percentage from sss
