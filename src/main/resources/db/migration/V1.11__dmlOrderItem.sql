ALTER TABLE `shop_db`.`orders_item`
    ADD INDEX `orders_item_order_id_idx` (`order_id` ASC) VISIBLE,
    ADD CONSTRAINT `orders_item_order_id`
        FOREIGN KEY (`order_id`)
            REFERENCES `shop_db`.`orders` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE ;