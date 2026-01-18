-- =========================================================================
-- 1. PRODUCTS AND CATEGORIES
-- =========================================================================

-- Display all products with category
Select p.id_product, c.category_name, p.product_name, p.price, p.quantity 
FROM products p
Join categories c ON p.id_category = c.id_category;

-- Display only Electronics products
SELECT p.id_product, c.category_name, p.product_name, p.price, p.quantity
FROM products p
JOIN categories c ON p.id_category = c.id_category
WHERE c.category_name = 'Elektronika';

-- Display 3 most expensive products
SELECT p.product_name, p.price
FROM products p
ORDER BY price DESC LIMIT 3;

-- =========================================================================
-- 2. USERS AND ORDERS
-- =========================================================================

-- Display first name, last name, and order date for all orders
SELECT o.id_order, u.user_name, u.user_surname, o.order_date
FROM orders o 
JOIN users u ON o.id_user = u.id_user;

-- Display all orders for user Jan Kowalski
SELECT o.id_order, u.user_name, u.user_surname, o.order_date
FROM orders o
JOIN users u ON o.id_user = u.id_user
WHERE u.user_name = 'Jan' AND u.user_surname = 'Kowalski';

-- Count the number of orders placed by each user
SELECT u.user_name, u.user_surname, COUNT(o.id_order) AS order_count
FROM users u 
LEFT JOIN orders o ON o.id_user = u.id_user
GROUP BY u.id_user, u.user_name, u.user_surname;

-- =========================================================================
-- 3. ORDER CONTENT AND STOCK
-- =========================================================================

-- Display products included in order with id = 1 
SELECT p.product_name, o.quantity, o.id_order
FROM order_item o
JOIN products p ON p.id_product = o.id_product
WHERE o.id_order = 1;

-- Display products with stock less than 10
SELECT product_name, quantity 
FROM products WHERE quantity < 10 ; 

-- Display products sorted by stock quantity (ascending)
SELECT product_name, quantity
FROM products ORDER BY quantity;
