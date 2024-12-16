
CREATE TABLE orders (
    order_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    customer_id INTEGER,
    order_date DATE,
    total_amount DECIMAL(10,2)
);

CREATE TABLE customers (
    customer_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    customer_name TEXT,
    email TEXT
);


INSERT INTO orders values(1,1212,'2022-12-20',100.00),
                            (2,12324,'2023-12-20',1324.00),
                            (3,4567,'2024-12-20',12.00),
                            (4,234565,'2021-12-20',1230.00);


INSERT INTO customers VALUES(1212,'ram','rams@gami'),(12324,'piyush','rasdfms@gami'),(4567,'ritk','ritkss@gami'),(234565,'kishor','kishor@gami');


-- INNER JOIN FORMAT
SELECT orders.order_id, customers.customer_name,orders.order_date
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id;


-- LEFT JOIN
SELECT orders.order_id, customers.customer_name,orders.order_date
FROM orders
LEFT JOIN customers ON orders.customer_id = customers.customer_id;

-- RIGHT JOIN
SELECT orders.order_id, customers.customer_name,orders.order_date
FROM orders
RIGHT JOIN customers ON orders.customer_id = customers.customer_id;


-- FULL JOIN
SELECT orders.order_id, customers.customer_name,orders.order_date
FROM orders
FULL JOIN customers ON orders.customer_id = customers.customer_id;



-- SELECT * FROM orders;

-- SELECT * FROM customers;