# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          SE4.dez                                         #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2015-11-19 12:48                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `Registers` DROP FOREIGN KEY `Student_Registers`;

ALTER TABLE `Registers` DROP FOREIGN KEY `Officer_Registers`;

ALTER TABLE `Register_details` DROP FOREIGN KEY `Registers_Register_details`;

ALTER TABLE `Register_details` DROP FOREIGN KEY `Course_Register_details`;

# ---------------------------------------------------------------------- #
# Drop table "Register_details"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Register_details` DROP PRIMARY KEY;

DROP TABLE `Register_details`;

# ---------------------------------------------------------------------- #
# Drop table "Course"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Course` DROP PRIMARY KEY;

DROP TABLE `Course`;

# ---------------------------------------------------------------------- #
# Drop table "Registers"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `Registers`;

# ---------------------------------------------------------------------- #
# Drop table "Officer"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Officer` DROP PRIMARY KEY;

DROP TABLE `Officer`;

# ---------------------------------------------------------------------- #
# Drop table "Student"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Student` DROP PRIMARY KEY;

DROP TABLE `Student`;
