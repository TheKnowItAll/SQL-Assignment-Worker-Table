insert into test_db.worker values (001,'Monica','Arora',100000,'2014-02-20 09:00:00','HR');
insert into test_db.worker values (002,'Niharika','Verma',80000,'2014-06-11 09:00:00','Admin');
insert into test_db.worker values (003,'Vishal','Singhal',300000,'2014-02-20 09:00:00','HR');
insert into test_db.worker values (004,'Amitabh','Singh',500000,'2014-02-20 09:00:00','Admin');
insert into test_db.worker values (005,'Vivek','Bhati',50000,'2014-06-11 09:00:00','Admin');
insert into test_db.worker values (006,'Vipul','Diwan',20000,'2014-06-11 09:00:00','Account');
insert into test_db.worker values (007,'Satish','Kumar',75000,'2014-01-20 09:00:00','Account');
insert into test_db.worker values (008,'Geetika','Chauhan',90000,'2014-04-11 09:00:00','Admin');

SELECT * FROM test_db.worker;
update test_db.worker set salary=500000 where worker_id=5;
Select first_name as 'worker name' from test_db.worker;

Select upper(first_name) from test_db.worker;

SELECT distinct department FROM test_db.worker;

select left(first_name,3) from test_db.worker;

select position('a' in first_name) as positions from test_db.worker;

select rtrim(first_name) as 'first name' from test_db.worker;

select ltrim(department) as departments from test_db.worker;

SELECT distinct department, length(department) as length FROM test_db.worker;

select replace(first_name,'a','A') from test_db.worker;

SELECT first_name,last_name, concat(first_name,' ',last_name) as 'complete name'FROM test_db.worker;

SELECT * FROM test_db.worker order by first_name;

SELECT * FROM test_db.worker order by first_name ASC, department DESC;

SELECT * FROM test_db.worker where first_name='vipul' or first_name='satish';

SELECT * FROM test_db.worker where first_name not in('vipul','satish');

SELECT * FROM test_db.worker where department='admin';

SELECT * FROM test_db.worker where first_name like '%a%';

SELECT * FROM test_db.worker where first_name like '%a';

SELECT * FROM test_db.worker where first_name like '%h' and length(first_name)=6;

SELECT * FROM test_db.worker where salary between 100000 and 500000;

SELECT * FROM test_db.worker where month(joining_date)=02;

SELECT count(*) as counts FROM test_db.worker where department='admin';

SELECT * FROM test_db.worker where salary >=50000 and salary<=100000;

SELECT * FROM test_db.worker order by department desc;

SELECT * FROM test_db.worker where mod(worker_id,2)<>0;

update test_db.worker set salary=500000 where worker_id=5;

SELECT * FROM test_db.worker order by salary desc limit 10;

SELECT * FROM test_db.worker where salary in (select salary from test_db.worker group by salary having count(*)>1);

select max(salary) as 'second highest salary' from test_db.worker  where 
salary< (select max(salary) as 'second highest salary' from test_db.worker);

select department from test_db.worker group by department having count(*)<5;

select department, count(*) as 'count of people' from test_db.worker group by department;

SELECT * FROM test_db.worker where worker_id=(select max(worker_id) from test_db.worker);


