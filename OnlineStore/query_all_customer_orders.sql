-- Retrieve all orders placed by a specific customer (including the ID’s of what was ordered and the quantities).

SELECT 
	orders.id,
	orders.id || ' ' || products.id AS order_item_id, --I wasn't sure what you meant by order item id?
	products.product_name,
	order_items.quantity 
FROM order_items
INNER JOIN products ON order_items.product_id = products.id
INNER JOIN orders ON order_items.order_id = orders.id
INNER JOIN customers ON orders.customer_id = customers.id
GROUP BY orders.id, products.product_name, order_item_id, order_items.quantity
ORDER BY orders.id;