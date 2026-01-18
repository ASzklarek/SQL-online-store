-- =====================================
-- Database: SQL Online Store
-- File: 01_create_tables.sql
-- Description: Create database tables
-- =====================================

CREATE TABLE users (
  id_user INT AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(50) NOT NULL, 
  user_surname VARCHAR(50) NOT NULL, 
  user_email VARCHAR(50) NOT NULL
  );

CREATE TABLE categories (
  id_category INT AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(50) NOT NULL 
  );

CREATE TABLE products (
  id_product INT AUTO_INCREMENT PRIMARY KEY,
  id_category INT NOT NULL,
  product_name VARCHAR(50) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  quantity int NOT NULL,
    FOREIGN KEY (id_category) REFERENCES categories(id_category) 
  );

CREATE TABLE orders ( 
  id_order INT AUTO_INCREMENT PRIMARY KEY,
  id_user INT NOT NULL, 
  order_date DATE NOT NULL,
  FOREIGN KEY (id_user) REFERENCES users(id_user) 
  );

CREATE TABLE order_item ( 
  id_item INT AUTO_INCREMENT PRIMARY KEY, 
  id_order INT NOT NULL, 
  id_product INT NOT NULL, 
  quantity int NOT NULL, 
  FOREIGN KEY (id_order) REFERENCES orders(id_order), 
  FOREIGN KEY (id_product) REFERENCES products(id_product) 
  );
