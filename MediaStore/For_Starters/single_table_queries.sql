-- Query 1: Find the 5 most expensive editions
-- List the top 5 editions by price.

-- Expected Columns:
-- edition_id, price
-- Bonus: Add barcode too

SELECT
    edition_id,
    price AS Most_expensive,
    barcode
FROM editions
ORDER BY price DESC
LIMIT 5;

-- Query 2: List all customers with a Gmail address
-- Use a LIKE filter to find Gmail users.

-- Expected Columns:
-- customer_id, name, email
SELECT customer_id, name, email
FROM customers
WHERE
    email LIKE '%example.com'
LIMIT 20;

SELECT * FROM customers;
-- Query 3: Show all products released before 1990
-- Sort by release_year ascending.

-- Expected Columns:
-- product_id, title, release_year

SELECT product_id, title, release_year
FROM products
WHERE
    release_year < 1990;

-- Query 4: List all warehouse locations with incoming stock
-- Show each warehouse that has at least 1 incoming unit of anything.

-- Expected Columns:
-- warehouse_id, quantity_available, incoming_quantity
SELECT * FROM warehouses;

SELECT * FROM stock;

SELECT stock.warehouse_id, stock.quantity_available, stock.incoming_quantity
FROM stock
    JOIN warehouses ON warehouses.warehouse_id = warehouses.warehouse_id
    AND stock.incoming_quantity > 0;

-- Query 5: Find editions priced between $30 and $50
-- Use BETWEEN and order by price descending.

-- Expected Columns:
-- edition_id, price, barcode
SELECT edition_id, price, barcode
FROM editions
WHERE
    price BETWEEN 30 AND 50;
