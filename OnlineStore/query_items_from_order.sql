SELECT 
	products.product_name, 
	order_items.quantity 
FROM order_items
INNER JOIN products ON order_items.product_id = products.id
INNER JOIN orders ON order_items.order_id = orders.id
WHERE orders.id = 1;