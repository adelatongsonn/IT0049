CREATE DATABASE IF NOT EXISTS `it0049_pos`
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE `it0049_pos`;

CREATE TABLE IF NOT EXISTS `customers` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `full_name` VARCHAR(100) NOT NULL,
    `email` VARCHAR(150) NOT NULL,
    `phone` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `customers_email_unique` (`email`)
);

CREATE TABLE IF NOT EXISTS `users` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(50) NOT NULL,
    `full_name` VARCHAR(100) NOT NULL,
    `role` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `users_username_unique` (`username`)
);

INSERT INTO `customers` (`id`, `full_name`, `email`, `phone`) VALUES
    (1, 'Juan Dela Cruz', 'juan@example.com', '09171234567'),
    (2, 'Maria Santos', 'maria@example.com', '09181234567'),
    (3, 'Paolo Reyes', 'paolo@example.com', '09191234567'),
    (4, 'Angela Garcia', 'angela@example.com', '09201234567'),
    (5, 'Carlo Mendoza', 'carlo@example.com', '09211234567')
ON DUPLICATE KEY UPDATE
    `full_name` = VALUES(`full_name`),
    `email` = VALUES(`email`),
    `phone` = VALUES(`phone`);

INSERT INTO `users` (`id`, `username`, `full_name`, `role`) VALUES
    (1, 'admin01', 'Andrea Lopez', 'Administrator'),
    (2, 'cashier01', 'Mark Villanueva', 'Cashier'),
    (3, 'cashier02', 'Ella Ramos', 'Cashier'),
    (4, 'staff01', 'Joshua Flores', 'Staff'),
    (5, 'manager01', 'Nicole Bautista', 'Manager')
ON DUPLICATE KEY UPDATE
    `username` = VALUES(`username`),
    `full_name` = VALUES(`full_name`),
    `role` = VALUES(`role`);
