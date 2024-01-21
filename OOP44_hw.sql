-- 4. Виведіть імена та прізвища викладачів, які читають лекції
-- у групі «P107».

SELECT
    T.Name AS TeacherName,
    T.Surname AS TeacherSurname
FROM
    Teachers AS T
JOIN
    Lectures AS L ON T.Id = L.TeacherId
JOIN
    GroupsLectures AS GL ON L.Id = GL.LectureId
JOIN
    Groups AS G ON GL.GroupId = G.Id
WHERE
    G.Name = 'P107';