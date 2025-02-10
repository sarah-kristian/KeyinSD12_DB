-- Delete order ID 5
-- Because the order_items table has FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE, 
-- this also deletes all order_items associated with the order

DELETE FROM orders
WHERE id = 5;