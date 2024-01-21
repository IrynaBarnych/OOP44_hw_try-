-- 2. Виведіть назви факультетів, фонд фінансування кафедр
-- яких перевищує фонд фінансування факультету.

SELECT
    F.Name AS FacultyName,
    D.Name AS DepartmentName,
    D.Financing AS DepartmentFinancing,
    D.Financing AS FacultyFinancing
FROM
    Faculties AS F
JOIN
    Departments AS D ON D.Id > F.Id
WHERE
    D.Financing > D.Financing;
	
-- прошу звернути увагу на цю задачу, бо вдалося зробити тільки так



































