DROP TABLE IF EXISTS `shop_db`.`orders_item`;

CREATE TABLE `shop_db`.`orders_item`
(
    `id`          INT    NOT NULL AUTO_INCREMENT,
    `quantity`    INT    NOT NULL,
    `item_price`  DOUBLE NOT NULL,
    `total_price` DOUBLE NOT NULL,
    `product_id`  INT    NOT NULL,
    `order_id`    INT    NOT NULL,
    PRIMARY KEY (`id`),
    INDEX         `orders_item_product_id_idx` (`product_id` ASC) VISIBLE,
    INDEX         `orders_item_orders_id_idx` (`order_id` ASC) VISIBLE,
    CONSTRAINT `orders_item_product_id`
        FOREIGN KEY (`product_id`)
            REFERENCES `shop_db`.`products` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);