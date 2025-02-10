INSERT INTO products (product_name, price, stock_quantity)
VALUES 
    ('Pan Galactic Gargle Blaster', 7.50, 50),
    ('Vogon Knuckle Sandwich', 5.25, 40),
    ('Milliways Soup', 3.95, 60),
    ('Babel Fish Pie', 4.75, 30),
    ('Quantum Foam Shake', 2.50, 75),
    ('Zaphod’s Zesty Plate', 9.00, 20),
    ('Betelgeusian Beet Salad', 6.50, 45)
;

INSERT INTO customers (first_name, last_name, email)
VALUES 
    ('Arthur', 'Dent', 'arthur.dent@email.com'),
    ('Ford', 'Prefect', 'ford.prefect@email.com'),
    ('Trillian', 'Astra', 'trillian.astra@email.com'),
    ('Zaphod', 'Beeblebrox', 'zaphod.beeblebrox@email.com')
;

INSERT INTO orders (customer_id, order_date) 
VALUES 
    (1, '2025-02-09'),
    (2, '2025-02-10'),
    (3, '2025-02-11'),
    (4, '2025-02-12'),
    (1, '2025-02-13')
;

INSERT INTO order_details (order_id, product_id, quantity)
VALUES 
    (1, 1, 2),
    (1, 2, 1),
    (2, 3, 1),
    (2, 4, 1),
    (3, 5, 2),
    (3, 6, 3),
    (4, 7, 1),
    (4, 1, 1),
    (5, 2, 2),
    (5, 3, 1)
;
