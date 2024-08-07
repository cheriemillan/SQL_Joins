/* joins: select all the computers from the products table:
using the products table and the categories table,
 return the product name and the category name */
 
 SELECT p.Name, c.Name FROM products as p
 INNER JOIN categories AS c
 ON p.CategoryID = c.CategoryID
 WHERE c.Name = "Computers";
 
/* joins: find all product names, product prices, 
and products ratings that have a rating of 5 */

SELECT p.Name, p.Price, r.Rating FROM products as p
INNER JOIN reviews as r
ON p.ProductID = r.ProductID
WHERE r.Rating = 5;

/* joins: find the employee with the most total quantity sold.  
use the sum() function and group by */
SELECT e.FirstName, e.LastName, SUM(s.Quantity) AS "Total" FROM sales AS s
INNER JOIN employees as e
ON s.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
ORDER BY Total DESC
LIMIT 1;

/* joins: find the name of the department, 
and the name of the category for Appliances and Games */
SELECT d.Name AS DepartmentName, c.Name AS CategoryName FROM departments AS d
INNER JOIN categories AS c
ON d.DepartmentID = c.DepartmentID
WHERE c.Name = "Appliances" OR c.Name = "Games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT p.Name, SUM(s.Quantity) AS TotalSales, SUM(s.Quantity * s.PricePerUnit) AS TotalPrice
FROM sales AS s
INNER JOIN products AS p
ON s.ProductID = p.ProductID
WHERE p.Name = "Eagles: Hotel California";

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name, r.Reviewer, r.Comment FROM reviews AS r
INNER JOIN products AS p
ON r.ProductID = p.ProductID
WHERE p.Name = "Visio TV" AND r.Rating = 1;

