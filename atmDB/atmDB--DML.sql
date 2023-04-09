USE atmDB;

INSERT INTO customer (id, name) VALUES 
(1, "João"),
(2, "Maria"),
(3, "José");

INSERT INTO account (id, balance, pass, customer_id_fk) VALUES
(556, 0, "1234", 1),
(762, 100, "qwerty", 2),
(338, 50, "1q2w3e", 3),
(1001, 1, "0000", 3);

delete from customer where id = 3;