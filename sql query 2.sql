create table table1 (id int, age int, name varchar(50))
alter table table1 alter column id int NOT NULL
sp_help 'table1'
insert into table1 values(7,20,'name1')
alter table table1 add constraint ck check( id>1)
ALTER TABLE table1 ADD CONSTRAINT df_age DEFAULT 30 FOR age
insert into table1 values(8,null,'name2')
select * from table1
ALTER TABLE table1 drop CONSTRAINT df_age 
ALTER TABLE table1 drop constraint ck
ALTER TABLE table1 ADD PRIMARY KEY (id)
sp_help 'tab1'
create table table2 (id int, age int, name varchar(50))
alter table table2 add constraint cki check( id>1)
alter table table2 add constraint ck1 check( age>20)
ALTER TABLE table2 alter column id int not null
ALTER TABLE table2 ADD PRIMARY KEY (id)
ALTER TABLE table2 ADD unique(id)
alter table table2 drop constraint foreign key
ALTER TABLE table2 ADD CONSTRAINT df_agee DEFAULT 30 FOR age
sp_help 'table2'
create table tab1(id int not null)
alter table tab1 add  primary key(id)
alter table tab1 add  foreign key(id) references table2(id)

create table tab2 (num int)
insert into tab2 values(20)
sp_help 'tab2'
select cast(20 as varchar) set

insert into tab2 values(70)
select convert(bigint,70)

create table ms (id int, name varchar(50), percentt decimal, dt datetime)
alter table ms add constraint msc check( id>8)
alter table ms add constraint msp default 50 for percentt
alter table ms alter column id int not null
update ms set id=119 where name='iu'
alter table ms ADD PRIMARY KEY (id)
alter table ms ADD unique(name)
delete from ms where id=100
insert into ms(id,name,dt) values (10898,'sw9','2024-06-11 06:00')
insert into ms(id,name,dt)  values(101,'ab','2024-06-11 12:00'),
                      (102,'abc','2024-06-11 02:00')
insert into ms(id,name,dt) values(103,'abcd','2024-06-11 04:00'),
			         (104,'abcde','2024-06-01 05:00'),
				      (105,'abcdef','2024-06-03 06:00'),
					  (106,'abb','2024-07-11 07:00'),
					  (107,'abcc','2024-06-07 08:00'),
					  (108,'abcdd','2023-06-11 06:00')
					  select * from ms

		
                                      

















