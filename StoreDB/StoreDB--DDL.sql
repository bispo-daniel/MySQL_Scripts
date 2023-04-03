/*
    CREATE IF NOT EXISTS DATBASE StoreDB;
    USE StoreDB;
*/

CREATE TABLE IF NOT EXISTS customer ( 
    id BIGINT PRIMARY KEY AUTO_INCREMENT,  
    name VARCHAR(100) NOT NULL,  
    address VARCHAR(100) NOT NULL,  
    phone BIGINT NOT NULL,  
    email VARCHAR(100) NOT NULL
); 

CREATE TABLE IF NOT EXISTS product ( 
    id BIGINT PRIMARY KEY AUTO_INCREMENT,  
    name VARCHAR(100) NOT NULL,  
    unit_price DOUBLE(9, 2) NOT NULL
); 

CREATE TABLE IF NOT EXISTS sale ( 
    id BIGINT PRIMARY KEY AUTO_INCREMENT,  
    sale_date DATE NOT NULL,
    customerid_FK BIGINT,
    FOREIGN KEY (customerid_FK) REFERENCES customer(id)
); 

CREATE TABLE IF NOT EXISTS sale_product (
    productid_FK BIGINT NOT NULL,
    saleid_FK BIGINT NOT NULL,
    FOREIGN KEY (productid_FK) REFERENCES product (id),
    FOREIGN KEY (saleid_FK) REFERENCES sale (id),
    CONSTRAINT id_sale_product PRIMARY KEY (productid_FK, saleid_FK)
);