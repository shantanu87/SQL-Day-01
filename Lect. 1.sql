-- 26/07/2022 Lect. 1

create database training;
drop database training;
create database if not exists training;
use training;
create table customer1 (custid integer, custname varchar(50), gender char(1), age integer, city varchar(50), 
mobile varchar(20), amount decimal(20,2));

-- Different datatypes
-- int
-- char(10)
-- varchar(10)
-- decimal(10,2)  - 1235.25
-- double
-- date
-- datetime

-- loading records into table
-- insert, update, delete, select

insert into customer1 values(1000, 'Shantanu Agrawal', 'M', '24','Nagpur', '+91-9425678445',10000);
select * from customer1;
insert into customer1 values(1002, 'Shubhangi Kumari', 'F', '27','Kanpur', '+91-785758445',20101.250);
insert into customer1 values(1003, 'Shubhi Soni', 'F', '18','Agra', '+91-785753645',1101.730);
insert into customer1 (custid, custname, gender, age, amount) values (1005, 'Saurabh Mishra', 'M',78,78564.23);
insert into customer1 values(1006,'Bala Murgan','M',25,'Chennai','798653142',30002),(1007,'Shubhash Walia','M',36,'Bangalore','785342166',422351.00);
select * from customer1;
select custname, city, amount from customer1;

-- Row level changes (select, where, and, or condition)

select * from customer1 where city= 'Nagpur';
select * from customer1 where city= 'Bangalore';
select * from customer1 where gender = 'M' and age <30;
select * from customer1 where gender = 'F' and age > 25;
select * from customer1 where gender = 'F';
select * from customer1 where gender = 'F' or age < 25;
select custname, city, mobile from customer1 where gender = 'F' or age < 25;
select * from customer1 where age>=25 and age<= 40;
select * from customer1 where age between 25 and 30;

-- Update, delete existing data

set sql_safe_updates = 0;
select * from customer1;
update customer1 set mobile='+01-4535156' where custid = 1004;
update customer1 set city= 'Chennai', mobile = '+01-45326753' where custid = 1005;
update customer1 set city= 'Delhi' where city= 'nagpur';
select * from customer1;
delete from customer1 where age= 18;
delete from customer1 where custid = 1006;
delete from customer1 where gender = 'F';








