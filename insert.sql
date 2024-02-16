-- Table for Users
CREATE TABLE users (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL
);
-- Table for Products
CREATE TABLE products (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL,
price DECIMAL(10, 2) NOT NULL
);
-- Table for Orders
CREATE TABLE orders (
id SERIAL PRIMARY KEY,
user_id INT NOT NULL,
total_price DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(id)
);