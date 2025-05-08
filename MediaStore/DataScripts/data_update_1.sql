INSERT INTO Genres (name) VALUES ('Rock');

INSERT INTO Genres (name) VALUES ('Jazz');

INSERT INTO Genres (name) VALUES ('Classical');

INSERT INTO Genres (name) VALUES ('Hip Hop');

INSERT INTO Genres (name) VALUES ('Pop');

INSERT INTO Genres (name) VALUES ('Electronic');

INSERT INTO Genres (name) VALUES ('Reggae');

INSERT INTO Formats (description) VALUES ('Vinyl');

INSERT INTO Formats (description) VALUES ('CD');

INSERT INTO Formats (description) VALUES ('DVD');

INSERT INTO Formats (description) VALUES ('Deluxe Vinyl');

INSERT INTO Formats (description) VALUES ('Remastered CD');

INSERT INTO Artists (name) VALUES ('The Beatles');

INSERT INTO Artists (name) VALUES ('Miles Davis');

INSERT INTO Artists (name) VALUES ('Ludwig van Beethoven');

INSERT INTO Artists (name) VALUES ('Kanye West');

INSERT INTO Artists (name) VALUES ('Taylor Swift');

INSERT INTO Artists (name) VALUES ('Daft Punk');

INSERT INTO Artists (name) VALUES ('Bob Marley');

INSERT INTO Warehouses (location) VALUES ('Melbourne');

INSERT INTO Warehouses (location) VALUES ('Sydney');

INSERT INTO Warehouses (location) VALUES ('Brisbane');

INSERT INTO
    Customers (name, email)
VALUES (
        'Alice Johnson',
        'alice@example.com'
    );

INSERT INTO
    Customers (name, email)
VALUES (
        'Bob Smith',
        'bob@example.com'
    );

INSERT INTO
    Customers (name, email)
VALUES (
        'Clara Lee',
        'clara@example.com'
    );

INSERT INTO
    Customers (name, email)
VALUES (
        'Daniel Wu',
        'daniel@example.com'
    );

INSERT INTO
    Products (title, release_year, label_id)
VALUES ('Album 1', 2009, 4);

INSERT INTO
    Products (title, release_year, label_id)
VALUES ('Album 2', 1987, 4);

INSERT INTO
    Products (title, release_year, label_id)
VALUES ('Album 3', 1981, 2);

INSERT INTO
    Products (title, release_year, label_id)
VALUES ('Album 4', 1973, 3);

INSERT INTO
    Products (title, release_year, label_id)
VALUES ('Album 5', 1973, 1);

INSERT INTO
    Products (title, release_year, label_id)
VALUES ('Album 6', 1985, 1);

INSERT INTO
    Products (title, release_year, label_id)
VALUES ('Album 7', 1974, 6);

INSERT INTO
    Products (title, release_year, label_id)
VALUES ('Album 8', 2011, 6);

INSERT INTO
    Products (title, release_year, label_id)
VALUES ('Album 9', 1993, 1);

INSERT INTO
    Products (title, release_year, label_id)
VALUES ('Album 10', 2000, 3);

INSERT INTO
    Editions (
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (6, 2, 'BC00001', 17.34);

INSERT INTO
    Editions (
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (1, 2, 'BC00002', 31.43);

INSERT INTO
    Editions (
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (7, 2, 'BC00003', 40.41);

INSERT INTO
    Editions (
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (10, 3, 'BC00004', 33.86);

INSERT INTO
    Editions (
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (3, 4, 'BC00005', 28.0);

INSERT INTO
    Editions (
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (6, 2, 'BC00006', 46.08);

INSERT INTO
    Editions (
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (4, 1, 'BC00007', 43.92);

INSERT INTO
    Editions (
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (9, 1, 'BC00008', 11.21);

INSERT INTO
    Editions (
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (9, 1, 'BC00009', 49.89);

INSERT INTO
    Editions (
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (10, 2, 'BC00010', 25.79);

INSERT INTO
    Editions (
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (3, 1, 'BC00011', 33.33);

INSERT INTO
    Editions (
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (9, 4, 'BC00012', 28.72);

INSERT INTO
    Editions (
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (6, 5, 'BC00013', 32.36);

INSERT INTO
    Editions (
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (3, 2, 'BC00014', 55.03);

INSERT INTO
    Editions (
        product_id,
        format_id,
        barcode,
        price
    )
VALUES (2, 1, 'BC00015', 41.35);

INSERT INTO ProductGenres (product_id, genre_id) VALUES (1, 7);

INSERT INTO ProductGenres (product_id, genre_id) VALUES (2, 3);

INSERT INTO ProductGenres (product_id, genre_id) VALUES (3, 3);

INSERT INTO ProductGenres (product_id, genre_id) VALUES (4, 7);

INSERT INTO ProductGenres (product_id, genre_id) VALUES (5, 3);

INSERT INTO ProductGenres (product_id, genre_id) VALUES (6, 4);

INSERT INTO ProductGenres (product_id, genre_id) VALUES (7, 1);

INSERT INTO ProductGenres (product_id, genre_id) VALUES (8, 6);

INSERT INTO ProductGenres (product_id, genre_id) VALUES (9, 1);

INSERT INTO ProductGenres (product_id, genre_id) VALUES (10, 2);

INSERT INTO ProductArtists (product_id, artist_id) VALUES (1, 5);

INSERT INTO ProductArtists (product_id, artist_id) VALUES (2, 2);

INSERT INTO ProductArtists (product_id, artist_id) VALUES (3, 3);

INSERT INTO ProductArtists (product_id, artist_id) VALUES (4, 2);

INSERT INTO ProductArtists (product_id, artist_id) VALUES (5, 2);

INSERT INTO ProductArtists (product_id, artist_id) VALUES (6, 3);

INSERT INTO ProductArtists (product_id, artist_id) VALUES (7, 1);

INSERT INTO ProductArtists (product_id, artist_id) VALUES (8, 5);

INSERT INTO ProductArtists (product_id, artist_id) VALUES (9, 1);

INSERT INTO ProductArtists (product_id, artist_id) VALUES (10, 5);

INSERT INTO
    Stock (
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (1, 2, 17, 0);

INSERT INTO
    Stock (
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (2, 2, 5, 4);

INSERT INTO
    Stock (
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (3, 1, 19, 3);

INSERT INTO
    Stock (
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (4, 3, 12, 1);

INSERT INTO
    Stock (
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (5, 1, 1, 8);

INSERT INTO
    Stock (
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (6, 1, 1, 3);

INSERT INTO
    Stock (
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (7, 2, 14, 3);

INSERT INTO
    Stock (
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (8, 1, 8, 1);

INSERT INTO
    Stock (
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (9, 2, 12, 7);

INSERT INTO
    Stock (
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (10, 1, 7, 9);

INSERT INTO
    Stock (
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (11, 2, 19, 8);

INSERT INTO
    Stock (
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (12, 1, 3, 8);

INSERT INTO
    Stock (
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (13, 2, 19, 3);

INSERT INTO
    Stock (
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (14, 2, 16, 2);

INSERT INTO
    Stock (
        edition_id,
        warehouse_id,
        quantity_available,
        incoming_quantity
    )
VALUES (15, 1, 8, 4);

INSERT INTO
    Addresses (
        customer_id,
        type,
        address_line
    )
VALUES (
        1,
        'billing',
        '300 Example St'
    );

INSERT INTO
    Addresses (
        customer_id,
        type,
        address_line
    )
VALUES (
        1,
        'shipping',
        '130 Example St'
    );

INSERT INTO
    Addresses (
        customer_id,
        type,
        address_line
    )
VALUES (
        2,
        'billing',
        '494 Example St'
    );

INSERT INTO
    Addresses (
        customer_id,
        type,
        address_line
    )
VALUES (
        2,
        'shipping',
        '461 Example St'
    );

INSERT INTO
    Addresses (
        customer_id,
        type,
        address_line
    )
VALUES (
        3,
        'billing',
        '305 Example St'
    );

INSERT INTO
    Addresses (
        customer_id,
        type,
        address_line
    )
VALUES (
        3,
        'shipping',
        '774 Example St'
    );

INSERT INTO
    Addresses (
        customer_id,
        type,
        address_line
    )
VALUES (
        4,
        'billing',
        '239 Example St'
    );

INSERT INTO
    Addresses (
        customer_id,
        type,
        address_line
    )
VALUES (
        4,
        'shipping',
        '746 Example St'
    );

INSERT INTO
    Orders (
        customer_id,
        order_date,
        order_status
    )
VALUES (3, '2024-06-01', 'complete');

INSERT INTO
    Orders (
        customer_id,
        order_date,
        order_status
    )
VALUES (4, '2025-03-08', 'complete');

INSERT INTO
    Orders (
        customer_id,
        order_date,
        order_status
    )
VALUES (4, '2024-07-27', 'pending');

INSERT INTO
    Orders (
        customer_id,
        order_date,
        order_status
    )
VALUES (1, '2024-10-20', 'partial');

INSERT INTO
    Orders (
        customer_id,
        order_date,
        order_status
    )
VALUES (1, '2024-12-18', 'partial');

INSERT INTO
    Orders (
        customer_id,
        order_date,
        order_status
    )
VALUES (1, '2025-01-30', 'complete');

INSERT INTO
    Orders (
        customer_id,
        order_date,
        order_status
    )
VALUES (1, '2024-08-12', 'complete');

INSERT INTO
    Orders (
        customer_id,
        order_date,
        order_status
    )
VALUES (3, '2025-02-13', 'partial');

INSERT INTO
    Orders (
        customer_id,
        order_date,
        order_status
    )
VALUES (3, '2024-08-07', 'pending');

INSERT INTO
    Orders (
        customer_id,
        order_date,
        order_status
    )
VALUES (4, '2024-12-11', 'complete');

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (4, 13, 2, NULL);

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (10, 9, 2, NULL);

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (7, 11, 1, '2025-05-01');

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (2, 15, 2, NULL);

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (5, 15, 1, NULL);

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (6, 1, 3, NULL);

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (3, 1, 2, '2025-05-16');

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (2, 3, 3, '2025-05-01');

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (6, 9, 2, '2025-04-27');

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (4, 10, 2, NULL);

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (10, 6, 2, NULL);

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (9, 6, 3, NULL);

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (3, 11, 1, NULL);

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (6, 7, 3, NULL);

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (7, 2, 1, NULL);

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (5, 11, 1, NULL);

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (8, 8, 1, NULL);

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (4, 9, 3, '2025-04-24');

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (6, 15, 3, NULL);

INSERT INTO
    OrderItems (
        order_id,
        edition_id,
        quantity,
        preorder_expected_date
    )
VALUES (3, 9, 2, NULL);

INSERT INTO
    Payments (
        order_id,
        amount_paid,
        payment_date,
        transaction_reference,
        is_prepayment
    )
VALUES (
        8,
        12.96,
        '2025-03-03',
        'TX00001',
        0
    );

INSERT INTO
    Payments (
        order_id,
        amount_paid,
        payment_date,
        transaction_reference,
        is_prepayment
    )
VALUES (
        4,
        102.06,
        '2025-04-15',
        'TX00002',
        0
    );

INSERT INTO
    Payments (
        order_id,
        amount_paid,
        payment_date,
        transaction_reference,
        is_prepayment
    )
VALUES (
        3,
        78.76,
        '2025-03-27',
        'TX00003',
        1
    );

INSERT INTO
    Payments (
        order_id,
        amount_paid,
        payment_date,
        transaction_reference,
        is_prepayment
    )
VALUES (
        2,
        64.28,
        '2025-01-27',
        'TX00004',
        1
    );

INSERT INTO
    Payments (
        order_id,
        amount_paid,
        payment_date,
        transaction_reference,
        is_prepayment
    )
VALUES (
        5,
        41.07,
        '2025-01-11',
        'TX00005',
        0
    );

INSERT INTO
    Payments (
        order_id,
        amount_paid,
        payment_date,
        transaction_reference,
        is_prepayment
    )
VALUES (
        3,
        114.07,
        '2025-03-10',
        'TX00006',
        1
    );

INSERT INTO
    Payments (
        order_id,
        amount_paid,
        payment_date,
        transaction_reference,
        is_prepayment
    )
VALUES (
        3,
        30.3,
        '2025-03-19',
        'TX00007',
        0
    );

INSERT INTO
    Payments (
        order_id,
        amount_paid,
        payment_date,
        transaction_reference,
        is_prepayment
    )
VALUES (
        8,
        97.67,
        '2025-02-07',
        'TX00008',
        1
    );

INSERT INTO
    Payments (
        order_id,
        amount_paid,
        payment_date,
        transaction_reference,
        is_prepayment
    )
VALUES (
        1,
        54.08,
        '2025-03-17',
        'TX00009',
        0
    );

INSERT INTO
    Payments (
        order_id,
        amount_paid,
        payment_date,
        transaction_reference,
        is_prepayment
    )
VALUES (
        6,
        117.38,
        '2025-01-31',
        'TX00010',
        1
    );

INSERT INTO
    Payments (
        order_id,
        amount_paid,
        payment_date,
        transaction_reference,
        is_prepayment
    )
VALUES (
        9,
        90.16,
        '2025-02-17',
        'TX00011',
        0
    );

INSERT INTO
    Payments (
        order_id,
        amount_paid,
        payment_date,
        transaction_reference,
        is_prepayment
    )
VALUES (
        10,
        98.83,
        '2025-03-06',
        'TX00012',
        1
    );

INSERT INTO
    Payments (
        order_id,
        amount_paid,
        payment_date,
        transaction_reference,
        is_prepayment
    )
VALUES (
        6,
        99.85,
        '2025-01-22',
        'TX00013',
        1
    );

INSERT INTO
    Payments (
        order_id,
        amount_paid,
        payment_date,
        transaction_reference,
        is_prepayment
    )
VALUES (
        9,
        90.01,
        '2025-02-24',
        'TX00014',
        0
    );

INSERT INTO
    Refunds (
        payment_id,
        amount_refunded,
        refund_date
    )
VALUES (3, 41.63, '2025-02-28');

INSERT INTO
    Refunds (
        payment_id,
        amount_refunded,
        refund_date
    )
VALUES (8, 7.67, '2025-04-01');

INSERT INTO
    Refunds (
        payment_id,
        amount_refunded,
        refund_date
    )
VALUES (13, 36.74, '2025-03-01');

INSERT INTO
    Refunds (
        payment_id,
        amount_refunded,
        refund_date
    )
VALUES (9, 44.02, '2025-03-16');

INSERT INTO
    ShippingDetails (
        order_id,
        address_id,
        shipped_date
    )
VALUES (1, 2, '2025-02-17');

INSERT INTO
    ShippingDetails (
        order_id,
        address_id,
        shipped_date
    )
VALUES (2, 4, '2025-02-25');

INSERT INTO
    ShippingDetails (
        order_id,
        address_id,
        shipped_date
    )
VALUES (3, 6, '2025-04-08');

INSERT INTO
    ShippingDetails (
        order_id,
        address_id,
        shipped_date
    )
VALUES (4, 8, '2025-02-26');

INSERT INTO
    ShippingDetails (
        order_id,
        address_id,
        shipped_date
    )
VALUES (5, 3, '2025-02-25');

INSERT INTO
    ShippingDetails (
        order_id,
        address_id,
        shipped_date
    )
VALUES (6, 8, '2025-04-11');

INSERT INTO
    ShippingDetails (
        order_id,
        address_id,
        shipped_date
    )
VALUES (7, 1, '2025-03-01');

INSERT INTO
    ShippingDetails (
        order_id,
        address_id,
        shipped_date
    )
VALUES (8, 3, '2025-03-28');

INSERT INTO
    ShippingDetails (
        order_id,
        address_id,
        shipped_date
    )
VALUES (9, 3, '2025-03-15');

INSERT INTO
    ShippingDetails (
        order_id,
        address_id,
        shipped_date
    )
VALUES (10, 8, '2025-03-29');
