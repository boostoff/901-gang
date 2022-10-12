create database SHOPs;
use shop;

CREATE TABLE users(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(100) NOT NULL,
  user_password VARCHAR(100) NOT NULL
) ENGINE = InnoDB;
 
-- Table: products
CREATE TABLE products(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(100) NOT NULL,
  product_desc VARCHAR(255),
  product_price DOUBLE NOT NULL,
  product_quantity_in_stock INT NOT NULL
) ENGINE = InnoDB;
 
-- Table: purchases
CREATE TABLE purchases(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  product_id INT NOT NULL,
  date_of_purchase DATE NOT NULL,
  purchase_price DOUBLE NOT NULL,
  quantity INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (product_id) REFERENCES products (id)
) ENGINE = InnoDB;
 
-- Table: roles
CREATE TABLE roles(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  role_name VARCHAR(100) NOT NULL
) ENGINE = InnoDB;
 
-- Table for mapping users and roles: user_roles
CREATE TABLE user_roles(
  user_id INT NOT NULL,
  role_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (role_id) REFERENCES roles (id),
  UNIQUE (user_id, role_id)
) ENGINE = InnoDB;