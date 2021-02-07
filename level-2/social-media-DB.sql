CREATE DATABASE social_media;
USE social_media;

CREATE TABLE user (
	id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE friends (
	user1_id INT NOT NULL,
    user2_id INT NOT NULL,
    description VARCHAR(255) NOT NULL,
    FOREIGN KEY (user1_id) REFERENCES user(id),
	FOREIGN KEY (user2_id) REFERENCES user(id)
);

CREATE TABLE pictures (
	id INT NOT NULL AUTO_INCREMENT,
    url VARCHAR(255) NOT NULL,
    propietary INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (propietary) REFERENCES user(id)
);

INSERT INTO user (username, email, password)
VALUES ("Maik54", "maik54@gmail.com", "*********"),
	   ("DanTheGreat", "dandandan@gmail.com", "******"),
       ("EvaLut", "evalut@gmail.com", "************"),
       ("Marmalp", "marmalp@gmail.com", "*****"),
       ("Studibidu", "stugrant@gmail.com", "********");
       
INSERT INTO friends (user1_id, user2_id, description)
VALUES (1, 2, "Met online"),
	   (1, 5, "Met online"),
       (2, 3, "Met online"),
       (3, 4, "Met online");

INSERT INTO pictures (url, propietary)
VALUES ("https://randomstuff.com/", 2),
	   ("https://morerandomstuff.com/", 2),
       ("https://evenmorerandomstuff.com/", 1),
       ("https://geezmorerandomstuff.com/", 4),
       ("https://howmuchmorerandomstuff.com/", 4),
       ("https://endlessmorerandomstuff.com/", 5),
       ("https://fabulousmorerandomstuff.com/", 3);