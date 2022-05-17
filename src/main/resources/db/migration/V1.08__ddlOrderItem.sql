DROP TABLE IF EXISTS `shop_db`.`orderItem`;

CREATE TABLE `shop_db`.`orderItem`
(
    `id`          INT    NOT NULL AUTO_INCREMENT,
    `quantity`    INT    NOT NULL,
    `item_price`  DOUBLE NOT NULL,
    `total_price` DOUBLE NOT NULL,
    `product_id`  INT    NOT NULL,
    `order_id`    INT    NOT NULL,
    PRIMARY KEY (`id`),
    INDEX         `orderItem_product_id_idx` (`product_id` ASC) VISIBLE,
    CONSTRAINT `orderItem_product_id`
        FOREIGN KEY (`product_id`)
            REFERENCES `shop_db`.`product` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);