SELECT Name FROM students; # Get all the names of students in the database
SELECT * FROM students WHERE Age > 30; #Get all the data of students above 30 years old
SELECT Name FROM students WHERE Gender='F' AND Age=30; #Get the names of the females who are 30 years old
SELECT Points FROM students WHERE Name='Alex'; #Get the number of Points of Alex
INSERT INTO students (ID, Name, Age, Gender, Points) VALUES (7, 'Nathan', 21, 'M', 500); #Add yourself as a new student (your name, your age...)
UPDATE students SET Points = 500 WHERE Name='Basma'; #Increase the points of Basma because she solved a new exercise
UPDATE students SET Points = 100 WHERE Name='Alex'; #Decrease the points of Alex because he's late today

CREATE TABLE graduates(
    ID INTEGER  PRIMARY KEY AUTOINCREMENT,
    Name  TEXT NOT NULL UNIQUE,
    Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT
);

INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM Students WHERE Students.Name='Layal';
UPDATE graduates SET Graduation='08-09-2018' WHERE Name='Layal';
DELETE FROM graduates WHERE Name='Layal';

SELECT employees.name, employees.Company, companies.date FROM employees Inner join companies ON employees.Company=companies.name;
SELECT employees.name FROM employees Inner join companies ON employees.Company=companies.name and companies.Date < 2000;
SELECT companies.name FROM companies Inner join employees ON employees.Company=companies.name and employees.Role='Graphic Designer';

select name from students where points=(SELECT MAX(points) from students);
select AVG(points) from students;
select COUNT(Name) from students where points=500;
select Name from students WHERE Name GLOB '*s*';
select name from students ORDER BY points DESC;