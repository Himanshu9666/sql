drop database tushardb;
create database tushardb;
use tushardb;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Department VARCHAR(50),
    EnrollmentYear INT
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Department VARCHAR(50),
    Credits INT
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);



-- Students Table
INSERT INTO Students VALUES
(1, 'Aditi Sharma', 'Computer Science', 2022),
(2, 'Rohan Patel', 'Mechanical', 2023),
(3, 'Sara Khan', 'Computer Science', 2022),
(4, 'Michael Brown', 'Civil', 2023),
(5, 'Neha Gupta', 'Mechanical', 2024),
(6, 'David Miller', 'Civil', 2022),
(7, 'Priya Verma', 'Computer Science', 2023);

-- Courses Table
INSERT INTO Courses VALUES
(101, 'Data Structures', 'Computer Science', 4),
(102, 'Thermodynamics', 'Mechanical', 3),
(103, 'Fluid Mechanics', 'Civil', 4),
(104, 'DBMS', 'Computer Science', 3),
(105, 'Machine Design', 'Mechanical', 4),
(106, 'Structural Analysis', 'Civil', 3),
(107, 'Operating Systems', 'Computer Science', 4);

-- Enrollments Table
INSERT INTO Enrollments VALUES
(1, 1, 101, '2025-01-10'),
(2, 1, 104, '2025-01-12'),
(3, 2, 102, '2025-01-11'),
(4, 2, 105, '2025-01-15'),
(5, 3, 101, '2025-01-13'),
(6, 3, 107, '2025-01-17'),
(7, 4, 103, '2025-01-16'),
(8, 5, 102, '2025-01-18'),
(9, 6, 103, '2025-01-19'),
(10, 7, 104, '2025-01-20'),
(11, 7, 107, '2025-01-21');


-- Q1
use tushardb;
SELECT department, COUNT(studentid) AS total_students
FROM students
GROUP BY department order by department;

-- Q2 
SELECT Department, COUNT(CourseID) AS Total_Courses
FROM Courses
GROUP BY Department order by department;

-- Q3
SELECT c.CourseName, COUNT(e.EnrollmentID) AS Total_Enrollments
FROM Courses c
LEFT JOIN Enrollments e ON c.CourseID = e.CourseID
GROUP BY c.CourseName;

-- Q4
SELECT s.StudentName, c.CourseName
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
ORDER BY s.StudentName;

-- Q5
SELECT c.CourseName, s.StudentName
FROM Courses c
JOIN Enrollments e ON c.CourseID = e.CourseID
JOIN Students s ON e.StudentID = s.StudentID
ORDER BY c.CourseName;

-- Q6
SELECT s.StudentName, c.CourseName
FROM Students s
LEFT JOIN Enrollments e ON s.StudentID = e.StudentID
LEFT JOIN Courses c ON e.CourseID = c.CourseID
ORDER BY s.StudentName;

-- Q7
SELECT c.CourseName, s.StudentName
FROM Courses c
LEFT JOIN Enrollments e ON c.CourseID = e.CourseID
LEFT JOIN Students s ON e.StudentID = s.StudentID
ORDER BY c.CourseName;

-- Q8
SELECT c.CourseName, COUNT(e.StudentID) AS Student_Count
FROM Courses c
LEFT JOIN Enrollments e ON c.CourseID = e.CourseID
GROUP BY c.CourseName;

-- Q9
SELECT s.StudentName, SUM(c.Credits) AS Total_Credits
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
GROUP BY s.StudentName;

-- Q10
SELECT s.Department, c.CourseName, COUNT(e.StudentID) AS Student_Count
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
GROUP BY s.Department, c.CourseName
ORDER BY s.Department, c.CourseName;
