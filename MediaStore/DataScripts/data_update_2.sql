-- Customers (IDs 5–8)
INSERT INTO
    Customers (customer_id, name, email)
VALUES (
        5,
        'Elena Torres',
        'elena@gmail.com'
    ),
    (
        6,
        'Frank Zhang',
        'frank@hotmail.com'
    ),
    (
        7,
        'Grace Lee',
        'grace@protonmail.com'
    ),
    (
        8,
        'Henry Adams',
        'henry@outlook.com'
    );

-- Addresses (shipping + billing for new customers)
INSERT INTO
    Addresses (
        customer_id,
        type,
        address_line
    )
VALUES (5, 'billing', '45 Fiction Rd'),
    (5, 'shipping', '12 Real Ln'),
    (6, 'billing', '99 Sample St'),
    (
        6,
        'shipping',
        '1000 Example Blvd'
    ),
    (7, 'billing', '5 Archive Ave'),
    (
        7,
        'shipping',
        '8 Cloud Crescent'
    ),
    (8, 'billing', '1 Byte St'),
    (8, 'shipping', '2 Sync Lane');

-- Products (IDs 11–13)
INSERT INTO
    Products (
        product_id,
        title,
        release_year,
        label_id
    )
VALUES (11, 'Album 11', 2022, 3),
    (12, 'Album 12', 2019, 2),
    (13, 'Album 13', 2023, 4);

-- Editions (IDs 16–18)
INSERT INTO
    Editions (
        edition_id,
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (16, 11, 1, 'BC00016', 39.99),
    (17, 12, 2, 'BC00017', 22.49),
    (18, 13, 5, 'BC00018', 49.00);

-- ProductArtists
INSERT INTO
    ProductArtists (product_id, artist_id)
VALUES (11, 5), -- Taylor Swift
    (12, 6), -- Daft Punk
    (13, 4);
-- Kanye West

-- ProductGenres
INSERT INTO
    ProductGenres (product_id, genre_id)
VALUES (11, 5), -- Pop
    (12, 6), -- Electronic
    (13, 4);
-- Hip Hop

-- Stock (IDs 16–18)
INSERT INTO
    Stock (
        stock_id,
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (16, 16, 1, 12, 4),
    (17, 17, 2, 9, 1),
    (18, 18, 3, 7, 2);

-- Orders (IDs 11–13)
INSERT INTO
    Orders (
        order_id,
        customer_id,
        order_date,
        order_status
    )
VALUES (
        11,
        5,
        '2025-04-01',
        'complete'
    ),
    (
        12,
        6,
        '2025-04-02',
        'pending'
    ),
    (
        13,
        7,
        '2025-04-03',
        'complete'
    );

-- OrderItems (IDs 21–23)
INSERT INTO
    OrderItems (
        order_item_id,
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (21, 11, 16, 1, NULL),
    (22, 12, 17, 2, '2025-05-10'),
    (23, 13, 18, 1, NULL);

-- Payments (IDs 15–17)
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
        15,
        11,
        39.99,
        '2025-04-01',
        'TX00015',
        0
    ),
    (
        16,
        13,
        49.00,
        '2025-04-03',
        'TX00016',
        1
    ),
    (
        17,
        12,
        22.49,
        '2025-04-02',
        'TX00017',
        0
    );

-- ShippingDetails
INSERT INTO
    ShippingDetails (
        order_id,
        address_id,
        shipped_date
    )
VALUES (11, 10, '2025-04-02'),
    (12, 12, '2025-04-05'),
    (13, 14, '2025-04-04');

-- Refunds
INSERT INTO
    Refunds (
        payment_id,
        amount_refunded,
        refund_date
    )
VALUES (15, 10.00, '2025-04-06'),
    (17, 22.49, '2025-04-07');
