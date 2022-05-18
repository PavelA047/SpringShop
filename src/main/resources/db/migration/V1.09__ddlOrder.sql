DROP TABLE IF EXISTS `shop_db`.`orders`;

CREATE TABLE `shop_db`.`orders`
(
    `id`                  INT         NOT NULL AUTO_INCREMENT,
    `user_id`             INT         NOT NULL,
    `status_id`      INT         NOT NULL,
    `price`               DOUBLE      NOT NULL,
    `delivery_price`      DOUBLE      NOT NULL,
    `delivery_address_id` INT         NOT NULL,
    `phone_number`         VARCHAR(45) NOT NULL,
    `delivery_date`       DATETIME    NOT NULL,
    `create_at`           DATETIME    NOT NULL,
    `update_at`           DATETIME NULL,
    PRIMARY KEY (`id`),
    INDEX                 `orders_user_id_idx` (`user_id` ASC) VISIBLE,
    INDEX                 `orders_statuses_id_idx` (`status_id` ASC) VISIBLE,
    INDEX                 `orders_delivery_address_id_idx` (`delivery_address_id` ASC) VISIBLE,
    CONSTRAINT `orders_user_id`
        FOREIGN KEY (`user_id`)
            REFERENCES `shop_db`.`users` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
    CONSTRAINT `orders_status_id`
        FOREIGN KEY (`status_id`)
            REFERENCES `shop_db`.`orders_statuses` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
    CONSTRAINT `orders_delivery_address_id`
        FOREIGN KEY (`delivery_address_id`)
            REFERENCES `shop_db`.`delivery_addresses` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);