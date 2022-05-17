DROP TABLE IF EXISTS `shop_db`.`category`;

CREATE TABLE `shop_db`.`category`
(
    `id`          INT         NOT NULL AUTO_INCREMENT,
    `title`       VARCHAR(45) NOT NULL,
    `description` VARCHAR(45) NULL,
    PRIMARY KEY (`id`)
);