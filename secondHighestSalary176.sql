WITH CTE AS(
    SELECT salary, DENSE_RANK() OVER(ORDER BY salary DESC)
AS r
FROM Employee
)

SELECT 
MAX(
    case WHEN r = 2 
    THEN salary 
    ELSE NULL END
    ) AS SecondHighestSalary
FROM CTE
LIMIT 1;
