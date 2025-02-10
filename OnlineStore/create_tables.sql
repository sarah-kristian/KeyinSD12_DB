CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    product_name TEXT,
    price NUMERIC(10, 2),
    stock_quantity INT
);

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
	customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity NUMERIC NOT NULL,
	FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
    PRIMARY KEY (order_id, product_id)
);