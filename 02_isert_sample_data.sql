-- ==================================================== 
-- Przykładowe INSERTY
-- Mały czytelny zestaw danych
-- ===================================================

-- Użytkownicy
INSERT INTO users (user_name, user_surname, user_email) 
  VALUES
('Jan', 'Kowalski', 'jan.kowalski@example.com'),
('Anna', 'Nowak', 'anna.nowak@example.com'),
('Piotr', 'Wiśniewski', 'piotr.wisniewski@example.com');

-- Kategorie produktów
INSERT INTO categories (category_name) 
  VALUES
('Elektronika'),
('Książki');

-- Produkty
INSERT INTO products (id_category, product_name, price, quantity) 
  VALUES
(1, 'Smartfon', 1999.99, 10),
(1, 'Laptop', 3499.50, 5),
(2, 'Książka SQL', 79.90, 20),
(2, 'Książka Python', 89.90, 15);

-- Zamówienia
INSERT INTO orders (id_user, order_date) 
  VALUES
(1, '2026-01-11'),
(2, '2026-01-10');

-- Pozycje w zamówieniach
INSERT INTO order_item (id_order, id_product, quantity) 
  VALUES
(1, 1, 1), 
(1, 3, 2),  
(2, 2, 1); 
