--Завдання №5 - знайти проєкт з найбільшою тривалістю

SELECT
    project.ID,
    DATEDIFF(MONTH, project.START_DATE, project.FINISH_DATE) AS MONTH_COUNT
FROM
    megasoftDB.project
WHERE
    DATEDIFF(MONTH, project.START_DATE, project.FINISH_DATE) = (
        SELECT MAX(DATEDIFF(MONTH, START_DATE, FINISH_DATE))
        FROM megasoftDB.project
    );