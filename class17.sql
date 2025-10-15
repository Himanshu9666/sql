drop database corrdb;
create database corrdb;
use corrdb;

-- Create products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100), 
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Create sales table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert data into products
INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 1200.00),
(2, 'Phone', 'Electronics', 800.00),
(3, 'Chair', 'Furniture', 150.00),
(4, 'Desk', 'Furniture', 300.00),
(5, 'Monitor', 'Electronics', 250.00);

-- Insert data into sales
INSERT INTO sales (sale_id, product_id, quantity, sale_date) VALUES
(1, 1, 3, '2025-09-10'),
(2, 2, 5, '2025-09-11'),
(3, 1, 2, '2025-09-15'),
(4, 3, 7, '2025-09-1');

select * from products;
select * from sales;

select product_name,category,price from products as p_out
where price>(select avg(price) from produts where category = p_out.category);

-- get all products that have been sold more then 3 times in any single sale tracstion
select product_name,s.quantity from products as p 
join sales as s where p.product_id =s.product_id;

select product_id,product_name from products as p_out
where p_out.product_id in 
(select product_id from sales as s_in where s_in.product_id =p_out.product_id and quantity>3);

-- secound hightest salary (price)
select max(price) from products where price < (select max(price) from products);

-- information 
select * from products where price = 
(select max(price) from products where price< (select max(price) from products));

select * from products where price = 
(select min(price) from products where price> (select min(price) from products));

-- get all the infromation from product table where price is grater then the price of product id 3 
-- get all the information from the product table where categroy is same as of product id 2 
-- get all the information from the product table where catergroy is same as or equal productid 2 and 3 
-- get all the information from the product table where price of the product is grater then among all the prices of the product in furniture category
-- get all the product_id and product_name and tptal quantity of sold of each product

-- all the information
-- price > 
-- price of prodcut id 3
select * from products where price > 
(select price from products where product_id=3 );

-- get all the information from the product table where categroy is same as of product id 2 
select * from products where category =( select category from products where product_id =2);

-- get all the information from the product table where catergroy is same as or equal productid 2 and 3 
select * from products where category = 
(select category from products where product_id =2) 
and category = (select category from products where product_id =3) ;

-- get all the information from the product table where price of the product is grater then among all the prices of the product in furniture category
select * from products where price >all (select price from products where category='furniture');

-- get all the product_id and product_name and tptal quantity of sold of each product

