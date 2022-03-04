DROP DATABASE IF EXISTS `bookbiz`;
CREATE DATABASE IF NOT EXISTS `bookbiz`; 
USE `bookbiz`;

SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;

-- AUTO_INCREMENT
-- --------------------------------------
--  TABLE BOOKS
-- --------------------------------------

CREATE TABLE `Books` (
	`ISBN` 				varchar (17) NOT NULL,
	`Title` 			varchar (50) NOT NULL,
	`Genre` 			varchar (20) NULL,	
	`EditorEmail1` 		varchar (50) NOT NULL ,
    `EditorEmail2` 		varchar (50) NULL ,
    `EditorEmail3` 		varchar (50) NULL ,
	`AuthorEmail1` 		varchar (50) NOT NULL ,	
    `AuthorEmail2` 		varchar (50) NULL ,
    `AuthorEmail3` 		varchar (50) NULL ,
    `PublisherEmail`    varchar (50) NOT NULL ,
  	PRIMARY KEY (`ISBN`),
    INDEX `Title` (`Title` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE AUTHORS
-- --------------------------------------

CREATE TABLE `Authors` (
	`AuthorEmail` 		varchar (50) NOT NULL,
	`AuthorName` 		varchar (30) NOT NULL,	
  	PRIMARY KEY (`AuthorEmail`),
    INDEX `AuthorName` (`AuthorName` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE EDITORS
-- --------------------------------------

CREATE TABLE `Editors` (
    `EditorEmail`           varchar (50) NOT NULL,
    `EditorName`            varchar (30) NULL,
    `PublisherEmail1`   		varchar (50) NOT NULL,
    `PublisherEmail2`   		varchar (50) NULL,
    PRIMARY KEY (`EditorEmail`),
	INDEX `EditorName` (`EditorName` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------
--  TABLE PUBLISHERS
-- --------------------------------------

CREATE TABLE `Publishers` (
    `PublisherEmail`        varchar (50) NOT NULL,
    `PublisherName`         varchar (30) NULL,
    PRIMARY KEY (`PublisherEmail`),
    INDEX `PublisherName` (`PublisherName` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
-- --------------------------------------
--  TABLE ORDERS
-- --------------------------------------
CREATE TABLE `Orders` (
    `OrderNumber`       int NOT NULL auto_increment,
    `Date`         		varchar (30) NULL,
    `ISBN`           	varchar (17) NOT NULL,
    `CustomerEmail`		varchar (50), 
    PRIMARY KEY (`OrderNumber`),
    INDEX `OrderNumber` (`OrderNumber` ASC) 
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
-- --------------------------------------
--  TABLE CUSTOMERS
-- --------------------------------------
CREATE TABLE `Customers` (	
	`CustomerEmail`		varchar (50), 
	`CustomerName`				varchar (30),
    PRIMARY KEY (`CustomerEmail`),
    INDEX `CustomerName` (`CustomerName` ASC) 
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
-- --------------------------------------
--  TABLE BOOK ROYALTIES
-- --------------------------------------
CREATE TABLE `BookRoyalties` (	
	`RoyaltyID`		int NOT NULL AUTO_INCREMENT, 
	`Royalties`		int NULL,
    `ISBN`			varchar (17),
    `AuthorEmail`	varchar (50),
    PRIMARY KEY (`RoyaltyID`),
    INDEX `AuthorEmail` (`AuthorEmail` ASC) 
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;