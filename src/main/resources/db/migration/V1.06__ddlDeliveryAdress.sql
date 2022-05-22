DROP TABLE IF EXISTS `shop_db`.`delivery_addresses`;

CREATE TABLE `shop_db`.`delivery_addresses`
(
    `id`      INT         NOT NULL AUTO_INCREMENT,
    `user_id` INT         NOT NULL,
    `address` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`),
    INDEX     `delivery_addresses_user_id_idx` (`user_id` ASC) VISIBLE,
    CONSTRAINT `delivery_addresses_user_id`
        FOREIGN KEY (`user_id`)
            REFERENCES `shop_db`.`users` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);