DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
	item_id INTEGER AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(30),
    department_name VARCHAR(30),
    price DECIMAL(6,2) NOT NULL,
    stock_quantity INTEGER,
    PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Radio', 'Electronics', 19.99, 0);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Laptop', 'Computers', 319.99, 1);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Shovel', 'Garden', 24.99, 2);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Hammer', 'Hardware', 9.99, 3);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Kitchen Mat', 'Flooring', 29.99, 4);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('P-Trap', 'Plumbing', 7.99, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Permanent Marker', 'Office Supplies', 1.99, 6);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Micro USB to USB-C adapter', 'Computers', 8.99, 7);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Picture Frame', 'Electronics', 9.97, 8);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Exploding Kittens', 'Games', 19.99, 9);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Yarn', 'Fabrics', 10.99, 10);
