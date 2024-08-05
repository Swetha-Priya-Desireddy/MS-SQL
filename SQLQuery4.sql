 select avg(id) from employee
select max(sal) from employee
select min(id) from employee
select count(sal) from employee
select loaction from employee where loaction like '%r'
select loaction from employee where loaction like 'c%'
select loaction from employee where loaction like 't%t'
select loaction from employee where loaction like '%t%'
select loaction from employee where loaction like '%r'
select loaction from employee where loaction like '_l%'
select loaction from employee where loaction like '%p_'
select loaction from employee where loaction like '[abr]%'
select loaction from employee where loaction like '%[abr]'
select loaction from employee where loaction like '[a-d]%'

------------------set operators----------------------

select id from employee union select id from employees
select id from employee union all select id from employees
select id from employee intersect select id from employees
select * from sys.databases
exec sp_databases

-------------------case statement-----------------------

Select id, sal, case
when sal > 4000000 then 'highest'
when sal>=2000000 then 'medium'
else 'trainee'
end as salary from employee;

select *, case
when id>105 then 'first'
when id>108 then 'second'
else 'third'
end as 'places'from employee

--------------------is null and is not null -----------------

 select * from employee where sal is null
 select * from employee where sal is not null

---------------------todays task-------------------------

select * from employee where phone like '987%%7' and sal =4400000
select * from employee where loaction in ('blr', 'kdp')
select max(sal) from employee
select min(sal) from employee
select sum(sal) from employee
select avg(sal) from employee
select * from employee where sal>2000000 and loaction='blr'
select mname from employee where mname like '_r%a'

---------------------------------------------------------

select ascii(mname) as name from employee
select len('swetha  priya') as name
select left ('swetha priya',5)
select right ('swetha priya',5)
select lower ('SWETHA PRIYA')
select upper ('swetha  priya')
select ltrim('       swetha')
select rtrim('swetha   priya             ')


select min(phone) from employee
select max(phone) from employee
select sum(phone) from employee
select avg(phone) from employee
select count(*) from employee
select * from employee