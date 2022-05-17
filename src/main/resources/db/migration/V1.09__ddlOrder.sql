DROP TABLE IF EXISTS `shop_db`.`order`;

CREATE TABLE `shop_db`.`order`
(
    `id`                  INT         NOT NULL AUTO_INCREMENT,
    `user_id`             INT         NOT NULL,
    `orderItem_id`        INT         NOT NULL,
    `orderStatus_id`      INT         NOT NULL,
    `price`               DOUBLE      NOT NULL,
    `delivery_price`      DOUBLE      NOT NULL,
    `delivery_address_id` INT         NOT NULL,
    `phoneNumber`         VARCHAR(45) NOT NULL,
    `delivery_date`       DATETIME    NOT NULL,
    `create_at`           DATETIME    NOT NULL,
    `update_at`           DATETIME NULL,
    PRIMARY KEY (`id`),
    INDEX                 `order_user_id_idx` (`user_id` ASC) VISIBLE,
    INDEX                 `order_orderItem_id_idx` (`orderItem_id` ASC) VISIBLE,
    INDEX                 `order_orderStatus_id_idx` (`orderStatus_id` ASC) VISIBLE,
    INDEX                 `order_delivery_address_id_idx` (`delivery_address_id` ASC) VISIBLE,
    CONSTRAINT `order_user_id`
        FOREIGN KEY (`user_id`)
            REFERENCES `shop_db`.`user` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
    CONSTRAINT `order_orderItem_id`
        FOREIGN KEY (`orderItem_id`)
            REFERENCES `shop_db`.`orderItem` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
    CONSTRAINT `order_orderStatus_id`
        FOREIGN KEY (`orderStatus_id`)
            REFERENCES `shop_db`.`orderStatus` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
    CONSTRAINT `order_delivery_address_id`
        FOREIGN KEY (`delivery_address_id`)
            REFERENCES `shop_db`.`deliveryAddress` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);