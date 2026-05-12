create database connection; 
CREATE TABLE Student 
( 
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    StudentAge INT,
    StudentGrade INT
);

CREATE TABLE Result
(
    StudentID INT NOT NULL,
    ResultID INT PRIMARY KEY,
    CourseCode INT NOT NULL,
    CourseName VARCHAR(50) NOT NULL,
    CourseCredit INT NOT NULL,
    
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

INSERT INTO Student(StudentID,StudentName,StudentAge,StudentGrade)
Values
(1,'Sazib',24,4),
(2,'Jeny',23,3),
(3,'Mosi',22,2);

INSERT INTO Result(ResultID,CourseCode,CourseName ,CourseCredit  ,StudentID )
values
(1,3107,'DBMS',3,1),
(2,3108,'DBMS Lab',4,2),
(3,3109,'Data Com',3,3);

select * from Student ;
select * from Result ;

delete from Result
where ResultID =3;

select stu.StudentID , stu.StudentName ,Rs.CourseName ,Rs.CourseCredit 
from Student as stu
right join Result as Rs
on stu.StudentID = Rs.StudentID