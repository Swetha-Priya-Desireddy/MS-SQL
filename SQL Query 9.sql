select * from employee order by sal  DESC 
insert into employee (id,sal) values (114,200000000)

-------------selecting null values into the last----------------------------------------

select sal from employee order by case when sal is null then 1 else 0 end, sal

--------------select top 3 highest sal-----------------------------------------------------

select top 1 sal from( select distinct top 3 sal from employee order by sal desc) as temp order by sal

----------------selecting top 2 salary---------------------------------------------------------------

SELECT MAX(SAL) as second_highest FROM Employee WHERE SAL < (SELECT MAX(SAL) FROM Employee)
create database sp
use sp

--------------highest sal in dept-----------------------------------------------------------------

 select max(sal), dept from employee group by dept 
 select * from employee

 -------------printing duplicates in table-------------------------------------------------------

 select count(*), Sal from employee group by sal having count(*)>1 

 ------------ extracting nth row in  Table------------------------------------------------------------------------------------- 

 select * from employee
 select * from employee order by id offset 0 rows fetch next 4 rows only

 ---------------------------------------------------------------------------------------------------------------------------------

