-- Створення таблиці Curators
CREATE TABLE Curators (
   Id SERIAL PRIMARY KEY,
   Name VARCHAR(255) NOT NULL,
   Surname VARCHAR(255) NOT NULL
);

INSERT INTO Curators (Name, Surname) VALUES
    ('Олександра', 'Іванова'),
    ('Володимир', 'Петров'),
    ('Наталія', 'Сидорова');


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



-- Створення таблиці Lectures
CREATE TABLE Lectures (
   Id SERIAL PRIMARY KEY,
   LectureRoom TEXT NOT NULL,
   SubjectId INT REFERENCES Subjects(Id),
   TeacherId INT REFERENCES Teachers(Id)
);

INSERT INTO Lectures (LectureRoom, SubjectId, TeacherId) VALUES
    ('Ауд. 101', 1, 1),
    ('Ауд. 201', 2, 2),
    ('Ауд. 301', 3, 3),
    ('Ауд. 102', 1, 4),
    ('Ауд. 202', 2, 5);


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




