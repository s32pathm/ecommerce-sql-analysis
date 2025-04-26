SELECT
  c.customer_name,
  SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;


SELECT
  p.product_name,
  SUM(oi.quantity) AS total_units_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_units_sold DESC
LIMIT 1;


SELECT
  COUNT(*) AS total_orders
FROM orders;


SELECT
  c.city,
  COUNT(o.order_id) AS num_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY num_orders DESC
LIMIT 1;


SELECT
  c.customer_name,
  COUNT(DISTINCT oi.product_id) AS num_products_bought
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_name;