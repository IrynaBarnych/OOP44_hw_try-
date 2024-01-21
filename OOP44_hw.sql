-- 6. Виведіть назви кафедр і назви груп, які до них належать.

SELECT Departments.Name AS DepartmentName, Groups.Name AS GroupName
FROM Groups
JOIN Departments ON Groups.DepartmentId = Departments.Id;



