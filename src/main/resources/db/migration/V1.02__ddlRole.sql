DROP TABLE IF EXISTS `shop_db`.`roles`;

CREATE TABLE `shop_db`.`roles`
(
    `id`   INT         NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
);