DROP TABLE IF EXISTS `shop_db`.`deliveryAddress`;

CREATE TABLE `shop_db`.`deliveryAddress`
(
    `id`      INT         NOT NULL AUTO_INCREMENT,
    `user_id` INT         NOT NULL,
    `address` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`),
    INDEX     `deliveryAddress_user_id_idx` (`user_id` ASC) VISIBLE,
    CONSTRAINT `deliveryAddress_user_id`
        FOREIGN KEY (`user_id`)
            REFERENCES `shop_db`.`user` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);