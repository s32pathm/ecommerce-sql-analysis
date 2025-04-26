-- Customers Table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(100),
  city VARCHAR(50)
);

-- Products Table
CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(100),
  price DECIMAL(10,2)
);

-- Orders Table
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

--  Order Items Table
CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Customers Table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(100),
  city VARCHAR(50)
);

-- Products Table
CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(100),
  price DECIMAL(10,2)
);

-- Orders Table
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

--  Order Items Table
CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert Customers
INSERT INTO customers VALUES
(1, 'Alice', 'Toronto'),
(2, 'Bob', 'New York'),
(3, 'Charlie', 'Vancouver'),
(4, 'Lily', 'Toronto'),
(5, 'Austin', 'Toronto'),
(6, 'Abigail', 'Calgary'),
(7, 'Sam', 'Vancouver'),
(8, 'Kyle', 'New York'),
(9, 'Raj', 'Calgary'),
(10, 'Wilson', 'Vancouver');

-- Insert Products
INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 1200.00),
(2, 'Phone', 'Electronics', 800.00),
(3, 'Desk', 'Furniture', 150.00),
(4, 'Headphones', 'Electronics', 150.00),
(5, 'Tablet', 'Electronics', 150.00),
(6, 'Chair', 'Furniture', 150.00);

-- Insert Orders
INSERT INTO orders VALUES
(4, 4, '2024-03-07'), -- Lily
(5, 5, '2024-03-08'), -- Austin
(6, 6, '2024-03-09'), -- Abigail
(7, 7, '2024-03-10'), -- Sam
(8, 8, '2024-03-11'), -- Kyle
(9, 9, '2024-03-12'), -- Raj
(10, 10, '2024-03-13'); -- Wilson

-- Add new order items
INSERT INTO order_items VALUES
(5, 4, 5, 2), -- Lily buys 2 Tablets
(6, 5, 6, 1), -- Austin buys 1 Chair
(7, 6, 4, 1), -- Abigail buys 1 Headphones
(8, 7, 2, 3), -- Sam buys 3 Phones
(9, 8, 1, 1), -- Kyle buys 1 Laptop
(10, 9, 3, 1), -- Raj buys 1 Desk
(11, 10, 5, 1); -- Wilson buys 1 Tablet