# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          SE4.dez                                         #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2015-11-19 12:48                                #
# ---------------------------------------------------------------------- #

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

# ---------------------------------------------------------------------- #
# CREATE SCHEMA                                                          #
# ---------------------------------------------------------------------- #


DROP SCHEMA IF EXISTS 5605104046db;
CREATE SCHEMA 5605104046db;
USE 5605104046db;
# ---------------------------------------------------------------------- #
# Add table "Student"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `Student` (
    `Std_id` INTEGER(11) NOT NULL,
    `Std_pass` VARCHAR(40) NOT NULL,
    `Std_age` VARCHAR(40),
    `Std_address` VARCHAR(200),
    CONSTRAINT `PK_Student` PRIMARY KEY (`Std_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Officer"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `Officer` (
    `Off_id` INTEGER(9) NOT NULL,
    `Off_name` VARCHAR(40),
    `Off_pass` VARCHAR(40),
    `Off_age` INTEGER,
    `Off_address` VARCHAR(200),
    CONSTRAINT `PK_Officer` PRIMARY KEY (`Off_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Registers"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `Registers` (
    `Reg_id` INTEGER(6) NOT NULL,
    `Credit_total` INTEGER(3),
    `Std_id` INTEGER(10),
    `Off_id` INTEGER(9),
    PRIMARY KEY (`Reg_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Course"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `Course` (
    `Co_id` INTEGER(4) NOT NULL,
    `Co_credit` INTEGER(2),
    `Co_hours` VARCHAR(3),
    CONSTRAINT `PK_Course` PRIMARY KEY (`Co_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Register_details"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `Register_details` (
    `Reg_id` INTEGER(6) NOT NULL,
    `RD_Room` VARCHAR(10),
    `Co_id` INTEGER(4),
    CONSTRAINT `PK_Register_details` PRIMARY KEY (`Reg_id`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `Registers` ADD CONSTRAINT `Student_Registers` 
    FOREIGN KEY (`Std_id`) REFERENCES `Student` (`Std_id`);

ALTER TABLE `Registers` ADD CONSTRAINT `Officer_Registers` 
    FOREIGN KEY (`Off_id`) REFERENCES `Officer` (`Off_id`);

ALTER TABLE `Register_details` ADD CONSTRAINT `Registers_Register_details` 
    FOREIGN KEY (`Reg_id`) REFERENCES `Registers` (`Reg_id`);

ALTER TABLE `Register_details` ADD CONSTRAINT `Course_Register_details` 
    FOREIGN KEY (`Co_id`) REFERENCES `Course` (`Co_id`);
	
SET SQL_MODE=@OLD_SQL_MODE;	
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

