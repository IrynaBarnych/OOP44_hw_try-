-- 11. Виведіть повні імена викладачів і лекції, які вони читають
-- (назви предметів та груп). Зробіть відбір по тим лекціям,
-- які проходять в аудиторії «B103».

SELECT Teachers.Name AS TeacherName, Teachers.Surname AS TeacherSurname, 
       Lectures.LectureRoom, Subjects.Name AS SubjectName, Groups.Name AS GroupName
FROM Teachers
JOIN Lectures ON Teachers.Id = Lectures.TeacherId
JOIN Subjects ON Lectures.SubjectId = Subjects.Id
JOIN GroupsLectures ON Lectures.Id = GroupsLectures.LectureId
JOIN Groups ON GroupsLectures.GroupId = Groups.Id
WHERE Lectures.LectureRoom = 'B103';






