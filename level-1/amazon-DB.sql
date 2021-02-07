CREATE DATABASE amazon;
USE amazon;

CREATE TABLE books (
	id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    stock INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE authors (
	name VARCHAR(50) NOT NULL,
    adress VARCHAR(100),
    books INT NOT NULL,
    FOREIGN KEY (books) REFERENCES books(id)
);

CREATE TABLE user (
	id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    purchased INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (purchased) REFERENCES books(id)
);

INSERT INTO books (title, stock)
VALUES ("The amazing way", 27),
	   ("War at the office", 65),
       ("Trying my best", 12),
       ("A hell of a ride", 83),
       ("The peaceful warrior", 24);

INSERT INTO authors (name, adress, books)
VALUES ("John Doe", "New York", 2),
	   ("Perry Smith", "Dallas", 4),
       ("Patty Monroe", "Washington", 1),
       ("Ryu Szuke", "Okinawa", 5),
       ("Gloria Pérez", "Alabama", 3);
       
INSERT INTO user (username, email, password, purchased)
VALUES ("Maik54", "maik54@gmail.com", "*********", 4),
	   ("DanTheGreat", "dandandan@gmail.com", "******", 3),
       ("EvaLut", "evalut@gmail.com", "************", 2),
       ("Marmalp", "marmalp@gmail.com", "*****", 1),
       ("Studibidu", "stugrant@gmail.com", "********", 5);
       
