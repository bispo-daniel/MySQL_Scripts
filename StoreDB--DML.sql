INSERT INTO customer (name, address, phone, email) VALUES 
('Tim Maia', 'Fifth avenue', 11900000000, 'qwerty@xyz.com'),
('Cartola', 'Fifth avenue', 11900000000, 'qwerty@xyz.com'),
('Jorge Ben Jor', 'Fifth avenue', 11900000000, 'qwerty@xyz.com'),
('Tom Jobim', 'Fifth avenue', 11900000000, 'qwerty@xyz.com'),
('Chico Buarque', 'Fifth avenue', 11900000000, 'qwerty@xyz.com');

INSERT INTO product (name, unit_price) VALUES 
('Acoustic Guitar', 999.99),
('Electric Guitar', 1099.99),
('Piano', 9999.99),
('Flute', 699.99),
('Drums', 299.99);

INSERT INTO sale (sale_date, customerid_FK) VALUES 
('1971-01-01', 1),
('1972-01-01', 2),
('1973-01-01', 3),
('1974-01-01', 4),
('1975-01-01', 5);

INSERT INTO sale_product (productid_FK, saleid_FK) VALUES 
(1, 1),
(4, 1),
(5, 1),
(1, 2),
(2, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(3, 4),
(1, 5);