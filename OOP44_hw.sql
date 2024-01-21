-- 9. Виведіть назви груп, що належать до факультету «Computer Science».

SELECT Groups.Name AS GroupName
FROM Groups
JOIN Departments ON Groups.FacultyId = Departments.FacultyId
JOIN Faculties ON Departments.FacultyId = Faculties.Id
WHERE Faculties.Name = 'Computer Science';



