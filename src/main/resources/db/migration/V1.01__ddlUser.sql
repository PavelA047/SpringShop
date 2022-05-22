DROP TABLE IF EXISTS `shop_db`.`users`;

CREATE TABLE `shop_db`.`users`
(
    `id`        INT         NOT NULL AUTO_INCREMENT,
    `username`  VARCHAR(45) NOT NULL,
    `password`  VARCHAR(90) NOT NULL,
    `first_name` VARCHAR(45) NOT NULL,
    `last_name`  VARCHAR(45) NOT NULL,
    `email`     VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
);