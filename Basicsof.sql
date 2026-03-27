CREATE DATABASE college;

	CREATE TABLE student (
    rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
    );
    
    insert into student
    (rollno, name, marks, grade, city)
    values
    (101, "anil", 78, "C", "Pune"),
    (102, "bhumika", 93, "A", "Mumbai"),
	(103, "chetan", 85, "B", "Mumbai"),
	(104, "dhruv", 96, "A", "Delhi"),
	(105, "emanuel", 12, "F", "Delhi"),
	(106, "farah", 82, "B", "Delhi");
    
   select * from student;
   SELECT name, marks FROM student;
   select distinct city from student;
   select * from student where marks > 80;
   select * from student where marks >80  and  city = "Mumbai";
   select * from student where marks between 80 and 90; 
   select * from student where city not in ("Delhi", "Mumbai");
   select * from student limit 4;
   select * from student order by city desc;
   
   select * from student order by city asc limit 3;
   select max(marks) from student;
   select sum(marks) from student;
   select count(marks) from student;
   select min(marks) from student;
   select avg(marks) from student;
    
   select city, avg(marks)
   from student 
   group by city
   order by avg(marks)desc;
   
   select city, avg(marks)
   from student 
   group by city
   order by avg(marks);