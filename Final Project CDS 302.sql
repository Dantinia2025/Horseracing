CREATE SCHEMA IF NOT EXISTS online_store;
USE online_store;

CREATE TABLE IF NOT EXISTS customer (
customer_id INT PRIMARY KEY,
first_name VARCHAR (50),
last_name VARCHAR (50),
email VARCHAR (50),
address VARCHAR (100),
phone_number VARCHAR (50)
);


CREATE TABLE IF NOT EXISTS orders (
customer_id INT,
order_id INT,
order_information VARCHAR (300),
order_date DATE,
order_total INT,
order_status VARCHAR (50),
order_quantity INT,
PRIMARY KEY (customer_id),
FOREIGN KEY(customer_id) references customer(customer_id)
);


CREATE TABLE IF NOT EXISTS product (
product_id INT PRIMARY KEY,
current_inventory INT, 
product_wholesale_cost INT,
product_sell_cost INT,
product_name VARCHAR (100),
product_description VARCHAR (300),
product_distributor VARCHAR (100)
);


CREATE TABLE IF NOT EXISTS payment (
payment_id INT PRIMARY KEY,
payment_amount INT, 
payment_date DATE, 
payment_description VARCHAR (300),
current_status VARCHAR (100)
);


CREATE TABLE IF NOT EXISTS distributor (
distributor_id INT PRIMARY KEY,
distributor_name VARCHAR (100),
distributor_location VARCHAR (300)
);


INSERT INTO customer VALUES 
(1, "Brendan", "Cevasco", "brendancevasco@gmail.com", "12345 Struggling Road, Fairfax, VA 22040", "3601232655"),
(2, "Mr. Pikachu", "Pokemon", "itspikachu@yahoo.com", "10400 NE 4th St Unit 2800, Bellevue, WA 98004", "4252221970"),
(3, "Mitre", "Prathumratana", "nonamethewanderer@gmail.com", "3349 Oak Way, Stanton, OH 68779", "7031236668")
;


INSERT INTO orders VALUES
(1, 100, "Pokemon cards", 2025-04-18, 250, "processing", 20),
(2, 200, "Plush", 20025-05-01, 500, "complete", 10),
(3, 201, "Pokemon TCG Packs", 2025-05-25, 1000, "pending", 250)
;
