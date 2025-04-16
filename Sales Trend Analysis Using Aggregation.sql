-- Create the database
CREATE DATABASE online_sales;

-- Use the database
USE online_sales;

-- Create the orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);


USE online_sales;

USE online_sales;

INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-10', 150.00, 101),
(2, '2023-01-15', 200.00, 102),
(3, '2023-02-01', 250.00, 103),
(4, '2023-02-10', 100.00, 101),
(5, '2023-03-05', 300.00, 104),
(6, '2023-03-15', 120.00, 105),
(7, '2023-04-01', 180.00, 101);


SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY
    YEAR(order_date), MONTH(order_date)
ORDER BY
    order_year, order_month;


