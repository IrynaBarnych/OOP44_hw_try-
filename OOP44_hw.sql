-- 3. Виведіть прізвища кураторів груп і назви груп, які вони курирують.

SELECT
    C.Surname AS CuratorSurname,
    G.Name AS GroupName
FROM
    Curators AS C
JOIN
    GroupsCurators AS GC ON C.Id = GC.CuratorId
JOIN
    Groups AS G ON GC.GroupId = G.Id;