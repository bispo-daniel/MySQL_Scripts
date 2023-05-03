CREATE DATABASE brands_and_products_exercise;
USE brands_and_products_exercise;

CREATE TABLE IF NOT EXISTS brands (
  brand_id int NOT NULL,
  brand_name varchar(200) NOT NULL
);
INSERT INTO brands (brand_id, brand_name) VALUES
(1, "Pepsi"),
(2, "CocaCla"),
(4, "DrSoda");

CREATE TABLE IF NOT EXISTS products (
  product_id int NOT NULL PRIMARY KEY,
  product_name varchar(200) NOT NULL,
  price decimal(10,2) NOT NULL,
  class_id int NOT NULL,
  FK_brand_id int NOT NULL
);
INSERT INTO products (product_id, FK_brand_id, product_name, price, class_id) VALUES
(1, 1, "Cola", .99, 1),
(2, 1, "Diet Cola", .99, 2),
(3, 1, "MtDew", .99, 2),
(4, 2, "Coke", 4.99,1),
(5, 2, "Diet Coke", 4.99,2),
(6, 2, "Sprite", 4.99,3),
(7, 3, " BestCola", 4.99,1),
(8, 3, "Diet Cola", 4.99,2),
(9, 3, "Mr Pepper", 4.99,3),
(10, 3, "Morning Dew", 4.99,3),
(11, 3, "Sparkle Water", 4.99,3),
(12, 3, "Water", 4.99,2);

/*Write a query to show all the product name and brand name for all products under the Pepsi brand where class_id is 2*/

	SELECT p.product_name, b.brand_name FROM products p 
	JOIN brands b 
	ON p.FK_brand_id = b.brand_id 
	WHERE class_id = 2 AND b.brand_name = "Pepsi";

/*Write a query to join the Products and Brands table showing all product names and brand_names, only where both are present*/

	SELECT p.product_name, b.brand_name FROM products p 
	JOIN brands b 
	ON p.FK_brand_id = b.brand_id;

/*Write a query to show all brand names without products. Hint you will need to use WHERE p.FK_brand_id IS NULL after the join*/
	
	SELECT b.brand_name FROM products p
	RIGHT JOIN brands b
	ON p.FK_brand_id = b.brand_id
	WHERE p.FK_brand_id IS NULL;
	
/*DROP DATABASE brands_and_products_exercise;*/