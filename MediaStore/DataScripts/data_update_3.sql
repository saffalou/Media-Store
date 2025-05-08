-- 1. Additional payment (split payment for order 11)
INSERT INTO
    Payments (
        payment_id,
        order_id,
        amount_paid,
        payment_date,
        transaction_reference,
        is_prepayment
    )
VALUES (
        18,
        11,
        20.00,
        '2025-04-02',
        'TX00018',
        1
    );

-- 2. Preorder with future expected date (on order 13)
INSERT INTO
    OrderItems (
        order_item_id,
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (24, 13, 17, 1, '2025-06-15');

-- 3. Out-of-stock entry for edition 18 (Remastered CD in warehouse 2)
INSERT INTO
    Stock (
        stock_id,
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (19, 18, 2, 0, 5);

-- 4. Multi-artist + multi-genre for Album 13 (product_id 13)
INSERT INTO ProductArtists (product_id, artist_id) VALUES (13, 6);
-- Also Daft Punk
INSERT INTO ProductGenres (product_id, genre_id) VALUES (13, 2);
-- Also Jazz

-- 5. Customer with no orders
INSERT INTO
    Customers (customer_id, name, email)
VALUES (
        9,
        'Isla Dean',
        'isla@inactive.com'
    );

-- 6. Cancelled order for existing customer (customer_id 6)
INSERT INTO
    Orders (
        order_id,
        customer_id,
        order_date,
        order_status
    )
VALUES (
        14,
        6,
        '2025-04-08',
        'cancelled'
    );
