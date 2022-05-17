DROP TABLE IF EXISTS `shop_db`.`product`;

CREATE TABLE `shop_db`.`product`
(
    `id`               INT         NOT NULL AUTO_INCREMENT,
    `category_id`      INT         NOT NULL,
    `vendorCode`       VARCHAR(45) NOT NULL,
    `productImage`     INT NULL,
    `title`            VARCHAR(45) NOT NULL,
    `shortDescription` VARCHAR(45) NULL,
    `fullDescription`  VARCHAR(45) NULL,
    `price`            DOUBLE      NOT NULL,
    `createAt`         DATETIME NULL,
    `updateAt`         DATETIME NULL,
    PRIMARY KEY (`id`),
    INDEX              `product_category_id_idx` (`category_id` ASC) VISIBLE,
    CONSTRAINT `product_category_id`
        FOREIGN KEY (`category_id`)
            REFERENCES `shop_db`.`category` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);