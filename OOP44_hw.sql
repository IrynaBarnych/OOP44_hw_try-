-- 8. Виведіть назви кафедр, на яких викладається дисципліна
-- «Database Theory».

SELECT DISTINCT Departments.Name AS DepartmentName
FROM Departments
JOIN Groups ON Departments.Id = Groups.DepartmentId
JOIN Subjects ON Groups.Id = Subjects.GroupId
JOIN Lectures ON Subjects.Id = Lectures.SubjectId
WHERE Subjects.Name = 'Database Theory';


