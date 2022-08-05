
-- create customer
CREATE TABLE Customer (
  custId INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

-- create Item
CREATE TABLE Item (
  item_id INTEGER PRIMARY KEY,
  item_name TEXT NOT NULL,
  price INTEGER
);

-- create Sale
CREATE TABLE Sale (
  bill_no INTEGER PRIMARY KEY,
  bill_data DATE,
  cust_id INTEGER,
  item_id INTEGER,
  qty_sold INTEGER
);

-- b: Show table description
DESCRIBE Customer;
DESCRIBE Item;
DESCRIBE Sale;

-- c: Insert 
-- Insert in Customer
INSERT INTO Customer VALUES (1, 'Akshay');
INSERT INTO Customer VALUES (2, 'Debashish');
INSERT INTO Customer VALUES (3, 'Mukul');
INSERT INTO Customer VALUES (4, 'Tirkey');
INSERT INTO Customer VALUES (5, 'Anmol');
INSERT INTO Customer VALUES (6, 'James');
INSERT INTO Customer VALUES (7, 'Toppo');
INSERT INTO Customer VALUES (8, 'Killua');
INSERT INTO Customer VALUES (9, 'Zyldock');
INSERT INTO Customer VALUES (10, 'Itachi');

-- Insert in Item
INSERT INTO Item VALUES (11, 'Item1',100);
INSERT INTO Item VALUES (22, 'Item2',101);
INSERT INTO Item VALUES (33, 'Item3',102);
INSERT INTO Item VALUES (44, 'Item4',103);
INSERT INTO Item VALUES (55, 'Item5',104);
INSERT INTO Item VALUES (66, 'Item6',105);
INSERT INTO Item VALUES (77, 'Item7',106);
INSERT INTO Item VALUES (88, 'Item8',107);
INSERT INTO Item VALUES (99, 'Item9',108);
INSERT INTO Item VALUES (100, 'Item10',109);

-- Insert in Sales
INSERT INTO Sale VALUES (111,'2022-01-01',1, 11,20);
INSERT INTO Sale VALUES (222,'2022-01-02',1, 22,30);
INSERT INTO Sale VALUES (333,'2022-01-03',2, 33,40);
INSERT INTO Sale VALUES (444,'2022-01-04',2, 44,50);
INSERT INTO Sale VALUES (555,'2022-08-05',2, 55,60);
INSERT INTO Sale VALUES (666,'2022-08-05',3, 66,70);
INSERT INTO Sale VALUES (777,'2022-09-07',4, 77,80);
INSERT INTO Sale VALUES (888,'2022-01-08',5, 88,80);
INSERT INTO Sale VALUES (999,'2022-01-09',5, 99,90);
INSERT INTO Sale VALUES (1000,'2022-01-10',7, 100,100);


-- 1 : Show all records

SELECT * FROM Customer;
SELECT * FROM Item;
SELECT * FROM Sale;

-- 2 : price > 100
SELECT * FROM Item WHERE price>100;

-- 3 : bill_no
SELECT bill_no,cust_id FROM Sale WHERE bill_data=curdate();

-- 4 : 
SELECT name From Customer WHERE custId=2;

-- 5 :
DELETE FROM Customer WHERE custId=5;
SELECT * FROM Customer;

