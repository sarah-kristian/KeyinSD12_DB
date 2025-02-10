-- Update to simulate the reducing of stock quantities of items after a customer places an order. 
-- In this case, the code will reduce the stock quantities for "Pan Galactic Gargle Blaster" by 2
-- and the "Vogon Knuckle Sandwich"	by 1 (the amount ordered in Order # 1)



-- ORDER #1

-- "product_name"	                "quantity"
-- "Pan Galactic Gargle Blaster"	   2
-- "Vogon Knuckle Sandwich"	           1


-- PRODUCT STOCK BEFORE RUNNING CODE

-- "product_name"	           "stock_quantity"
-- "Pan Galactic Gargle Blaster"	50
-- "Vogon Knuckle Sandwich"	        40


-- PRODUCT STOCK AFTER RUNNING CODE
-- "product_name"	            "stock_quantity"
-- "Pan Galactic Gargle Blaster"	   48
-- "Vogon Knuckle Sandwich"	           39


UPDATE products
SET stock_quantity = stock_quantity - subquery.quantity_sold
-- to find the number of items sold, I'm making a subquery. It makes it mo
-- this finds the product id and the associated quantity of that item from order id = 1
FROM (
	SELECT 
		order_items.product_id,
		order_items.quantity AS quantity_sold 
		FROM order_items
		WHERE order_items.order_id = 1
) AS subquery

WHERE products.id = subquery.product_id;

