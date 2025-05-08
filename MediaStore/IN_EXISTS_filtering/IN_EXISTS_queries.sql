-- Subquery Tier 1 – Challenge 1: Customers Who Have Placed Orders
-- List all customers who have placed at least one order.
-- Use a subquery with IN or EXISTS to filter only those customers who appear in the Orders table.

SELECT *
FROM customers
WHERE
    EXISTS (
        SELECT orders.order_id
        FROM orders
        WHERE
            orders.customer_id = customers.customer_id
    );

-- Subquery Tier 1 – Challenge 2: Orders That Have Been Paid For
-- List all orders that have at least one payment associated with them.

-- Use EXISTS or IN to return only those orders where a payment exists in the Payments table.

SELECT *
FROM orders
WHERE
    EXISTS (
        SELECT 1
        FROM payments
        WHERE
            orders.order_id = payments.order_id
    );

-- Subquery Tier 1 – Challenge 3: Products That Have Ever Been Ordered
-- List all product titles that have at least one edition included in an order.
-- Your goal: return only those Products that have at least one of their editions included in any order.

SELECT *
FROM products
WHERE
    EXISTS (
        SELECT 1
        FROM editions
        WHERE
            editions.product_id = products.product_id
            AND EXISTS (
                select 1
                FROM orderitems
                WHERE
                    orderitems.edition_id = editions.edition_id
            )
    );

-- Subquery Tier 1 – Challenge 4: Customers Who Preordered Something
-- List all customers who have placed at least one preorder — meaning an order item with a non-null preorder_expected_date.
-- Goal: Return all customers who have ever preordered an item.

SELECT *
FROM customers
WHERE
    EXISTS (
        SELECT 1
        FROM orders
        WHERE
            orders.customer_id = customers.customer_id
            AND EXISTS (
                SELECT 1
                FROM orderitems
                WHERE
                    orderitems.order_id = orders.order_id
                    AND preorder_expected_date IS NOT NULL
            )
    );

-- Subquery Tier 1 – Challenge 5: Formats That Have Never Been Ordered
-- List all formats (e.g. CD, Vinyl, etc.) for which no editions have ever been ordered.

-- This flips the logic a bit — you’re now filtering using a NOT EXISTS pattern. Find all Formats for which no linked Editions have been included in any order.
SELECT *
FROM formats
WHERE
    EXISTS (
        SELECT 1
        FROM editions
        WHERE
            editions.format_id = formats.format_id
            AND NOT EXISTS (
                SELECT 1
                FROM orderitems
                WHERE
                    orderitems.edition_id = editions.edition_id
            )
    );

-- Subquery Tier 1 – IN Challenge 1: Orders for High-Spending Customers
-- List all orders placed by customers who have paid more than $100 in total.
SELECT orders.order_id, orders.customer_id, payments.amount_paid
FROM orders
    JOIN payments ON orders.order_id = payments.order_id
WHERE
    orders.customer_id IN (
        SELECT customer_id
        FROM payments
        GROUP BY
            customer_id
        HAVING
            SUM(amount_paid) > 100
        ORDER BY orders.order_id, orders.customer_id
    );

-- Subquery Tier 1 – IN Challenge 2: Artists With Multiple Genres
-- List all artists who have products associated with more than one genre.
SELECT artists.name, productgenres.genre_id
FROM
    artists
    JOIN productartists ON artists.artist_id = productartists.artist_id
    JOIN productgenres ON productartists.product_id = productgenres.product_id
WHERE
    productartists.artist_id IN (
        SELECT productartists.artist_id
        FROM
            productartists
            JOIN productgenres ON productartists.product_id = productgenres.product_id
        GROUP BY
            productartists.artist_id
        HAVING
            COUNT(
                DISTINCT productgenres.genre_id
            ) > 1
    );
