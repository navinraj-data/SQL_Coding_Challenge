
-- DISTINCT & WHERE

CREATE DATABASE University;



CREATE TABLE Students (
    StudentID INT,
    StudentName VARCHAR(100),
    Department VARCHAR(100),
    Email VARCHAR(100),
    Course VARCHAR(100),
   GPA DECIMAL(3,2)
);
select * from students;
SELECT DISTINCT Department
FROM Students;


-- is null and not null
SELECT *
FROM Students
WHERE Email IS NULL;
select * from students where email is not null;

---  IN, BETWEEN, NOT BETWEEN

SELECT *
FROM Students
WHERE Course IN ('commerce','doctor');

select * from students where gpa between 2 and 4.6 ;
select * from students where gpa not between 3 and 5;


