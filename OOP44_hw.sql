-- 1. Виведіть усі можливі пари рядків викладачів і груп.

SELECT Teachers.*, Groups.*
FROM Teachers
CROSS JOIN Groups;
