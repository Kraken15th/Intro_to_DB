CREATE DATABASE alx_book_store;
USE alx_book_store;
CREATE TABLE Books ( 
	book_id INT AUTO_INCREMENT PRIMARY KEY,  
	title VARCHAR (130) NOT NULL,
	author_id INT NOT NULL,
	price DOUBLE NOT NULL,
	publication_date DATE NOT NULL
	);
CREATE TABLE Authors(
	author_id INT AUTO_INCREMENT PRIMARY KEY,
	author_name VARCHAR (215) NOT NULL
);
CREATE TABLE Customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_name VARCHAR (215) NOT NULL,
	emait VARCHAR (215) NOT NULL,
	address TEXT
);
CREATE TABLE Orders (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_id INT NOT NULL,
	order_date DATE NOT NULL
);
CREATE TABLE Order_Details (
	orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
	order_id INT NOT NULL,
	book_id INT NOT NULL,
	quantity DOUBLE NOT NULL
);


-- Add foreign key constraints
ALTER TABLE Books ADD FOREIGN KEY (author_id) REFERENCES Authors(author_id);
ALTER TABLE Orders ADD FOREIGN KEY (customer_id) REFERENCES Customers(customer_id);
ALTER TABLE Order_Details ADD FOREIGN KEY (order_id) REFERENCES Orders(order_id);
ALTER TABLE Order_Details ADD FOREIGN KEY (book_id) REFERENCES Books(book_id);