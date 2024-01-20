-- Створення таблиці Curators
CREATE TABLE Curators (
   Id SERIAL PRIMARY KEY,
   Name VARCHAR(MAX) NOT NULL,
   Surname VARCHAR(MAX) NOT NULL
);

INSERT INTO Curators (Name, Surname) VALUES
    ('Олександра', 'Іванова'),
    ('Володимир', 'Петров'),
    ('Наталія', 'Сидорова');
	
-- Створення таблиці Departments
CREATE TABLE Departments (
   Id SERIAL PRIMARY KEY,
   Financing DECIMAL(10, 2) NOT NULL DEFAULT 0,
   Name VARCHAR(100) UNIQUE NOT NULL,
   FacultyId INT REFERENCES Faculties(Id)
);

INSERT INTO Departments (Financing, Name, FacultyId) VALUES
    (50000.00, 'Математика', 1),
    (70000.00, 'Фізика', 1),
    (60000.00, 'Інформатика', 3),
    (80000.00, 'Мови', 2),
    (55000.00, 'Хімія', 1);


-- Створення таблиці Faculties
CREATE TABLE Faculties (
   Id SERIAL PRIMARY KEY,
   Financing DECIMAL(10, 2) NOT NULL DEFAULT 0,
   Name VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO Faculties (Financing, Name) VALUES
    (0.00, 'Факультет природничих наук'),
    (0.00, 'Факультет гуманітарних наук'),
    (0.00, 'Факультет інформаційних технологій');


-- Створення таблиці Groups
CREATE TABLE Groups (
   Id SERIAL PRIMARY KEY,
   Name VARCHAR(10) UNIQUE NOT NULL,
   Year INT NOT NULL CHECK(Year >= 1 AND Year <= 5),
   DepartmentId INT REFERENCES Departments(Id)
);

INSERT INTO Groups (Name, Year, DepartmentId) VALUES
    ('Група-101', 1, 1),
    ('Група-201', 2, 2),
    ('Група-301', 3, 3),
    ('Група-102', 1, 1),
    ('Група-202', 2, 2);


-- Створення таблиці GroupsCurators
CREATE TABLE GroupsCurators (
   Id SERIAL PRIMARY KEY,
   CuratorId INT REFERENCES Curators(Id),
   GroupId INT REFERENCES Groups(Id)
);

INSERT INTO GroupsCurators (CuratorId, GroupId) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (1, 4),
    (2, 5);


-- Створення таблиці GroupsLectures
CREATE TABLE GroupsLectures (
   Id SERIAL PRIMARY KEY,
   GroupId INT REFERENCES Groups(Id),
   LectureId INT REFERENCES Lectures(Id)
);

INSERT INTO GroupsLectures (GroupId, LectureId) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);


-- Створення таблиці Lectures
CREATE TABLE Lectures (
   Id SERIAL PRIMARY KEY,
   LectureRoom VARCHAR(MAX) NOT NULL,
   SubjectId INT REFERENCES Subjects(Id),
   TeacherId INT REFERENCES Teachers(Id)
);

INSERT INTO Lectures (LectureRoom, SubjectId, TeacherId) VALUES
    ('Ауд. 101', 1, 1),
    ('Ауд. 201', 2, 2),
    ('Ауд. 301', 3, 3),
    ('Ауд. 102', 1, 4),
    ('Ауд. 202', 2, 5);


-- Створення таблиці Subjects
CREATE TABLE Subjects (
   Id SERIAL PRIMARY KEY,
   Name VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO Subjects (Name) VALUES
    ('Математика'),
    ('Фізика'),
    ('Інформатика'),
    ('Мови'),
    ('Хімія');


-- Створення таблиці Teachers
CREATE TABLE Teachers (
   Id SERIAL PRIMARY KEY,
   EmploymentDate DATE NOT NULL CHECK(EmploymentDate >= '1990-01-01'),
   IsAssistant BOOLEAN NOT NULL DEFAULT FALSE,
   IsProfessor BOOLEAN NOT NULL DEFAULT FALSE,
   Name VARCHAR(MAX) NOT NULL,
   Position VARCHAR(MAX) NOT NULL,
   Premium DECIMAL(10, 2) NOT NULL DEFAULT 0,
   Salary DECIMAL(10, 2) NOT NULL CHECK(Salary > 0),
   Surname VARCHAR(MAX) NOT NULL
);

INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) VALUES
    ('2000-01-15', TRUE, FALSE, 'Олег', 'Доцент', 2000.00, 60000.00, 'Коваленко'),
    ('1995-05-20', FALSE, TRUE, 'Марія', 'Професор', 3000.00, 80000.00, 'Петренко'),
    ('2008-11-10', TRUE, FALSE, 'Василь', 'Старший викладач', 1500.00, 55000.00, 'Іванов'),
    ('2015-03-25', FALSE, TRUE, 'Ольга', 'Професор', 2500.00, 70000.00, 'Сидорова'),
    ('2005-08-12', TRUE, FALSE, 'Ігор', 'Доцент', 1800.00, 65000.00, 'Козлов');

