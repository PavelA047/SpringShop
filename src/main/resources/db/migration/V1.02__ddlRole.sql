DROP TABLE IF EXISTS `shop_db`.`role`;

CREATE TABLE `shop_db`.`role`
(
    `id`   INT         NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
);