CREATE DATABASE store;
USE store;
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
    store varchar(20),
    PRIMARY KEY (id)

);

CREATE TABLE products (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    product int NOT NULL,
    customer_id int NOT NULL,
    store int NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO customers (firstname, lastname, store) VALUES (
                                                           'Jon', 'Snow', 'Target'
                                                          );
INSERT INTO customers (firstname, lastname, store) VALUES (
                                                           'Ned', 'Stark', 'Sears'
                                                          );
INSERT INTO products (product, customer_id, store) VALUES (
                                                          'Head and shoulders', 'shaving cream', 'Body wash'
                                                         );

SELECT * from customers;
SELECT * from orders;
SELECT * from products;
INSERT INTO products (product, customer_id, store) VALUES (1, 2, 3);
INSERT INTO orders (product, cost, customerId) VALUES ('Sword', '20', 1);
INSERT INTO orders (product, cost, customerId) VALUES ('Sheath','10', 1);
INSERT INTO orders (product, cost, customerId) VALUES ('Bow','25', 2);
INSERT INTO orders (product, cost, customerId) VALUES ('Arrow', '15', 2);
DELETE FROM orders where id in (1, 2);

SELECT DISTINCT orders.product, orders.cost, customers.firstname, customers.lastname, customers.store
FROM orders, customers, products
INNER JOIN orders o on customer.Id = o.customerId
    WHERE o.customerId=1;