-- Multi-Table Challenge 2: Products with Formats and Prices
-- List product titles with their format description and edition price.

SELECT products.title, editions.price, formats.description
FROM editions
JOIN products
ON editions.product_id = products.product_id
JOIN formats
ON editions.format_id = formats.format_id
ORDER BY editions.price DESC;


-- Multi-Table Challenge 3: Orders with Total Payment
-- List all orders along with the total amount paid for each.

SELECT orders.order_id, orders.customer_id, SUM(payments.amount_paid)
FROM orders
JOIN payments
ON orders.order_id = payments.order_id
GROUP BY orders.order_id, orders.customer_id
ORDER BY orders.order_id ASC;


-- Multi-Table Challenge 4: Products and Their Artists & Genres
-- List each product’s title, its artist’s name, and its genre name.

SELECT products.title, artists.name, genres.name
FROM products
JOIN productartists
ON products.product_id = productartists.product_id
JOIN artists
ON productartists.artist_id = artists.artist_id
JOIN productgenres
ON products.product_id = productgenres.product_id
JOIN genres
ON productgenres.genre_id = genres.genre_id
ORDER BY artists.name ASC, genres.name DESC;
