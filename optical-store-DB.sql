CREATE DATABASE optical_shop;
USE optical_shop;

CREATE TABLE suppliers (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL,
    number INT NOT NULL,
    floor INT NOT NULL,
    door INT NOT NULL,
    city VARCHAR(50) NOT NULL,
    postal_code INT NOT NULL,
    country VARCHAR(50) NOT NULL,
    telephone INT NOT NULL,
    fax INT,
    NIF INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE glasses (
	id INT NOT NULL AUTO_INCREMENT,
    brand VARCHAR(50) NOT NULL,
    prescription INT NOT NULL,
    frame_type VARCHAR(10) NOT NULL,
    frame_color VARCHAR(20) NOT NULL,
    glass_color VARCHAR(20) NOT NULL,
    price INT NOT NULL,
    supplier INT NOT NULL,
    seller INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (supplier) REFERENCES suppliers(id),
    FOREIGN KEY (seller) REFERENCES sellers(id)
);

CREATE TABLE customers (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL,
    number INT NOT NULL,
    floor INT NOT NULL,
    door INT NOT NULL,
    city VARCHAR(50) NOT NULL,
    postal_code INT NOT NULL,
    country VARCHAR(50) NOT NULL,
    telephone INT NOT NULL,
    date DATETIME
);

CREATE TABLE recommendations (
	customer1_id INT NOT NULL,
    customer2_id INT NOT NULL,
    FOREIGN KEY (customer1_id) REFERENCES customers(id),
	FOREIGN KEY (customer2_id) REFERENCES customers(id)
);

CREATE TABLE sellers (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);
    