DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products
(
  id INT NOT NULL
  AUTO_INCREMENT,
  product_name VARCHAR
  (45) NOT NULL,
  department_name VARCHAR
  (45) NOT NULL,
  price FLOAT NOT NULL,
  stock_quantity INT NOT NULL,
  PRIMARY KEY
  (id)
);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ("L.O.L. Surprise! Glam Glitter Series Doll with 7 Surprises", "Toys and Games", 11.54, 10);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ("The Elf on the Shelf: A Christmas Tradition", "Toys and Games", 27.99, 10);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ("Echo Dot (2nd Generation) - Smart speaker with Alexa - Black", "Electronics", 24.99, 10);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ("Fire TV Stick with Alexa Voice Remote, streaming media player", "Electronics", 39.99, 10);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ("Wyze Cam 1080p HD Indoor Wireless Smart Home Camera with Night Vision, 2-Way Audio, Works with Alexa", "Camera and Photo", 25.98, 10);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ("IP Camera, TanTan 1080P HD Wireless Smart Dome Camera, Security Surveillance System with Motion Detection, Night Vision, 2-Way Audio, Motion Tracker, Remote Monitor for Home", "Camera aand Photo", 32.99, 10);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ("Super Smash Bros. Ultimate", "Video Games", 59.88, 10);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ("Red Dead Redemption 2 - PlayStation 4", "Video Games", 59.88, 10);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ("Becoming - Hardcover", "Books", 19.50, 10);

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ("The Wonky Donkey - Paperback", "Books", 5.20, 10);
