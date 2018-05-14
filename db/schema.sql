CREATE DATABASE bamazon;

USE bamazon;

DROP TABLE products;

CREATE TABLE products(
id INT AUTO_INCREMENT,
product_name VARCHAR(40) NOT NULL,
department_name VARCHAR(50) NOT NULL,
price INT NOT NULL,
stock_quantity INT NOT NULL,
PRIMARY KEY (ID)
);

SELECT * FROM products;


INSERT INTO `products` (`product_name`,`department_name`,`price`, `stock_quantity`) 
VALUES ("iPhone", "Electronics","900.00", '100');
INSERT INTO `products` (`product_name`,`department_name`,`price`, `stock_quantity`) 
VALUES ("Macbook Pro", "Electronics","1399.00", '50');
INSERT INTO `products` (`product_name`,`department_name`,`price`, `stock_quantity`) 
VALUES ("Apple Watch", "Electronics","325.00", '10');
INSERT INTO `products` (`product_name`,`department_name`,`price`, `stock_quantity`) 
VALUES ("Power Cord", "Electronics","50.00", '5');
INSERT INTO `products` (`product_name`,`department_name`,`price`, `stock_quantity`) 
VALUES ( "iMac", "Electronics","1800.00", '2');
INSERT INTO `products` (`product_name`,`department_name`,`price`, `stock_quantity`) 
VALUES ( "Protein Powder", "Health and Fitness","31.00", '20');
INSERT INTO `products` (`product_name`,`department_name`,`price`, `stock_quantity`) 
VALUES ( "Pre-Workout", "Health and Fitness","20.00", '100');
INSERT INTO `products` (`product_name`,`department_name`,`price`, `stock_quantity`) 
VALUES ( "Men's Shorts", "Health and Fitness","30.00", '200');
INSERT INTO `products` (`product_name`,`department_name`,`price`, `stock_quantity`) 
VALUES ( "Tank Top", "Health and Fitness","10.00", '34');
INSERT INTO `products` (`product_name`,`department_name`,`price`, `stock_quantity`) 
VALUES ( "Running Shoes", "Health and Fitness","79.00", '10');
INSERT INTO `products` (`product_name`,`department_name`,`price`, `stock_quantity`) 
VALUES ( "Protein bar", "Health and Fitness","1.99", '5');


UPDATE products SET stock_quantity = 100 WHERE product_name = "iPhone"


Error Code: 1054. Unknown column 'item_id' in 'field list'






CREATE DATABASE seinfeld;
USE seinfeld;

-- Create the table actors.
CREATE TABLE actors (
  id int AUTO_INCREMENT,
  name varchar(30) NOT NULL,
  coolness_points int NOT NULL,
  attitude varchar(60) NOT NULL,
  PRIMARY KEY(id)
);

-- Insert a set of records.
INSERT INTO actors (name, coolness_points, attitude) VALUES ("Jerry", 90, "relaxed");
INSERT INTO actors (name, coolness_points, attitude) VALUES ("Elaine", 80, "righteous");
INSERT INTO actors (name, coolness_points, attitude) VALUES ("Kramer", 20, "doofus");
INSERT INTO actors (name, coolness_points, attitude) VALUES ("George", 70, "selfish");




CREATE DATABASE wish_saver_db;
USE wish_saver_db;

CREATE TABLE wishes (
id int AUTO_INCREMENT,
wish VARCHAR(100) NOT NULL,
PRIMARY KEY(id)
);



INSERT INTO wishes (wish) VALUES ('to Fly');
INSERT INTO wishes (wish) VALUES ('Lazer eyes');
INSERT INTO wishes (wish) VALUES ('Lizard hands');

CREATE DATABASE moviePlannerDB;
USE moviePlannerDB;


CREATE TABLE movies (
id int AUTO_INCREMENT,
movie VARCHAR(100) NOT NULL,
PRIMARY KEY(id)
);


INSERT INTO movies (movie) VALUES ('Harry Potter');
INSERT INTO movies (movie) VALUES ('Star Wars');
INSERT INTO movies (movie) VALUES ('Lord of the Rings');





CREATE DATABASE burgers_db;
USE burgers_db;















