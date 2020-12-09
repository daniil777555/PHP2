CREATE SCHEMA `products` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
CREATE TABLE `products`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name_id` INT NOT NULL,
  `desc_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;
CREATE TABLE `products`.`name` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


INSERT INTO `products`.`description` (`desc`) VALUES ('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla commodo dui eget turpis volutpat, a dapibus sem congue. Aenean vel felis tristique, dignissim lorem in, hendrerit tellus. Proin pretium, elit eu eleifend commodo, diam velit sagittis elit, eu interdum turpis dui nec nisi.');
INSERT INTO `products`.`description` (`desc`) VALUES ('Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras consequat non orci nec porttitor. Fusce pharetra malesuada fermentum. Pellentesque pretium at neque eu tempor. Pellentesque et ex ultrices, scelerisque elit in, luctus enim. Integer et consequat velit.');
INSERT INTO `products`.`description` (`desc`) VALUES ('Etiam vel magna eget lorem dictum ultrices. Mauris finibus risus vel nisl auctor, eu lobortis augue fringilla. Quisque euismod dui sit amet finibus fermentum. ');
INSERT INTO `products`.`description` (`desc`) VALUES ('Mauris vulputate neque in lacus scelerisque malesuada. Quisque justo urna, vehicula eu sodales sed, blandit in lorem. Proin condimentum arcu lacus, et gravida risus sollicitudin eget. Maecenas tristique a sapien ut vestibulum. Nullam dignissim, turpis eget facilisis vehicula, tortor tellus bibendum s');
INSERT INTO `products`.`description` (`desc`) VALUES (' Mauris nisl justo, aliquet condimentum mi egestas, dictum venenatis ante. Suspendisse ullamcorper orci at orci tincidunt, luctus sagittis massa mollis. Aliquam rutrum vulputate fermentum. Vivamus et lacus leo. Maecenas porttitor finibus sapien, vel elementum justo porta at. Vestibulum molestie et risus ege');
INSERT INTO `products`.`description` (`desc`) VALUES ('nterdum. Integer vehicula enim sed elementum aliquam. Nam eget mauris fermentum, tempus nisl quis, condimentum massa.');
INSERT INTO `products`.`description` (`desc`) VALUES ('or feugiat. Curabitur nisl justo, blandit eu libero sed, pulvinar interdum odio. Fusce nec commodo eros. Ut vel elit lacus. Fusce tempor, neque in vulputate imperdiet, dui mauris efficitur risus, at vulputate mauris neque a massa. Vestibulum lacinia tincidunt lectus, sit amet ornare odio egestas congue. Ut eu nulla accums');
INSERT INTO `products`.`description` (`desc`) VALUES ('s elit eget nisl faucibus, sit amet hendrerit erat viverra. In mollis libero nec sapien ultricies, nec tempus nunc iaculis. Donec efficitur ligula quis nisl porta malesuada.');
INSERT INTO `products`.`description` (`desc`) VALUES ('cidunt faucibus. Aenean scelerisque tristique urna nec ultricies. Vestibulum eu nisi pretium, ultrices turpis ut, pharetra velit. Mauris c');
INSERT INTO `products`.`description` (`desc`) VALUES ('ellus malesuada, iaculis nisi sit amet, blandit lorem. Sed at laoreet elit, et auctor augue. Suspendisse potenti. Mauris varius ipsum sed porta fringilla. Vestibulum vestibulum justo et risus condimentum, sed volutpat odio pulvinar. Aenean quis orci nisl. Morbi nunc justo, tincidunt ut elementum at, ultrices eget sapien. Cras sagittis s');
INSERT INTO `products`.`description` (`desc`) VALUES ('erdiet pulvinar nisl eu sollicitudin. Proin pellentesque, metus sit amet gravida elementum, ante diam accumsan ante, in congue nisi ex at mauris. Donec massa nisl, scelerisque a finibus ut, bibendum id leo. Aenean suscipit maximus venenatis. Donec');
INSERT INTO `products`.`description` (`desc`) VALUES ('Donec vel bibendum enim, ac imperdiet ex. Nullam eget orci vitae libero ullamcorper venenatis eget et mi. Nunc in efficitur dui. Vivamus auctor congue aliquam. Nam vitae ultrices turpis, eu pharetra erat. Curabitur scelerisque quam ut sapien dapibus rutrum. Cras quis nisi sed lorem condimentum molestie. Integer vel metus arcu. Duis tempus risus odio, ac imperdiet lorem lobortis ut. In hac habitasse platea dictumst. Mor');
INSERT INTO `products`.`description` (`desc`) VALUES (' pulvinar, enim placerat fringilla imperdiet, nulla metus dapibus justo, in cursus tellus ex in ipsum. Mauris sed mauris non enim rutrum rhoncus. Suspendisse id pellentesque lectus. Vivamus ac libero sed enim viverra posuere at sit amet ex. Suspendisse potenti.');
INSERT INTO `products`.`description` (`desc`) VALUES ('l nisi rutrum, pulvinar elit quis, ornare dui. Cras vel nunc quis ex mattis dictum. Praesent tempus ex suscipit luctus accumsan. Nunc ultrices pretium felis, id rutrum nunc accumsan eu. Nullam tortor velit, volutpat et tortor sit amet, maximus eleifend quam');
INSERT INTO `products`.`description` (`desc`) VALUES ('m erat, non sagittis lectus vulputate efficitur. Duis sit amet sapien vulputate velit commodo efficitur. Nunc sed massa a diam iaculis lacinia. Nunc quis diam et ipsum fringilla ultrices quis quis sapien. Cras turpis lacus, ultrices eu eleifend a, accumsan non diam. Curabitur in ipsum massa. Sed scelerisque libero ut mattis varius. Vestibulum euismod velit eget efficitur p');
INSERT INTO `products`.`description` (`desc`) VALUES ('eget molestie. Sed posuere odio in urna commodo sodales. Aenean cursus, massa in lobortis maximus, purus velit pellentesque justo, quis auctor erat ipsum eget magna. Aenean a pulvinar odio, vitae auctor quam. Nunc vel porta tellus, id consectetur lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis orci sem, id vestibulum libero s');
INSERT INTO `products`.`description` (`desc`) VALUES ('nar. Nullam tincidunt lorem neque, ac tincidunt leo congue quis. Morbi dignissim tortor sed nisl tincidunt, id dapibus risus tristique. Aenean iaculis ultricies urna quis porta. In sed quam accumsan, elementum risus nec, aliquet nisi.');
INSERT INTO `products`.`description` (`desc`) VALUES ('lis faucibus id nec massa. Nulla sit amet aliquet orci, ut lacinia magna. Nulla in fringilla ex. Duis sed fermentum purus. Praesent sed libero ligula. Cras tincidunt lectus ipsum, eu tristique nulla feugiat non. Vivamus interdum euismod eros vel condimentum. Duis eu commodo tellus. Sed mi urna, iaculis vel libero a, condimentum efficitur elit. Etiam ');
INSERT INTO `products`.`description` (`desc`) VALUES ('ntum bibendum urna ullamcorper quis. Integer ac massa mattis mauris malesuada rhoncus. Duis congue felis non urna rutrum, ut aliquam massa condimentum. Nam vitae ex ac diam bibendum mollis. Maecenas sit amet enim cursus, tincidunt lorem et, vestibulum leo. Quisque fermentum elit at tortor ornare malesuada.');
INSERT INTO `products`.`description` (`desc`) VALUES ('Cras vitae pulvinar erat, at consequat mauris. Aenean nec dapibus libero, a finibus turpis. Sed varius dui in v');
INSERT INTO `products`.`description` (`desc`) VALUES ('putate feugiat. Donec sapien velit, facilisis eu est id, efficitur malesuada lacus. Aenean at lorem nec orci iaculis elementum. Sed dignissim in mi vitae viverra. Phasellus auctor eget erat et molestie. Sed bi');
INSERT INTO `products`.`description` (`desc`) VALUES ('Nam quis ultricies quam. Proin interdum diam vitae justo vulputate, id elementum justo malesuada. Maecenas null');
INSERT INTO `products`.`description` (`desc`) VALUES ('. Sed et tellus in nunc euismod volutpat. Donec mollis, sapien sit amet pellentesque posuere, nibh velit fermentum justo, non pulvinar lorem orci quis risus. Sed a nisl sed ante consectetur consectetur euismod vitae nunc. Proin ullamcorper enim at odio posuere sagittis. Aliquam et mauris non dui malesua');
INSERT INTO `products`.`description` (`desc`) VALUES ('nvallis. Curabitur vulputate arcu quis diam imperdiet, sed congue orci posuere. Proin euismod, dui vel viverra soll');
INSERT INTO `products`.`description` (`desc`) VALUES ('gue. Ut vel erat quis dui tristique placerat vitae vel arcu. Donec metus risus, consectetur a volutpat quis, euismod vel massa.');

INSERT INTO `products`.`name` (`name`) VALUES ('Pr1');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr2');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr3');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr4');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr5');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr6');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr7');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr8');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr9');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr10');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr11');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr12');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr13');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr14');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr15');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr16');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr17');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr18');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr19');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr20');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr21');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr22');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr23');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr24');
INSERT INTO `products`.`name` (`name`) VALUES ('Pr25');

INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('1', '1');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('2', '2');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('3', '3');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('4', '4');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('5', '5');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('6', '6');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('7', '7');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('8', '8');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('9', '9');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('10', '10');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('11', '11');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('12', '12');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('13', '13');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('14', '14');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('15', '15');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('16', '16');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('17', '17');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('18', '18');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('19', '19');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('20', '20');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('21', '21');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('22', '22');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('23', '23');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('24', '24');
INSERT INTO `products`.`products` (`name_id`, `desc_id`) VALUES ('25', '25');

UPDATE `products`.`products` SET `id` = '101' WHERE (`id` = '1');
UPDATE `products`.`products` SET `id` = '102' WHERE (`id` = '2');
UPDATE `products`.`products` SET `id` = '30' WHERE (`id` = '3');
UPDATE `products`.`products` SET `id` = '40' WHERE (`id` = '4');
UPDATE `products`.`products` SET `id` = '50' WHERE (`id` = '5');
UPDATE `products`.`products` SET `id` = '60' WHERE (`id` = '6');
UPDATE `products`.`products` SET `id` = '70' WHERE (`id` = '7');
UPDATE `products`.`products` SET `id` = '80' WHERE (`id` = '8');
UPDATE `products`.`products` SET `id` = '90' WHERE (`id` = '9');
UPDATE `products`.`products` SET `id` = '100' WHERE (`id` = '10');
UPDATE `products`.`products` SET `id` = '110' WHERE (`id` = '11');
UPDATE `products`.`products` SET `id` = '120' WHERE (`id` = '12');
UPDATE `products`.`products` SET `id` = '130' WHERE (`id` = '13');
UPDATE `products`.`products` SET `id` = '140' WHERE (`id` = '14');
UPDATE `products`.`products` SET `id` = '150' WHERE (`id` = '15');
UPDATE `products`.`products` SET `id` = '160' WHERE (`id` = '16');
UPDATE `products`.`products` SET `id` = '170' WHERE (`id` = '17');
UPDATE `products`.`products` SET `id` = '180' WHERE (`id` = '18');
UPDATE `products`.`products` SET `id` = '190' WHERE (`id` = '19');
UPDATE `products`.`products` SET `id` = '200' WHERE (`id` = '20');
UPDATE `products`.`products` SET `id` = '210' WHERE (`id` = '21');
UPDATE `products`.`products` SET `id` = '220' WHERE (`id` = '22');
UPDATE `products`.`products` SET `id` = '230' WHERE (`id` = '23');
UPDATE `products`.`products` SET `id` = '240' WHERE (`id` = '24');
UPDATE `products`.`products` SET `id` = '250' WHERE (`id` = '25');

ALTER TABLE `products`.`products` 
ADD INDEX `name_idx` (`name_id` ASC) VISIBLE,
ADD INDEX `fk_desc_idx` (`desc_id` ASC) VISIBLE;
;
ALTER TABLE `products`.`products` 
ADD CONSTRAINT `fk_name`
  FOREIGN KEY (`name_id`)
  REFERENCES `products`.`name` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_desc`
  FOREIGN KEY (`desc_id`)
  REFERENCES `products`.`description` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
ALTER TABLE `products`.`products` 
DROP FOREIGN KEY `fk_desc`,
DROP FOREIGN KEY `fk_name`;
ALTER TABLE `products`.`products` 
ADD CONSTRAINT `fk_desc`
  FOREIGN KEY (`desc_id`)
  REFERENCES `products`.`description` (`id`)
  ON DELETE CASCADE,
ADD CONSTRAINT `fk_name`
  FOREIGN KEY (`name_id`)
  REFERENCES `products`.`name` (`id`)
  ON DELETE CASCADE;