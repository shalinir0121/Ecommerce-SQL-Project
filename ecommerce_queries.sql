-- Basic Queries
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Order_Details;

-- Join Queries
SELECT c.name, o.order_id, o.order_date, o.total_amount
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id;

SELECT o.order_id, p.product_name, od.quantity, od.price
FROM Order_Details od
JOIN Orders o ON od.order_id = o.order_id
JOIN Products p ON od.product_id = p.product_id;

-- Advanced Queries
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;

SELECT category, COUNT(*) AS total_products
FROM Products
GROUP BY category;

-- View
CREATE VIEW Customer_Order_Summary AS
SELECT c.name, o.order_id, o.total_amount
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id;

SELECT * FROM Customer_Order_Summary;