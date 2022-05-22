DROP TABLE IF EXISTS `shop_db`.`orders_statuses`;

CREATE TABLE `shop_db`.`orders_statuses`
(
    `id`    INT         NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
);