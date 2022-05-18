DROP TABLE IF EXISTS `shop_db`.`products_images`;

CREATE TABLE `shop_db`.`products_images`
(
    `id`         INT NOT NULL AUTO_INCREMENT,
    `product_id` INT NOT NULL,
    `path`       VARCHAR(45) NULL,
    PRIMARY KEY (`id`),
    INDEX        `products_images_product_id_idx` (`product_id` ASC) VISIBLE,
    CONSTRAINT `products_images_product_id`
        FOREIGN KEY (`product_id`)
            REFERENCES `shop_db`.`products` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);