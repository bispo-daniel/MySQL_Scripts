/*--------------- DDL ----------------*/
CREATE DATABASE IF NOT EXISTS persons_exercise;
USE persons_exercise;

CREATE TABLE IF NOT EXISTS persons (
  id INT unsigned AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  lastname VARCHAR(100),
  salary INT NOT NULL
);

/*DROP DATABASE persons_exercise;*/

/*--------------- DML ----------------*/

INSERT INTO persons (name, lastname, salary) VALUES
  ('Daniel', 'Bispo', 1000),
  ('Laura', 'Moscow', 2000),
  ('Oscar', 'Aaron', 4000),
  ('Vera', 'Rachford', 5000),
  ('Ethan', 'Young', 6000),
  ('Mathew', 'Simpson', 7000),
  ('Maria', 'Corleone', 9000);

INSERT INTO persons (name, salary) VALUES
('SUSIE-Q', 767),
('Lovely Rita', 1964);

/* Update Maria Corleone salary by it's ID (7): */
    UPDATE persons SET salary = 5500 WHERE id = 7; 

/* Update Ethan Young salary to 5000 by it's ID: */
    UPDATE persons SET salary = 5000 WHERE id = 5;

/* Update name to "Tester" where id equals 10: */
    UPDATE persons SET name = "Tester" WHERE id = 10;

/* Update lastname to "Bayou" where id equals 8: */
    UPDATE persons SET lastname = "Bayou" WHERE id = 8;

/* Delete Mathew Simpson by it's ID (6): */
    DELETE FROM persons WHERE id = 06;

/* Delete from persons where the salary is greater than 5500: */
    DELETE FROM persons WHERE salary > 5500 AND id > 5;

/* Delete if the salary value is odd */
    DELETE FROM persons WHERE salary % 2 = 1 AND id > 0;

/* Delete the row if the last name is null */
    DELETE FROM persons WHERE lastname IS NULL AND id > 0;

/*--------------- DQL ----------------*/

/*
Query all from persons table:
    SELECT * FROM persons;

Query every name and it's length from persons:
    SELECT name, LENGTH(name) AS "Name length" FROM persons;

Query replacing the name's "a" character with "#":
    SELECT REPLACE (name, 'a', '#') AS replacedChar FROM persons;

Query concatenating three expressions ("name" column, "-" and "lastname" column):
    SELECT CONCAT(name, '-', lastname) AS joinColumn FROM persons; 

Query name and lastname alphabetically ordered by the "name" column:
    SELECT name, lastname FROM persons ORDER BY name;

Query name and lastname sorted descending by the "name" column:
    SELECT name, lastname FROM persons ORDER BY name DESC;

Query all from persons sorted alphabetically by the "name" column and descending by the "salary" column.
    SELECT * from persons ORDER BY name, salary DESC;

Query to select all columns from persons where a row in the "name" column starts with "Ma":
    SELECT * FROM persons WHERE name LIKE "Ma%";

Query all where the name's fifth character is "a":
    SELECT * FROM persons WHERE name LIKE "____a";

Query all where salary is between 1500 and 5500 and the name ends with the "a" character:
    SELECT * FROM persons WHERE (salary BETWEEN 1500 AND 5500) AND name LIKE "%a";

Simple query to use "OR" operator:
    SELECT * FROM persons WHERE name = "Maria" OR name = "Laura";

Simple queries to use "NOT" operator:
    SELECT * FROM persons WHERE NOT name = "DANIEL" AND NOT name = "ARNOLD";

    SELECT * FROM persons WHERE NOT salary < 3000 AND NOT salary > 6000;

Query all where the name's length = 5 and it starts with "M":
    SELECT * FROM persons WHERE (LENGTH(name) = 5) AND name LIKE "M%";

Query all with the complement of the average value of salaries:
    SELECT *, (SELECT AVG(salary) FROM persons) AS avgSal FROM persons; 
*/