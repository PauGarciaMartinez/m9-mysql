CREATE DATABASE vueling;
USE vueling;
CREATE TABLE planes (
	id INT NOT NULL AUTO_INCREMENT,
    capacity INT NOT NULL,
    model VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE seats (
	id INT NOT NULL AUTO_INCREMENT,
    plane_id INT NOT NULL,
    class VARCHAR(255),
    spot VARCHAR (255),
    PRIMARY KEY (id),
    FOREIGN KEY (plane_id) REFERENCES planes(id)
);

INSERT INTO planes (capacity, model)
VALUES (175, "Boeing 737"), 
	   (187, "Boeing 541"), 
       (265, "Boeing Cruiser"), 
       (324, "Boeing Jumbo");

SELECT * FROM planes;

INSERT INTO seats (plane_id, class, spot)
VALUES (1, "first", "window"), 
	   (2, "tourist", "window"), 
       (3, "tourist", "hallway"), 
       (4, "first", "hallway");

SELECT * FROM seats;