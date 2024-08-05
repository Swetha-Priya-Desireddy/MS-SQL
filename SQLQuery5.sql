create table market (item varchar(50),cost int,discount int, sold int, branch varchar(50))
insert into market values ('Pen', 20,null,25,'main'),
                          ('Shampoo',250,25,50,'sub'),
						  ('Cookies',50,null,46,'third'),
						  ('Vegetables',200,15,40,'main'),
						  ('Milk',40,null,null,'sub'),
						  ('Millets',80,5,null,'main'),
						  ('Atta',150,9,3,'third'),
						  ('Oil',180,null,15,'third'),
						  ('Rice',250,30,20,null),
						  ('Eggs',8,null,15,'sub')
select * from market
select * from employee order by sal  DESC NULL LAST
insert into employee (id,sal) values (114,200000000)
-------------selecting null values into the last-------------------------------------------------
select sal from employee order by case when sal is null then 1 else 0 end, sal
---------------------------------------------------------------
select * from market where item between 'atta' and 'oil'
exec sp_rename 'market.discount', 'Discount ', 'column' 
select * from market where Discount is null
select * from market where Sold is null
select max(Cost) from market
update  market set Cost=7 where Item='Eggs'
delete from market where  cost<10
insert into market values ('Eggs',7,0,15,'sub')
select * , case
when Item='milk' then 'Dairy'
when Item in ('Oil','Rice','Millets','Atta') then 'Daily needs'
when Item ='Pen' then 'stationary'
else 'groceries'
end as Category from market
 select *, concat (item,'  -----  ',branch) as Item_details from market 
select sum(Discount) from market where Discount is not null 
select item from market where  item like '[a-p]%'
select * from market where  item like 'Mi%%s'
select * from market where cost>100 and discount is null and sold is not null
sp_help'market'
sp_help 'employee'
select * from employee
alter table employee add joindate date
update employee set phone=9765432340 where id=104
update employee set jrole='hr', dept='hr', joindate='2024-10-02' where id =100
update employee set jrole='sql developer', dept='db', joindate='2024-1-02' where id =101
update employee set jrole='manager', dept='db', joindate='2024-03-20' where id =102
update employee set jrole='hr', dept='hr', joindate='2023-10-02' where id =103
update employee set jrole='UI designer', dept='designing', joindate='2024-10-10' where id =104
update employee set jrole='sales manager', dept='sales', joindate='2024-10-02' where id =105
update employee set jrole='etl developer', dept='developer', joindate='2022-10-02' where id =106
update employee set jrole='hr', dept='hr', joindate='2024-07-02' where id =107
update employee set jrole='css developer', dept='developer', joindate='2023-10-22' where id =108
update employee set jrole='manager', dept='db', joindate='2021-11-09' where id =109
update employee set jrole='sql developer', dept='developer', joindate='2024-12-27' where id =110
update employee set jrole='sales manager', dept='sales', joindate='2024-10-02' where id =111
select mname,sal,dept from employee
select mname,joindate,dept from employee
select sal*12 from employee where sal is not null
select mname from employee
select id,dept from employee
select distinct mname  from employee
select distinct  dept from employee
select 800+sal as incremented_sal from employee 
select mname  as hr_team from employee where jrole='hr'
select id,joindate from employee
update employee set joindate='2023-07-17' where id=108
update employee set sal =2000000 where id in(103,104,105) 
begin transaction

    update employee set jrole='hr' where id=100
   select * from employee

rollback;

---------------------Date functions-----------------------
select getdate()
select sysdatetime()
select CURRENT_TIMESTAMP
select dateadd(month,1,getdate())
select dateadd(month,-1,getdate())
select datediff( year,'2024-10-2','2000-02-4')
select datediff( month,'2024-10-2','2000-02-4')
select datepart(day,getdate())
select datename (day,getdate())
select convert(varchar,getdate(),107)
select convert(varchar,getdate(),106)
select format(getdate(),'MM-yyyy-dd')


-------------------------JOINS---------------------------
 
select * from employee
select * from employees 
select * from employee as e left join employees as f on e.id=f.id
select * from employee as e right join employees as f on e.id=f.id
select * from employee as e inner join employees as f on e.id=f.id
select * from employee as e left join employees as f on e.sal=f.sal
select * from employee as e full join employees as f on e.id=f.id

--------------------numeric functions----------------------

select exp(1)
select exp(2)
select floor(34.23)
select floor(34.93)
select ceiling(34.23)
select ceiling(34.01)
select greatest(10,5,9,1,5,6,7,8,9,12)
select least( 10,5,9,1,5,6,7,8,9,12,-2,-90,-234456789)
select log(9)
select pi()
select power( 6,2)
select power(2,6)
select rand(180)
select sin(180)
select tan(45)
select cot(45)
select cos(9)                                              
 