Create database college;
use college;

create table student (
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)  
);  

select CURRENT_USER(); 

create table dept (
id int primary key,
name varchar(50)
);

insert into dept
values 
(101,"English"),
(102,"IT"); 


create table teacher (
id int primary key,
name varchar(50),
dept_id int ,
foreign key (dept_id) references dept(id) -- id is a primary key of dept and foreign key of teacher
on delete cascade       -- on casde can reflect the changes in both tables if change occur in a table
on update cascade
);

SET FOREIGN_KEY_CHECKS=0; -- Before update the the table that have a foreign key run this query before insert values into it
-- Error Code No :1452 use above query to solve this before insert values in the table that have foreign key  

insert into teacher 
values 
(101,"Adam",101),
(102,"Eve",102);  

-- Update the dept table and set the id and due to cascade update id will be updated on both table

update dept 
set id =111
where name ="IT";


insert into student 
(rollno,name,marks,grade,city)
values
(101,"anil",78,"c","pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"), 
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","delhi"),
(106,"farah",82,"B","Delhi"); 

-- select * from student;

-- 	   Clauses 

/*

select * 
from student 
-- where marks > 80;
-- where city = "Mumbai";
-- where marks>80 and city = "Mumbai";
-- where marks between 80 and 90;
-- where city in("Delhi","Mumbai");
 -- where city not in("Delhi","Mumbai");
 -- limit 3; -- Limit the number of rows from start
 -- order by marks asc ; -- By default ascending
 
 */
 
 --            Select the to 3 students with highest marks ? 
 /*
				 select * 
				 from student
				 order by marks desc
				 limit 3;
 */
 
 --              Aggregate Functions 
 
 /*
 
 
 select count(rollno) 
 -- max(marks)
 -- min(marks)
 -- avg(marks)
 -- sum(marks)
 from student; 
 
 */
 
 --    Group By Clause (write a query to find the average marks in asc order from each city ? )
 /*
 
 select city ,avg(marks) 
 from student 
 group by city
 order by avg(marks) asc ;
 */
 
 -- write a query to find the number of students have the same grade ? 
 
 /*
 select grade,count(rollno)
 from student 
 group by grade 
 order by grade; 
 */
 
 
 --            Having clause 
 --   " Having clause "  use to apply condition on Groups 
 -- Count Number of Students in each city where max num across 90 ?
 
 /*
		 select city ,count(name)
		 from student 
		 group by city
		 having max(marks) > 90;  
 */
 
 --            Order to write Following Clauses 
 -- Select
 -- From 
 -- Where
 -- Group By
 -- Having 
 -- Order By 
 
 --            Update 
 -- update the grade "A" with Grade "O" in student table ?
 
 set SQL_SAFE_UPDATES=0; -- By default safe mode is on to perform any big change in database keep it off first 
 -- 0 = off and  1 = on
 /*
 
	 update student
	 set grade ="O"
	 where grade ="A";
 
 select * from student ;
 
 */
 
 -- update the marks of a student from 12 to 82 have roll no 105
 
 
 /*
	 update student 
	 set marks =82
	 where rollno =105;
     
*/
     
-- Update the marks of all the students by 1 ?

/*

update student 
set marks = marks + 1;

*/

--           Delete 
-- delete the student data that have less than 33 marks 

/*

	delete from student  
	where marks < 33;

	delete from student; -- this query delete the whole table data

*/


--    Alter (to design the table , add/delete column, change the table name ,constraints,datatype)

--  1) Add Column 
--  2) Modify column (datatype) 
--  3) Change (name ) 
--  4) Drop Column (Column name ) 
--  5) Rename to (table name)


-- Add a column to the studwnt table ? Using Alter Clause 

alter table student
modify column age varchar(2) not null default 19 ; 

-- Change the column name and datatype of column ?

alter table student 
change age stu_age int ;

-- insert a row in table 

insert into student 
(rollno,name,marks,grade,city,stu_age)
values
(107,"Bob",78,"B","Mumbai",17);

--   Delete the column age 

/*

	alter table student 
	drop column stu_age;

*/

--  Truncate (To delete the table values ) 
-- Drop vs Truncate (drop delete the whole table / Truncate delete the values/content of table )

 truncate table student ;
 

--            ***************  Practice Question  *****************


-- (1) : Rename the column " name " to " full_name " 

alter table student 
change name full_name varchar(50) ; 

-- (2) :  delete the students who marks less than 80

delete from student  
where marks < 80; 

-- (3) :  delete the column for grades

alter table student 
drop column grade ;

-- ******************************* Table Joins ******************************** 











 

 
 select * from student ;  
 select * from dept ;  
 select * from teacher; 
 
 
 
 
 

 
 
 
 

 
  
 







