use details;



create table company
(
companyid int primary key,
companyname varchar(20),
street varchar(45),
city varchar(30),
state varchar(20),
zip varchar(35)
)
;

# 1) Statement to create the Contact table
create table contact
(
contactid int primary key,
firstname varchar(20),
lastname varchar(20),
email varchar(30),
phone varchar(20),
companyid int,
foreign key (companyid) references company(companyid)
);

/*
create table contactemployee
(
contactemployeeid int primary key,
contactid int,
employeid int,
contactDate date,
descriptions varchar(100),
foreign key (contactid) references contact(contactid )
)
;
*/

# 2) Statement to create the Employee table
create table employees
(
employeid1 int,
salary int,
hiredate date,
jobtitle varchar(30),
firstname varchar(20),
lastname varchar(20),
email varchar(30),
phone varchar(20),
foreign key (employeid1) references contactemployee(contactid)
)
;

/*
 INSERT INTO contact (contactid, firstname, lastname, email, phone, cmpid)
VALUES
(11, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', 2),
(12, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', 3),
(3, 'Bob', 'Johnson', 'bob.johnson@example.com', '555-123-4567', 4),
(4, 'Alice', 'Williams', 'alice.williams@example.com', '901-234-5678', 5),
(5, 'Mike', 'Davis', 'mike.davis@example.com', '111-222-3333', 6),
(6, 'Emily', 'Miller', 'emily.miller@example.com', '444-555-6666', 7),
(7, 'Tom', 'Wilson', 'tom.wilson@example.com', '777-888-9999', 8),
(8, 'Linda', 'Anderson', 'linda.anderson@example.com', '222-333-4444', 9),
(9, 'Kevin', 'Thomas', 'kevin.thomas@example.com', '666-777-8888', 10),
(10, 'Sarah', 'Taylor', 'sarah.taylor@example.com', '888-999-0000', 10);

INSERT INTO contactemployee (contactemployeeid, contactid, employeid, contactDate, descriptions)
VALUES
(1, 1, 101, '2022-01-01', 'Meeting with John'),
(2, 2, 102, '2022-01-15', 'Call with Jane'),
(3, 3, 103, '2022-02-01', 'Email to Bob'),
(4, 4, 104, '2022-03-01', 'Meeting with Alice'),
(5, 5, 105, '2022-04-01', 'Call with Mike'),
(6, 6, 106, '2022-05-01', 'Email to Emily'),
(7, 7, 107, '2022-06-01', 'Meeting with Tom'),
(8, 8, 108, '2022-07-01', 'Call with Linda'),
(9, 9, 109, '2022-08-01', 'Email to Kevin'),
(10, 10, 110, '2022-09-01', 'Meeting with Sarah');

INSERT INTO employees (employeid1, salary, hiredate, jobtitle, firstname, lastname, email, phone)
VALUES
(1, 50000, '2020-01-01', 'Software Engineer', 'John', 'Doe', 'john.doe@example.com', '123-456-7890'),
(2, 60000, '2019-06-01', 'Data Scientist', 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210'),
(3, 70000, '2018-03-01', 'Product Manager', 'Bob', 'Johnson', 'bob.johnson@example.com', '555-123-4567'),
(4, 80000, '2017-09-01', 'DevOps Engineer', 'Alice', 'Williams', 'alice.williams@example.com', '901-234-5678'),
(5, 90000, '2016-12-01', 'UX Designer', 'Mike', 'Davis', 'mike.davis@example.com', '111-222-3333'),
(6, 100000, '2015-06-01', 'Solutions Architect', 'Emily', 'Miller', 'emily.miller@example.com', '444-555-6666'),
(7, 110000, '2014-03-01', 'Business Analyst', 'Tom', 'Wilson', 'tom.wilson@example.com', '777-888-9999'),
(8, 120000, '2013-09-01', 'Marketing Manager', 'Linda', 'Anderson', 'linda.anderson@example.com', '222-333-4444'),
(9, 130000, '2012-12-01', 'Sales Representative', 'Lasley', 'Bland', 'lasley.bland@example.com', '666-777-8888'),
(10, 140000, '2011-06-01', 'Customer Support', 'Sarah', 'Taylor', 'sarah.taylor@example.com', '888-999-0000');

*/

# 4) In the Employee table, the statement that changes Lesley Bland’s phone number to 215-555-8800

UPDATE Employees
SET Phone = '215-555-8800'
WHERE FirstName = 'Lasley' AND LastName = 'Bland';

# 5) In the Company table, the statement that changes the name of “UrbanOutfitters, Inc.” to “Urban Outfitters” .
UPDATE Company
SET companyname = 'Urban Outfitters'
WHERE companyname = 'Urban Outfitters, Inc.';

#6) In ContactEmployee table, the statement that removes Dianne Connor’s contactevent with Jack Lee (one statement).
 Delete from contact where firstname="Dianne " and lastname="Connor";

#7) Write the SQL SELECT query that displays the names of the employees thathave contacted Toll Brothers (one statement). Run the SQL SELECT query in MySQL Workbench. Copy the results below as well.
select firstname ,lastname from company inner join  contact on company.companyid=contact.cmpid where companyname = 'toll brothers'; 






select*from company inner join  contact on company.companyid=contact.cmpid;
select*from contact inner join contactemployee  on contact.contactid =contactemployee.contactid ;
select*from contactemployee inner join  employees on contactemployee.contactid = employees.employeid1 ;


