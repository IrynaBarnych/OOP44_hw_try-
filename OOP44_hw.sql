-- 7. Виведіть назви предметів, які викладає викладач «Samantha Adams».

SELECT DISTINCT Subjects.Name AS SubjectName
FROM Teachers
JOIN Lectures ON Teachers.Id = Lectures.TeacherId
JOIN Subjects ON Lectures.SubjectId = Subjects.Id
WHERE Teachers.Name = 'Samantha Adams';


