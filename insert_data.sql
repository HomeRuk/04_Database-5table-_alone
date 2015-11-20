SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

USE 5605104046db;

SET AUTOCOMMIT=0;
INSERT INTO `5605104046db`.`cource` (`Co_id`, `Co_credit`, `Co_hours`) VALUES ('0001', '3', '30');
INSERT INTO `5605104046db`.`student` (`Std_id`, `Std_pass`, `Std_age`, `Std_address`) VALUES ('560510401', '1234', '20', '44/44 utcc');
INSERT INTO `5605104046db`.`officer` (`Off_id`, `Off_name`, `Off_pass`, `Off_age`, `Off_address`) VALUES ('12345678', 'ruk', '1234', '32', '55/66');
INSERT INTO `5605104046db`.`registers` (`Reg_id`, `Credit_total`, `Std_id`, `Off_id`) VALUES ('01234', '138', '560510401', '12345678');
INSERT INTO `5605104046db`.`register_details` (`Reg_id`, `RD_Room`, `Co_id`) VALUES ('01234', '21503', '0001');

COMMIT;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;