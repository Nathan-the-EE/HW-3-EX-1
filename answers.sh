SELECT Name FROM students; # Get all the names of students in the database
SELECT * FROM students WHERE Age > 30; #Get all the data of students above 30 years old
SELECT Name FROM students WHERE Gender='F' AND Age=30; #Get the names of the females who are 30 years old
SELECT Points FROM students WHERE Name='Alex'; #Get the number of Points of Alex
INSERT INTO students (ID, Name, Age, Gender, Points) VALUES (7, 'Nathan', 21, 'M', 500); #Add yourself as a new student (your name, your age...)
UPDATE students SET Points = 500 WHERE Name='Basma'; #Increase the points of Basma because she solved a new exercise
UPDATE students SET Points = 100 WHERE Name='Alex'; #Decrease the points of Alex because he's late today

CREATE TABLE graduates(
    ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, #ID, Integer, Not Null, Primary key, Auto incerement
    Name  TEXT NOT NULL UNIQUE, #Name, Text, Not Null, Unique
    Age INTEGER, #Age, Integer
	Gender TEXT, #Gender, Text
	Points INTEGER, #Points, Integer
	Graduation TEXT #Graduation, Text that will point to the date of the graduation
);

INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM students WHERE students.Name='Layal'; #Copy Layal's data from students to graduates
UPDATE graduates SET Graduation='08-09-2018' WHERE Name='Layal'; #Add the graduation date previously mentioned to Layal's record in graduates
DELETE FROM students WHERE Name='Layal'; #Remove Layal's record from students

SELECT employees.Name, employees.Company, companies.Date FROM employees Inner join companies ON employees.Company=companies.name; #Produce a table that contains, for each employee, his/her name, company name, and company date.
SELECT employees.Name FROM employees Inner join companies ON employees.Company=companies.Name and companies.Date < 2000; #Find the name of employees that work in companies made before 2000.
SELECT companies.Name FROM companies Inner join employees ON employees.Company=companies.Name and employees.Role='Graphic Designer'; #Find the name of company that has a graphic designer.

select name from students where points=(SELECT MAX(points) from students);
select AVG(points) from students;
select COUNT(Name) from students where points=500;
select Name from students WHERE Name GLOB '*s*';
select name from students ORDER BY points DESC;