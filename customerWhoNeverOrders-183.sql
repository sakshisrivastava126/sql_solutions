# Write your MySQL query statement below
SELECT p1.name AS Customers
FROM Customers AS p1
LEFT JOIN Orders AS p2
    ON p1.id = p2.customerId
WHERE p2.id IS NULL;
