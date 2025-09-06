

-- =====================================================
-- Question 1 🧑‍💼
-- Get firstName, lastName, email, and officeCode of all employees.
-- Use an INNER JOIN to combine employees with offices on officeCode.
-- =====================================================
SELECT
  e.firstName,
  e.lastName,
  e.email,
  e.officeCode
FROM
  employees AS e
  INNER JOIN offices AS o
    ON e.officeCode = o.officeCode;


-- =====================================================
-- Question 2 🛍️
-- Get productName, productVendor, and productLine from products.
-- Use a LEFT JOIN to include all products even if no matching productline exists.
-- =====================================================
SELECT
  p.productName,
  p.productVendor,
  p.productLine
FROM
  products AS p
  LEFT JOIN productlines AS pl
    ON p.productLine = pl.productLine;


-- =====================================================
-- Question 3 📦
-- Retrieve orderDate, shippedDate, status, and customerNumber for the first 10 orders.
-- Use a RIGHT JOIN to combine customers with orders on customerNumber.
-- (RIGHT JOIN ensures all rows from the orders table are returned even if there's no matching customer.)
-- We order by orderDate (oldest first). Adjust ORDER BY if you prefer most recent.
-- =====================================================
SELECT
  o.orderDate,
  o.shippedDate,
  o.status,
  o.customerNumber
FROM
  customers AS c
  RIGHT JOIN orders AS o
    ON c.customerNumber = o.customerNumber
ORDER BY
  o.orderDate ASC
LIMIT 10;
