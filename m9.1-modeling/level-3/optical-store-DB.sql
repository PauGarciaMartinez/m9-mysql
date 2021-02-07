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
    prescription_left INT NOT NULL,
    prescription_right INT NOT NULL,
    frame_type VARCHAR(10) NOT NULL,
    frame_color VARCHAR(20) NOT NULL,
    glass_color VARCHAR(20) NOT NULL,
    price INT NOT NULL,
    supplier INT NOT NULL,
    seller INT NOT NULL,
    sold_to INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (supplier) REFERENCES suppliers(id),
    FOREIGN KEY (seller) REFERENCES sellers(id),
    FOREIGN KEY (sold_to) REFERENCES customers(id)
);

CREATE TABLE customers (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL,
    number INT NOT NULL,
    city VARCHAR(50) NOT NULL,
    telephone INT NOT NULL,
    date DATETIME,
    PRIMARY KEY (id)
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

INSERT INTO suppliers (name, street, number, floor, door, city, postal_code, country, telephone, fax, NIF)
VALUES ("Bigo SA", "Great Avenue", 24, 6, 3, "Orlando", 08332, "USA", 00345618983, 0045638251, 5556789),
	   ("Houlu SL", "Midway East", 2, 9, 1, "Miami", 98765, "USA", 00324173571, 0038327463, 3777352);

INSERT INTO glasses (brand, prescription_left, prescription_right, frame_type, frame_color, glass_color, price, supplier, seller, sold_to)
VALUES ("Julbo", 0.8, 0.6, "metalic", "black", "transparent", 125, 2, 2, 1),
	   ("Vuarnet", 1.6, 4.2, "metalic", "purple", "transparent", 210, 1, 2, 2),
       ("Oackland", 8.6, 8.1, "metalic", "grey", "transparent", 78, 1, 1, 3);

INSERT INTO customers (name, street, number, city, telephone, date)
VALUES ("John Doe", "Avencester Road", 23, "Seattle", 004368688, "2021-01-23 12:03:14"),
	   ("Mary Joe", "Lincoln Road", 4, "Greenbow", 005496438, "2021-01-12 10:23:56"),
       ("Patrick Moe", "Sesam Street", 88, "Dallas", 007684722, "2020-12-23 17:08:35");
       
INSERT INTO recommendations (customer1_id, customer2_id)
VALUES (1, 2),
	   (2, 3);
       
INSERT INTO sellers (name)
VALUES ("Gloria Schrute"),
	   ("Pattie Holmes");