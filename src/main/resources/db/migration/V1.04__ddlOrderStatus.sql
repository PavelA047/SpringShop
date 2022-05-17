DROP TABLE IF EXISTS `shop_db`.`orderStatus`;

CREATE TABLE `shop_db`.`orderStatus`
(
    `id`    INT         NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
);