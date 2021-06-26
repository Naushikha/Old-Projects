CREATE TABLE `supplier` (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`name` varchar(50) NOT NULL,
	`address` varchar(100),
	`telephone` CHAR(10),
	`user` VARCHAR(10) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `customer` (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`name` varchar(50) NOT NULL,
	`address` varchar(100),
	`telephone` CHAR(10),
	`user` VARCHAR(10) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `sProduct` (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`name` varchar(50) NOT NULL,
	`serial` varchar(40) NOT NULL,
	`accessories` TEXT(300),
	`supplierId` INT(8) NOT NULL,
	`customerId` INT(8),
	PRIMARY KEY (`id`)
);

CREATE TABLE `nsProduct` (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`name` varchar(50) NOT NULL,
	`quantity` INT(5) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `purchase` (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`supplierId` INT(8) NOT NULL,
	`dateTime` DATETIME NOT NULL,
	`comment` TEXT(100),
	`user` VARCHAR(10) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `purchase_SProd` (
	`purchaseId` INT(8) NOT NULL,
	`sProductId` INT(8) NOT NULL,
	`comment` TEXT(100)
);

CREATE TABLE `purchase_NsProd` (
	`purchaseId` INT(8) NOT NULL,
	`nsProductId` INT(8) NOT NULL,
	`quantity` INT(3) NOT NULL,
	`comment` TEXT(100)
);

CREATE TABLE `sale` (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`customerId` INT(8) NOT NULL,
	`dateTime` DATETIME NOT NULL,
	`comment` TEXT(100) ,
	`user` VARCHAR(10) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `sale_SProd` (
	`saleId` INT(8) NOT NULL,
	`sProductId` INT(8) NOT NULL,
	`comment` TEXT(100) 
);

CREATE TABLE `sale_NsProd` (
	`saleId` INT(8) NOT NULL,
	`nsProductId` INT(8) NOT NULL,
	`quantity` INT(3) NOT NULL,
	`comment` TEXT(100)
);


ALTER TABLE `sProduct` ADD CONSTRAINT `sProduct_fk0` FOREIGN KEY (`supplierId`) REFERENCES `supplier`(`id`);

ALTER TABLE `sProduct` ADD CONSTRAINT `sProduct_fk1` FOREIGN KEY (`customerId`) REFERENCES `customer`(`id`);

ALTER TABLE `purchase` ADD CONSTRAINT `purchase_fk0` FOREIGN KEY (`supplierId`) REFERENCES `supplier`(`id`);

ALTER TABLE `purchase_SProd` ADD CONSTRAINT `purchase_SProd_fk0` FOREIGN KEY (`purchaseId`) REFERENCES `purchase`(`id`);

ALTER TABLE `purchase_SProd` ADD CONSTRAINT `purchase_SProd_fk1` FOREIGN KEY (`sProductId`) REFERENCES `sProduct`(`id`);

ALTER TABLE `purchase_NsProd` ADD CONSTRAINT `purchase_NsProd_fk0` FOREIGN KEY (`purchaseId`) REFERENCES `purchase`(`id`);

ALTER TABLE `purchase_NsProd` ADD CONSTRAINT `purchase_NsProd_fk1` FOREIGN KEY (`nsProductId`) REFERENCES `nsProduct`(`id`);

ALTER TABLE `sale` ADD CONSTRAINT `sale_fk0` FOREIGN KEY (`customerId`) REFERENCES `customer`(`id`);

ALTER TABLE `sale_SProd` ADD CONSTRAINT `sale_SProd_fk0` FOREIGN KEY (`saleId`) REFERENCES `sale`(`id`);

ALTER TABLE `sale_SProd` ADD CONSTRAINT `sale_SProd_fk1` FOREIGN KEY (`sProductId`) REFERENCES `sProduct`(`id`);

ALTER TABLE `sale_NsProd` ADD CONSTRAINT `sale_NsProd_fk0` FOREIGN KEY (`saleId`) REFERENCES `sale`(`id`);

ALTER TABLE `sale_NsProd` ADD CONSTRAINT `sale_NsProd_fk1` FOREIGN KEY (`nsProductId`) REFERENCES `nsProduct`(`id`);

