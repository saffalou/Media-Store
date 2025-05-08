CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    release_year YEAR,
    label_id INT
);

CREATE TABLE Editions (
    edition_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    format_id INT,
    barcode VARCHAR(100),
    price DECIMAL(10, 2),
    FOREIGN KEY (product_id) REFERENCES Products (product_id),
    FOREIGN KEY (format_id) REFERENCES Formats (format_id)
);

CREATE TABLE Genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Formats (
    format_id INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(100)
);

CREATE TABLE Artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE ProductArtists (
    product_id INT,
    artist_id INT,
    PRIMARY KEY (product_id, artist_id),
    FOREIGN KEY (product_id) REFERENCES Products (product_id),
    FOREIGN KEY (artist_id) REFERENCES Artists (artist_id)
);

CREATE TABLE ProductGenres (
    product_id INT,
    genre_id INT,
    PRIMARY KEY (product_id, genre_id),
    FOREIGN KEY (product_id) REFERENCES Products (product_id),
    FOREIGN KEY (genre_id) REFERENCES Genres (genre_id)
);

CREATE TABLE Warehouses (
    warehouse_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(255)
);

CREATE TABLE Stock (
    stock_id INT AUTO_INCREMENT PRIMARY KEY,
    edition_id INT,
    warehouse_id INT,
    quantity_available INT,
    incoming_quantity INT,
    FOREIGN KEY (edition_id) REFERENCES Editions (edition_id),
    FOREIGN KEY (warehouse_id) REFERENCES Warehouses (warehouse_id)
);

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE Addresses (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    type ENUM('billing', 'shipping'),
    address_line VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
);

CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    edition_id INT,
    quantity INT,
    preorder_expected_date DATE,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id),
    FOREIGN KEY (edition_id) REFERENCES Editions (edition_id)
);

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    amount_paid DECIMAL(10, 2),
    payment_date DATE,
    transaction_reference VARCHAR(255),
    is_prepayment BOOLEAN,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id)
);

CREATE TABLE Refunds (
    refund_id INT AUTO_INCREMENT PRIMARY KEY,
    payment_id INT,
    amount_refunded DECIMAL(10, 2),
    refund_date DATE,
    FOREIGN KEY (payment_id) REFERENCES Payments (payment_id)
);

CREATE TABLE ShippingDetails (
    shipping_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    address_id INT,
    shipped_date DATE,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id),
    FOREIGN KEY (address_id) REFERENCES Addresses (address_id)
);
