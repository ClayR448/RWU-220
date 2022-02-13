CREATE DATABASE company;
USE company;
CREATE TABLE orders (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    product varchar(20),
    cost int,
    customerId int,
    PRIMARY KEY (id),
    FOREIGN KEY (customerId) REFERENCES customers(id)
);
CREATE TABLE customers (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    company varchar(20),
    PRIMARY KEY (id)
);
INSERT INTO customers (firstname, lastname, company) VALUES (
                                                             'Walter', 'Saul', 'Gustavo'
                                                            );
INSERT INTO customers (firstname, lastname, company) VALUES (
                                                             'Mike', 'Jessie', 'Skylar'
                                                            );
SELECT * from customers;
SELECT * from orders;
INSERT INTO orders (id, product, cost, customerId) VALUES ('BreakingBad', '10', 1);
INSERT INTO orders (id, product, cost, customerId) VALUES ('Characters', '15', 1);
DELETE FROM orders where id in (1, 2);
SELECT DISTINCT orders.product, orders.cost, customers.firstname, customers.lastname, customers.company
FROM orders, customers
INNER JOIN orders o on customers.id = o.customerId
    WHERE o.customerId=1;