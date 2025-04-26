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
(3, 'Charlie', 'Vancouver');

-- Insert Products
INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 1200.00),
(2, 'Phone', 'Electronics', 800.00),
(3, 'Desk', 'Furniture', 150.00);

-- Insert Orders
INSERT INTO orders VALUES
(1, 1, '2024-03-01'),
(2, 2, '2024-03-05'),
(3, 3, '2024-03-06');

-- Insert Order Items
INSERT INTO order_items VALUES
(1, 1, 1, 1), -- Alice buys 1 Laptop
(2, 1, 2, 2), -- Alice buys 2 Phones
(3, 2, 3, 1), -- Bob buys 1 Desk
(4, 3, 1, 1); -- Charlie buys 1 Laptop