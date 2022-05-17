DROP TABLE IF EXISTS `shop_db`.`productImage`;

CREATE TABLE `shop_db`.`productImage`
(
    `id`         INT NOT NULL AUTO_INCREMENT,
    `product_id` INT NOT NULL,
    `path`       VARCHAR(45) NULL,
    PRIMARY KEY (`id`),
    INDEX        `productImage_product_id_idx` (`product_id` ASC) VISIBLE,
    CONSTRAINT `productImage_product_id`
        FOREIGN KEY (`product_id`)
            REFERENCES `shop_db`.`product` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);