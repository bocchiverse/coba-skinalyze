-- -- phpMyAdmin SQL Dump
-- -- version 5.2.1
-- -- https://www.phpmyadmin.net/
-- --
-- -- Host: 127.0.0.1
-- -- Generation Time: Dec 02, 2024 at 10:30 AM
-- -- Server version: 10.4.19-MariaDB
-- -- PHP Version: 8.0.7

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- START TRANSACTION;
-- SET time_zone = "+00:00";


-- /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
-- /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
-- /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
-- /*!40101 SET NAMES utf8mb4 */;

-- --
-- -- Database: `db_bangkit_skin`
-- --

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `products`
-- --

-- CREATE TABLE `products` (
--   `id` int(11) NOT NULL,
--   `id_products_type` int(11) NOT NULL,
--   `name` text NOT NULL,
--   `gejala` text NOT NULL,
--   `descriptions` text NOT NULL,
--   `link_products` text NOT NULL,
--   `created_at` datetime NOT NULL,
--   `updated_at` datetime NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --
-- -- Dumping data for table `products`
-- --

-- INSERT INTO `products` (`id`, `id_products_type`, `name`, `gejala`, `descriptions`, `link_products`, `created_at`, `updated_at`) VALUES
-- (1, 1, 'SK-II Facial Clenaser', '', '', '', '2024-12-02 09:57:15', '2024-12-02 09:57:15'),
-- (2, 1, 'Cetaphil', '', '', '', '2024-12-02 09:57:15', '2024-12-02 09:57:15'),
-- (3, 3, 'Skintific', '', '', '', '2024-12-02 09:57:51', '2024-12-02 09:57:51');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `products_type`
-- --

-- CREATE TABLE `products_type` (
--   `id` int(11) NOT NULL,
--   `name` text NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --
-- -- Dumping data for table `products_type`
-- --

-- INSERT INTO `products_type` (`id`, `name`) VALUES
-- (1, 'Acne'),
-- (2, 'Oily Skin'),
-- (3, 'Dry Skin');

-- --
-- -- Indexes for dumped tables
-- --

-- --
-- -- Indexes for table `products`
-- --
-- ALTER TABLE `products`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `id_products_type` (`id_products_type`);

-- --
-- -- Indexes for table `products_type`
-- --
-- ALTER TABLE `products_type`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- AUTO_INCREMENT for dumped tables
-- --

-- --
-- -- AUTO_INCREMENT for table `products`
-- --
-- ALTER TABLE `products`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

-- --
-- -- AUTO_INCREMENT for table `products_type`
-- --
-- ALTER TABLE `products_type`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

-- --
-- -- Constraints for dumped tables
-- --

-- --
-- -- Constraints for table `products`
-- --
-- ALTER TABLE `products`
--   ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_products_type`) REFERENCES `products_type` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
-- COMMIT;

-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
