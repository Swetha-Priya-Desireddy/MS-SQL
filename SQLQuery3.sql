create table employees (id int, sal bigint,name varchar(50))
insert into employees values(101,560000,'abc'),
                            (102,580000,'dcf'),
							(103,590000,'hjk')
insert into employees (id,sal) values(106,570000)
select * from employees where sal>= 570000
select * from employees where sal> 570000 and name='hjk'
select * from employees where sal>= 570000 and name<>'hjk'
select 40*20 
SELECT * FROM employees WHERE sal NOT LIKE '570000'
select 1+1
select (id+1 )as add_id from employees 
sp_help 'employees'
select * from employees
select count(sal) from employees
	select sal from employees  group by sal having count(*)>=2
select sal+10000 from employees
select count(*) from employees
select count(1) from employees
insert into employees (id,sal) values(119,20000)
select * from employees where sal=570000 
select count(*),sal from employees group by sal
select* from employees order by sal
select* from employees order by sal desc
select count(*),sal from employees group by sal having count(*)>=1



---------------------------------------------------TODAY'S TASK-------------------------------------------------------------------------
create table employee (fname varchar(50), id int not null primary key,sal bigint,loaction varchar(50),phone bigint,lname varchar(50),mname varchar(50))
alter table employee add unique(phone)
insert into employee(fname,id,sal,loaction,phone,lname,mname) values('d',100,1700000,'tpt',987654321,'priya','swetha'),
                            ('k',101,2000000,'tpt',987234567,'priya','swetha'),
							('k',102,4400000,'blr',987230567,'lasya','sri'),
							('e',103,9000000,'ctr',987234547,'bhargavi','sai'),
							('n',104,2000000,'ctr',' ','bhargavi','sai'),
							('d',105,2500000,'kdp',980234547,'sujay','sri'),
							('e',106,1700000,'tpt',987658321,'priya','swetha'),
							('m',107,1900000,'kpm',987654391,'meena','sri')
insert into employee(fname,id,loaction,phone,mname) values('n',108,'tml',987650321,'roopa'),
                                                    ('s',109,'mgl',09876543,'prasuna'),
													('e',110,'chn',234567890,'gowthami')
select * from employee where loaction in ('blr' ,'kpm')
select * from employee where loaction in ('blr','kdp')
create table department(id int not null primary key, dept_name varchar(50), dept_location varchar(50))
alter table department add foreign key (id)references employee(id)
insert into department(id,dept_name) values(100,'hr'),
                                         (101,'sales'),
										 (102,'develop'),
										 (103,'sales'),
										 (104,'sales')
insert into department(id,dept_name,dept_location) values(105,'hr','blr'),
                                                         (106,'develop','blr'),
														 (107,'hr','hyd'),
														 (108,'sales','hyd'),
														 (109,'develop','hyd'),
														 (110,'hr','tpt')
update department set dept_location='blr' where id in(107,108,109)
select * from employee
select * from department
select count(*) from employee
select dept_name from department group by dept_name 
select concat(fname,'  ', mname,' ', lname) as full_name from employee
select count(*),dept_name from department group by dept_name having count(*)>=2
select * from employee where phone is not null and sal is not null and lname is not null
sp_help 'employee'
select * into emp from employee
select * from emp
drop index UQ__employee__B43B145F1557DFD4 on employee