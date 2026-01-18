-- =========================================================================
-- 4. AGGREGATIONS AND CRUD OPERATIONS
-- =========================================================================

-- ==============================
-- AGGREGATIONS
-- ==============================

-- Calculate the total value of each order
  SELECT o.id_order, SUM(o.quantity * p.price) AS order_value
  FROM order_item o
  JOIN products p ON p.id_product = o.id_product
  GROUP BY o.id_order;

-- Calculate total spending for each user
  SELECT u.id_user, SUM(oi.quantity * p.price) AS total_spent
  FROM order_item oi
  JOIN products p ON p.id_product = oi.id_product
  JOIN orders o ON o.id_order = oi.id_order
  JOIN users u ON u.id_user = o.id_user
  GROUP BY u.id_user;

-- Increase stock of 'Książka SQL' by 5 units
  SELECT quantity FROM products WHERE product_name = 'Książka SQL'; -- Check current stock
  UPDATE products
  SET quantity = quantity + 5
  WHERE product_name = 'Książka SQL';
  SELECT quantity FROM products WHERE product_name = 'Książka SQL'; -- Verify stock increased by 5

-- ==============================
-- CRUD OPERATIONS
-- ==============================

-- Update price of 'Laptop' to a new value
SELECT product_name, price FROM products WHERE product_name = 'Laptop'; -- Check current price
UPDATE products 
SET price = 3899.50
WHERE product_name = 'Laptop';
SELECT product_name, price FROM products WHERE product_name ='Laptop'; -- Verify price has been updated

-- Delete the last item from order_item table
DELETE FROM order_item
WHERE id_item = (SELECT MAX(id_item) FROM order_item);

-- Delete order with id = 2
DELETE FROM orders
WHERE id_order = 2;
