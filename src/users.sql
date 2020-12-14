CREATE SCHEMA `users` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
CREATE TABLE `users`.`users_info` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(256) NOT NULL,
  `pass` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
INSERT INTO `users`.`users_info` (`login`, `pass`) VALUES ('daniil', '1234');
CREATE TABLE `users`.`pass_pages` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `source` VARCHAR(2048) NOT NULL,
  PRIMARY KEY (`id`));
ALTER TABLE `users`.`pass_pages` 
ADD COLUMN `user_id` INT NOT NULL AFTER `source`;
INSERT INTO `users`.`pass_pages` (`source`, `user_id`) VALUES ('/', '1');
ALTER TABLE `users`.`pass_pages` 
ADD INDEX `fk_user_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `users`.`pass_pages` 
ADD CONSTRAINT `fk_user`
  FOREIGN KEY (`user_id`)
  REFERENCES `users`.`users_info` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

CREATE TABLE `users`.`img` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `path` VARCHAR(1024) NOT NULL,
  `name` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;
INSERT INTO `users`.`img` (`path`, `name`) VALUES ('./img/1.jpg', '1.jpg');
INSERT INTO `users`.`img` (`path`, `name`) VALUES ('./img/2.jpg', '2.jpg');
INSERT INTO `users`.`img` (`path`, `name`) VALUES ('./img/3.jpg', '3.jpg');
INSERT INTO `users`.`img` (`path`, `name`) VALUES ('./img/4.jpg', '4.jpg');
INSERT INTO `users`.`img` (`path`, `name`) VALUES ('./img/5.jpg', '5.jpg');
INSERT INTO `users`.`img` (`path`, `name`) VALUES ('./img/6.jpg', '6.jpg');
