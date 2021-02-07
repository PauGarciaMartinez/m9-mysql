CREATE DATABASE youtube;
USE youtube;

CREATE TABLE user (
	id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE videos (
	id VARCHAR(50),
    title VARCHAR(50),
    description VARCHAR(255),
    url VARCHAR(255), 
    user_id INT NOT NULL,
    PRIMARY KEY (id),
	FOREIGN KEY (user_id) REFERENCES user(id)
);

INSERT INTO user (email, password)
VALUES ("jack@gmail.com", "***********");

SELECT * FROM user;

INSERT INTO videos (id, title, description, url, user_id)
VALUES ("PkZNo7MFNFg&t", "Learn JavaScript - Full Course for Beginners", "This complete 134-part JavaScript tutorial for beginners will teach you everything you need to know to get started with the JavaScript programming language.", "https://www.youtube.com/watch?v=PkZNo7MFNFg&t=707s&ab_channel=freeCodeCamp.org", 1),
	   ("7S_tz1z_5bA&t", "MySQL Tutorial for Beginners", "Learn MySQL, the world's most popular open source database.", "https://www.youtube.com/watch?v=7S_tz1z_5bA&t=6019s&ab_channel=ProgrammingwithMosh", 1), 
       ("9ylj9NR0Lcg&t", "MySQL Crash Course", "In this video we will look at installing mysql, creating users, writing SQL queries via the shell and Workbench.", "https://www.youtube.com/watch?v=9ylj9NR0Lcg&t=3139s&ab_channel=TraversyMedia", 1);

