-- 5. Виведіть прізвища викладачів і назви факультетів, на яких вони читають лекції.

SELECT Faculties.FacultyName, Teachers.TeacherSurname
FROM Lectures
JOIN Teachers ON Lectures.teacherid = Teachers.id
JOIN Faculties ON Lectures.FacultyName = Faculties.FacultyName;


-- зробила за прикладом 
--SELECT Students.student_name, Teachers.teacher_name
--FROM Courses
--JOIN Teachers ON Courses.course_name = Teachers.subject
--JOIN Students ON Courses.student_id = Students.student_id;
--код не запустився


