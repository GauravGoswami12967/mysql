use assesment;

CREATE TABLE Worker (
  WORKER_ID INT PRIMARY KEY,
  FIRST_NAME VARCHAR(50),
  LAST_NAME VARCHAR(50),
  SALARY INT,
  JOINING_DATE DATE,
  DEPARTMENT VARCHAR(50)
);

INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES
(1, 'Menika', 'Arora', 100000, '2014-02-20', 'HR'),
(2, 'Niharika', 'Vema', 80000, '2014-06-11', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-02-20', 'HR'),
(4, 'Amitabh', 'Singh', 500000, '2014-02-20', 'Admin'),
(5, 'Vivek', 'Bhatt', 500000, '2014-06-11', 'Admin'),
(6, 'Vigel', 'Diivan', 200000, '2014-06-11', 'Account'),
(7, 'Satish', 'Kumar', 75000, '2014-01-20', 'Account'),
(8, 'Geetika', 'Chauhan', 90000, '2014-04-11', 'Admin');


#1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. 
select*from worker order by FIRST_NAME asc,LAST_NAME desc;

#2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table. 
select*from worker where FIRST_NAME =  'vipul' or FIRST_NAME =  'satish';

#3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. 
select*from worker where FIRST_NAME like 'h%' and length(FIRST_NAME) = 6;

#6. Write an SQL query to show the top 6 records of a table. 
select*from worker limit 6 ;

#5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 
select  FIRST_NAME,LAST_NAME,SALARY,SALARY from worker group by FIRST_NAME,LAST_NAME,SALARY,SALARY having count(*) > 1;


#7. Write an SQL query to fetch the departments that have less than five people in them. 
select DEPARTMENT , count(WORKER_ID) from worker group by  DEPARTMENT having count(WORKER_ID)<5;

#8. Write an SQL query to show all departments along with the number of people in there. 
select DEPARTMENT , count(WORKER_ID) from worker group by  DEPARTMENT;

select DEPARTMENT ,FIRST_NAME, salary, count(WORKER_ID) from worker group by  DEPARTMENT having max(SALARY);











