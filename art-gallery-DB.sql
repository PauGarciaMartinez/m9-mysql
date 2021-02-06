CREATE DATABASE art_gallery;
USE art_gallery;
CREATE TABLE paintings (
	id INT NOT NULL AUTO_INCREMENT,
    price INT NOT NULL,
    artist VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE buyers (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    middlename VARCHAR(255),
    dni INT NOT NULL,
    purchased INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (purchased) REFERENCES paintings(id)
);

INSERT INTO paintings (price, artist)
VALUES (325, "Michael Scott"),
	   (854, "Jim Halpert"),
       (1880, "Pam Beesely"), 
       (532, "Karen Filipelli"),
       (767, "Dwight Schrute");
       
SELECT * FROM paintings;

INSERT INTO buyers (name, middlename, dni, purchased)
VALUES ("Gordon", "Clark", 2345769, 2),
	   ("Joe", "Macmillan", 4568759, 4),
       ("Donna", "Emmerson", 5856723, 1),
       ("Cameron", "Howe", 4567893, 5),
       ("John", "Bosworth", 1674955, 3);

SELECT * FROM buyers;


UPDATE paintings
SET price = 375
WHERE id = 1;
