CREATE TABLE `supplier` (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`name` varchar(40) NOT NULL,
	`address` varchar(70),
	`telephone` CHAR(10),
	PRIMARY KEY (`id`)
);

CREATE TABLE `customer` (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`name` varchar(40) NOT NULL,
	`address` varchar(70),
	`telephone` CHAR(10),
	PRIMARY KEY (`id`)
);

CREATE TABLE `sProduct` (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`name` varchar(30) NOT NULL,
	`serial` varchar(30) NOT NULL,
	`accessories` TEXT(300),
	`supplierId` INT(8) NOT NULL,
	`customerId` INT(8),
	PRIMARY KEY (`id`)
);

CREATE TABLE `nsProduct` (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`name` varchar(30) NOT NULL,
	`quantity` INT(5) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `sPurchase` (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`supplierId` INT(8) NOT NULL,
	`dateTime` DATETIME NOT NULL,
	`comment` TEXT(100),
	PRIMARY KEY (`id`)
);

CREATE TABLE `sPurchaseProd` (
	`sPurchaseId` INT(8) NOT NULL,
	`sProductId` INT(8) NOT NULL,
	`comment` TEXT(100)
);

CREATE TABLE `sSale` (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`customerId` INT(8) NOT NULL,
	`dateTime` DATETIME NOT NULL,
	`comment` TEXT(100) ,
	PRIMARY KEY (`id`)
);

CREATE TABLE `sSaleProd` (
	`sSaleId` INT(8) NOT NULL,
	`sProductId` INT(8) NOT NULL,
	`comment` TEXT(100) 
);

CREATE TABLE `nsPurchase` (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`supplierId` INT(8) NOT NULL,
	`dateTime` DATETIME NOT NULL,
	`comment` TEXT(100) ,
	PRIMARY KEY (`id`)
);

CREATE TABLE `nsPurchaseProd` (
	`nsPurchaseId` INT(8) NOT NULL,
	`nsProductId` INT(8) NOT NULL,
	`quantity` INT(3) NOT NULL,
	`comment` TEXT(100)
);

CREATE TABLE `nsSaleProd` (
	`nsSaleId` INT(8) NOT NULL,
	`nsProductId` INT(8) NOT NULL,
	`quantity` INT(3) NOT NULL,
	`comment` TEXT(100)
);

CREATE TABLE `nsSale` (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`customerId` INT(8) NOT NULL,
	`dateTime` DATETIME NOT NULL,
	`comment` TEXT(100) ,
	PRIMARY KEY (`id`)
);

ALTER TABLE `sProduct` ADD CONSTRAINT `sProduct_fk0` FOREIGN KEY (`supplierId`) REFERENCES `supplier`(`id`);

ALTER TABLE `sProduct` ADD CONSTRAINT `sProduct_fk1` FOREIGN KEY (`customerId`) REFERENCES `customer`(`id`);

ALTER TABLE `sPurchase` ADD CONSTRAINT `sPurchase_fk0` FOREIGN KEY (`supplierId`) REFERENCES `supplier`(`id`);

ALTER TABLE `sPurchaseProd` ADD CONSTRAINT `sPurchaseProd_fk0` FOREIGN KEY (`sPurchaseId`) REFERENCES `sPurchase`(`id`);

ALTER TABLE `sPurchaseProd` ADD CONSTRAINT `sPurchaseProd_fk1` FOREIGN KEY (`sProductId`) REFERENCES `sProduct`(`id`);

ALTER TABLE `sSale` ADD CONSTRAINT `sSale_fk0` FOREIGN KEY (`customerId`) REFERENCES `customer`(`id`);

ALTER TABLE `sSaleProd` ADD CONSTRAINT `sSaleProd_fk0` FOREIGN KEY (`sSaleId`) REFERENCES `sSale`(`id`);

ALTER TABLE `sSaleProd` ADD CONSTRAINT `sSaleProd_fk1` FOREIGN KEY (`sProductId`) REFERENCES `sProduct`(`id`);

ALTER TABLE `nsPurchase` ADD CONSTRAINT `nsPurchase_fk0` FOREIGN KEY (`supplierId`) REFERENCES `supplier`(`id`);

ALTER TABLE `nsPurchaseProd` ADD CONSTRAINT `nsPurchaseProd_fk0` FOREIGN KEY (`nsPurchaseId`) REFERENCES `nsPurchase`(`id`);

ALTER TABLE `nsPurchaseProd` ADD CONSTRAINT `nsPurchaseProd_fk1` FOREIGN KEY (`nsProductId`) REFERENCES `nsProduct`(`id`);

ALTER TABLE `nsSaleProd` ADD CONSTRAINT `nsSaleProd_fk0` FOREIGN KEY (`nsSaleId`) REFERENCES `nsSale`(`id`);

ALTER TABLE `nsSaleProd` ADD CONSTRAINT `nsSaleProd_fk1` FOREIGN KEY (`nsProductId`) REFERENCES `nsProduct`(`id`);

ALTER TABLE `nsSale` ADD CONSTRAINT `nsSale_fk0` FOREIGN KEY (`customerId`) REFERENCES `customer`(`id`);
