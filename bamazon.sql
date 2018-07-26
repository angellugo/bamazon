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

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Radio', 'Electronics', 19.99, 42);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Laptop', 'Computers', 319.99, 24);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Shovel', 'Garden', 24.99, 21);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Hammer', 'Hardware', 9.99, 30);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Kitchen Mat', 'Flooring', 29.99, 12);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('P-Trap', 'Plumbing', 7.99, 15);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Permanent Marker', 'Office Supplies', 1.99, 27);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Micro USB to USB-C adapter', 'Computers', 8.99, 19);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Picture Frame', 'Electronics', 9.97, 21);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Exploding Kittens', 'Games', 19.99, 13);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Yarn', 'Fabrics', 10.99, 37);
