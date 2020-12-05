CREATE SCHEMA `galary` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
CREATE TABLE `galary`.`img` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `path` VARCHAR(1024) NOT NULL,
  `name` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;
INSERT INTO `galary`.`img` (`path`, `name`) VALUES ('./img/1.jpg', '1.jpg');
INSERT INTO `galary`.`img` (`path`, `name`) VALUES ('./img/2.jpg', '2.jpg');
INSERT INTO `galary`.`img` (`path`, `name`) VALUES ('./img/3.jpg', '3.jpg');
INSERT INTO `galary`.`img` (`path`, `name`) VALUES ('./img/4.jpg', '4.jpg');
INSERT INTO `galary`.`img` (`path`, `name`) VALUES ('./img/5.jpg', '5.jpg');
INSERT INTO `galary`.`img` (`path`, `name`) VALUES ('./img/6.jpg', '6.jpg');