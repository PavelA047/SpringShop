DROP TABLE IF EXISTS `shop_db`.`product`;

CREATE TABLE `shop_db`.`products`
(
    `id`               INT         NOT NULL AUTO_INCREMENT,
    `category_id`      INT         NOT NULL,
    `vendor_code`       VARCHAR(45) NOT NULL,
    `title`            VARCHAR(45) NOT NULL,
    `short_description` VARCHAR(45) NULL,
    `full_description`  VARCHAR(45) NULL,
    `price`            DOUBLE      NOT NULL,
    `create_at`         DATETIME NULL,
    `update_at`         DATETIME NULL,
    PRIMARY KEY (`id`),
    INDEX              `products_category_id_idx` (`category_id` ASC) VISIBLE,
    CONSTRAINT `products_category_id`
        FOREIGN KEY (`category_id`)
            REFERENCES `shop_db`.`categories` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);