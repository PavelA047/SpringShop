DROP TABLE IF EXISTS `shop_db`.`users_roles`;

CREATE TABLE `shop_db`.`users_roles`
(
    `user_id` INT NOT NULL,
    `role_id` INT NOT NULL,
    INDEX     `users_roles_user_id_idx` (`user_id` ASC) VISIBLE,
    INDEX     `users_roles_role_id_idx` (`role_id` ASC) VISIBLE,
    CONSTRAINT `users_roles_user_id`
        FOREIGN KEY (`user_id`)
            REFERENCES `shop_db`.`user` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
    CONSTRAINT `users_roles_role_id`
        FOREIGN KEY (`role_id`)
            REFERENCES `shop_db`.`role` (`id`)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);