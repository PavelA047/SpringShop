DROP TABLE IF EXISTS `shop_db`.`user`;

CREATE TABLE `shop_db`.`user`
(
    `id`        INT         NOT NULL AUTO_INCREMENT,
    `userName`  VARCHAR(45) NOT NULL,
    `password`  VARCHAR(45) NOT NULL,
    `firstName` VARCHAR(45) NOT NULL,
    `lastName`  VARCHAR(45) NOT NULL,
    `email`     VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
);