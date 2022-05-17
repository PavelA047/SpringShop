ALTER TABLE `shop_db`.`orderitem`
    ADD INDEX `orderItem_order_id_idx` (`order_id` ASC) VISIBLE,
    ADD CONSTRAINT `orderItem_order_id`
        FOREIGN KEY (`order_id`)
            REFERENCES `shop_db`.`order` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;