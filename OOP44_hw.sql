-- 10. Виведіть назви груп 5-го курсу, а також назви факультетів,
-- до яких вони належать.

SELECT Groups.Name AS GroupName, Faculties.Name AS FacultyName
FROM Groups
JOIN Departments ON Groups.FacultyId = Departments.FacultyId
JOIN Faculties ON Departments.FacultyId = Faculties.Id
WHERE Groups.Year = 5;





