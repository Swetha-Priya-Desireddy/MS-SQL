create login swetha with password '1234' -------------in master----------------
create user swetha for login swetha-------------in database sp------------------
alter role db_datareader add member swetha--------giving roles----------------- sp db-----
alter role db_denydatareader add member swetha-------taking granted permissions---------sp db------- 

select SMALLDATETIMEFROMPARTS(9,07,4,3,6)