--Create a table Student
CREATE TABLE Student (
  RollNo INT ,
  Name VARCHAR(50),
  Dept VARCHAR(20),
  Age INT,
  Phone VARCHAR(15)
);



--Create a table Course
CREATE TABLE Course (
  CourseID INT ,
  CourseName VARCHAR(50),
  Credits INT
);


--Add a new column City in table Student
ALTER TABLE Student ADD City VARCHAR(20);

--Add a new column Semester in table Student
ALTER TABLE Student ADD Semester INT;

--Rename column Phone to MobileNo in table Student.
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;


--Delete (drop) the table Course                                  
DROP TABLE Course;


--Insert 5 student records into Student
INSERT INTO Student VALUES (101, 'amrit', 'ME', 20, '9876543211', 'madhepura', 5);

INSERT INTO Student VALUES (102, 'arun', 'civil', 21, '9876543254', 'supual', 5);

INSERT INTO Student VALUES (103, 'prem', 'IT', 19, '9876543286', 'saharsa', 4);

INSERT INTO Student VALUES (104, 'udit', 'ME', 22, '9876543298', 'sasaram', 6);

INSERT INTO Student VALUES (105, 'sonu', 'EEE', 21, '9876543254', 'samastipur', 5);


--Display all records from Student.
SELECT * FROM Student;

--Display only RollNo and Name from Student
SELECT RollNo , Name FROM Student;

--Display all students from department "CSE"                                                                                                              
SELECT * FROM Student WHERE Dept='CSE';

--Display all students whose age is greater than 20.                                                                           
SELECT * FROM Student WHERE Age > 20 ;

--Update the department of RollNo = 101 to "ECE".                              
UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;

--Update the city of student "Rahul" to "Patna"
UPDATE Student SET City = 'Marineford' WHERE Name = 'Monkey D Luffy';

--Increase age of all students by 1 year
UPDATE Student SET Age=Age+1;

--Delete record of student whose RollNo = 105
DELETE FROM Student WHERE RollNo = 105;

--Delete all records from Student (table should remain)
DELETE FROM Student;