CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
    WITH CTE AS(
    SELECT salary, DENSE_RANK() OVER(ORDER BY salary DESC)
    AS r
    FROM Employee
    )

    SELECT 
    MAX(
        case WHEN r = N 
        THEN salary 
        ELSE NULL END
        ) AS SecondHighestSalary
    FROM CTE
    LIMIT 1
  );
END
