create database Ebussiness;
USE Ebussiness;
create table customers
( customer_id INT PRIMARY KEY,
customers_name varchar (30),
email varchar (20),
phone_number varchar (30)
);
INSERT INTO `ebussiness`.`customers` (`customer_id`, `customers_name`, `email`, `phone_number`) VALUES ('01', 'Tshepo Toyin', 'tt@hotmail.com', '08122556633');
INSERT INTO `ebussiness`.`customers` (`customer_id`, `customers_name`, `email`, `phone_number`) VALUES ('02', 'Ikechukwu Bongani', 'ikecho91@gmail.com', '07033665541');
INSERT INTO `ebussiness`.`customers` (`customer_id`, `customers_name`, `email`, `phone_number`) VALUES ('03', 'Nonso Bose', 'nbose@yahoo.com', '07015477883');
INSERT INTO `ebussiness`.`customers` (`customer_id`, `customers_name`, `email`, `phone_number`) VALUES ('04', 'Nzinga Amadi', 'aamadi@outlook.com', '07015544789');
INSERT INTO `ebussiness`.`customers` (`customer_id`, `customers_name`, `email`, `phone_number`) VALUES ('05', 'Chiumbo Chinyere', 'cyere22@gmail.com', '09133552264');
INSERT INTO `ebussiness`.`customers` (`customer_id`, `customers_name`, `email`, `phone_number`) VALUES ('06', 'Chidinma Neo', 'neo4@outlook.com', '09077568988');
INSERT INTO `ebussiness`.`customers` (`customer_id`, `customers_name`, `email`, `phone_number`) VALUES ('07', 'Aishatu Adamou', 'aishatu4567@', '08122547744');
INSERT INTO `ebussiness`.`customers` (`customer_id`, `customers_name`, `email`, `phone_number`) VALUES ('08', 'Idowu Kayin', 'ikayin123@yahoo.com', '07033092657');
INSERT INTO `ebussiness`.`customers` (`customer_id`, `customers_name`, `email`, `phone_number`) VALUES ('09', 'Tunde Afua', 'tundea@gmail.com', '08123532687');
INSERT INTO `ebussiness`.`customers` (`customer_id`, `customers_name`, `email`, `phone_number`) VALUES ('10', 'Adekunle Ejike', 'ejike001@outlook.com', '07013397096');
desc customers;

CREATE TABLE `ebussiness`.`orders` (
  `order_id` INT NOT NULL,
  `order_date` datetime NOT NULL,
  `customer_name` VARCHAR(45) NULL,
  PRIMARY KEY (`order_id`));
  ALTER TABLE `ebussiness`.`orders` 
ADD COLUMN `customer_id` VARCHAR(45) NOT NULL AFTER `customer_name`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`order_id`, `customer_id`);
;
ALTER TABLE `ebussiness`.`orders` 
ADD COLUMN `customer_order` VARCHAR(45) NULL AFTER `customer_id`;
ALTER TABLE `ebussiness`.`orders` 
CHANGE COLUMN `order_date` `order_date` DATE NOT NULL ;

INSERT INTO `ebussiness`.`orders` (`order_id`, `order_date`, `customer_name`, `customer_id`, `customer_order`) VALUES ('101', '2022-02-14', 'Tshepo Toyin', '1', 'yam ');
INSERT INTO `ebussiness`.`orders` (`order_id`, `order_date`, `customer_name`, `customer_id`, `customer_order`) VALUES ('102', '2023-03-10', 'Ikechukwu Bongani', '2', 'beans');
INSERT INTO `ebussiness`.`orders` (`order_id`, `order_date`, `customer_name`, `customer_id`, `customer_order`) VALUES ('103', '2023-04-08', 'Nonso Bose', '3', 'cereal');
INSERT INTO `ebussiness`.`orders` (`order_id`, `order_date`, `customer_name`, `customer_id`, `customer_order`) VALUES ('104', '2022-05-07', 'Nzinga Amadi', '4', 'milk');
INSERT INTO `ebussiness`.`orders` (`order_id`, `order_date`, `customer_name`, `customer_id`, `customer_order`) VALUES ('105', '2022-06-06', 'Chiumbo Chinyere', '5', 'vegetable');
INSERT INTO `ebussiness`.`orders` (`order_id`, `order_date`, `customer_name`, `customer_id`, `customer_order`) VALUES ('106', '2022-07-05', 'Chidinma Neo', '6', 'soda');
INSERT INTO `ebussiness`.`orders` (`order_id`, `order_date`, `customer_name`, `customer_id`, `customer_order`) VALUES ('107', '2022-08-04', 'Aishatu Adamou', '7', 'garri');
INSERT INTO `ebussiness`.`orders` (`order_id`, `order_date`, `customer_name`, `customer_id`, `customer_order`) VALUES ('108', '2022-09-03', 'Idowu Kayin', '8', 'rice');
INSERT INTO `ebussiness`.`orders` (`order_id`, `order_date`, `customer_name`, `customer_id`, `customer_order`) VALUES ('109', '2022-10-02', 'Tunde Afua', '9', 'fish');
INSERT INTO `ebussiness`.`orders` (`order_id`, `order_date`, `customer_name`, `customer_id`, `customer_order`) VALUES ('110', '2022-11-01', 'Adekunle Ejike', '10', 'meat');
UPDATE `ebussiness`.`orders` SET `order_date` = '2022-01-01' WHERE (`order_id` = '101') and (`customer_id` = '1');
UPDATE `ebussiness`.`orders` SET `order_date` = '2023-02-02' WHERE (`order_id` = '102') and (`customer_id` = '2');
UPDATE `ebussiness`.`orders` SET `order_date` = '2022-04-03' WHERE (`order_id` = '103') and (`customer_id` = '3');
UPDATE `ebussiness`.`orders` SET `order_date` = '2022-05-04' WHERE (`order_id` = '104') and (`customer_id` = '4');
UPDATE `ebussiness`.`orders` SET `order_date` = '2022-06-05' WHERE (`order_id` = '105') and (`customer_id` = '5');
UPDATE `ebussiness`.`orders` SET `order_date` = '2022-07-06' WHERE (`order_id` = '106') and (`customer_id` = '6');
UPDATE `ebussiness`.`orders` SET `order_date` = '2022-08-07' WHERE (`order_id` = '107') and (`customer_id` = '7');
UPDATE `ebussiness`.`orders` SET `order_date` = '2022-09-08' WHERE (`order_id` = '108') and (`customer_id` = '8');
UPDATE `ebussiness`.`orders` SET `order_date` = '2022-10-09' WHERE (`order_id` = '109') and (`customer_id` = '9');
UPDATE `ebussiness`.`orders` SET `order_date` = '2022-11-10' WHERE (`order_id` = '110') and (`customer_id` = '10');
ALTER TABLE `ebussiness`.`orders` 
CHANGE COLUMN `order_date` `order_date` CHAR(45) NOT NULL ;
UPDATE `ebussiness`.`orders` SET `order_date` = '2022-02-02' WHERE (`order_id` = '102') and (`customer_id` = '2');

  desc orders;
  CREATE TABLE `ebussiness`.`products` (
  `product_name` VARCHAR(45) NOT NULL,
  `unit_price` INT NULL,
  `quantity_available` VARCHAR(45) NULL,
  PRIMARY KEY (`product_name`));
  INSERT INTO `ebussiness`.`products` (`product_name`, `unit_price`, `quantity_available`) VALUES ('yam', '10', '10');
INSERT INTO `ebussiness`.`products` (`product_name`, `unit_price`, `quantity_available`) VALUES ('beans', '20', '12');
INSERT INTO `ebussiness`.`products` (`product_name`, `unit_price`, `quantity_available`) VALUES ('cereal', '30', '15');
INSERT INTO `ebussiness`.`products` (`product_name`, `unit_price`, `quantity_available`) VALUES ('milk', '40', '16');
INSERT INTO `ebussiness`.`products` (`product_name`, `unit_price`, `quantity_available`) VALUES ('vegetable', '50', '17');
INSERT INTO `ebussiness`.`products` (`product_name`, `unit_price`, `quantity_available`) VALUES ('soda', '60', '28');
INSERT INTO `ebussiness`.`products` (`product_name`, `unit_price`, `quantity_available`) VALUES ('garri', '60', '55');
INSERT INTO `ebussiness`.`products` (`product_name`, `unit_price`, `quantity_available`) VALUES ('rice ', '44', '33');
INSERT INTO `ebussiness`.`products` (`product_name`, `unit_price`, `quantity_available`) VALUES ('fish', '22', '66');
INSERT INTO `ebussiness`.`products` (`product_name`, `unit_price`, `quantity_available`) VALUES ('meat', '12', '77');

desc products;
CREATE TABLE `ebussiness`.`employees` (
  `employee_id` INT NOT NULL,
  `employee_name` VARCHAR(45) NULL,
  PRIMARY KEY (`employee_id`));
  INSERT INTO `ebussiness`.`employees` (`employee_id`, `employee_name`) VALUES ('50', 'bill');
INSERT INTO `ebussiness`.`employees` (`employee_id`, `employee_name`) VALUES ('51', 'will');
INSERT INTO `ebussiness`.`employees` (`employee_id`, `employee_name`) VALUES ('52', 'nimo');
INSERT INTO `ebussiness`.`employees` (`employee_id`, `employee_name`) VALUES ('53', 'san');
INSERT INTO `ebussiness`.`employees` (`employee_id`, `employee_name`) VALUES ('54', 'kuro');
INSERT INTO `ebussiness`.`employees` (`employee_id`, `employee_name`) VALUES ('55', 'fego');
INSERT INTO `ebussiness`.`employees` (`employee_id`, `employee_name`) VALUES ('56', 'mike');
INSERT INTO `ebussiness`.`employees` (`employee_id`, `employee_name`) VALUES ('57', 'joe');
INSERT INTO `ebussiness`.`employees` (`employee_id`, `employee_name`) VALUES ('58', 'dave');
INSERT INTO `ebussiness`.`employees` (`employee_id`, `employee_name`) VALUES ('59', 'festus');

  desc employees;
  
  