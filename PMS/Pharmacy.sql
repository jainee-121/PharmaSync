/*CREATE DATABASE IF NOT EXISTS pharmacy;

USE pharmacy;

CREATE TABLE IF NOT EXISTS customers (
    Cid INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    phNumber VARCHAR(10) NOT NULL
);
CREATE TABLE IF NOT EXISTS medicines (
    mid INT AUTO_INCREMENT PRIMARY KEY,
    mname VARCHAR(255) NOT NULL,
	mprice int NOT NULL
);
CREATE TABLE IF NOT EXISTS purchase (
    purchase_id INT AUTO_INCREMENT PRIMARY KEY,
    cid INT,
    mid INT,
	order_date DATE,
    quantity INT,
    total_price DECIMAL(10, 2),
    FOREIGN KEY (cid) REFERENCES customers(Cid),
    FOREIGN KEY (mid) REFERENCES medicines(mid)
);*/

