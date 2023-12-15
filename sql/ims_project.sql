-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 12:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ims_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(50) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `sale_price`, `date`) VALUES
(1, 'T-Shirt', 19, 99.99, '2023-09-01 00:00:00'),
(2, 'Jeans', 10, 149.99, '2023-09-10 00:00:00'),
(3, 'Sneakers', 20, 100.00, '2023-09-15 00:00:00'),
(4, 'Backpack', 5, 300.00, '2023-09-22 00:00:00'),
(5, 'Jacket', 8, 499.99, '2023-09-29 00:00:00'),
(6, 'Shoes', 22, 150.00, '2023-10-05 00:00:00'),
(7, 'Socks', 36, 69.99, '2023-10-12 00:00:00'),
(8, 'Watch', 9, 199.99, '2023-10-19 00:00:00'),
(9, 'Hat', 27, 89.99, '2023-10-25 00:00:00'),
(10, 'Sunglasses', 19, 120.00, '2023-10-30 00:00:00'),
(11, 'Sweatshirt', 16, 169.99, '2023-11-02 00:00:00'),
(12, 'Sweatpants', 23, 310.00, '2023-11-09 00:00:00'),
(13, 'Gloves', 31, 50.00, '2023-11-15 00:00:00'),
(14, 'Scarf', 14, 49.99, '2023-11-22 00:00:00'),
(15, 'Winter Hat', 20, 130.00, '2023-11-29 00:00:00'),
(16, 'Flannel Shirt', 9, 80.00, '2023-12-01 00:00:00'),
(17, 'Thermal Underwear', 27, 39.99, '2023-12-07 00:00:00'),
(18, 'Slippers', 28, 89.99, '2023-12-09 00:00:00'),
(19, 'Pajamas', 27, 99.99, '2023-12-11 00:00:00'),
(20, 'Bathrobe', 12, 139.99, '2023-12-11 00:00:00'),
(41, 'Nike Shoes', 20, 1500.00, '2023-12-11 09:22:25'),
(42, 'Addidas Shoes', 19, 1599.00, '2023-12-11 13:31:24'),
(43, 'Fila Shoes', 21, 1499.99, '2023-12-11 13:33:11'),
(50, 'Prancis', 3, 150.00, '2023-12-12 07:54:07'),
(52, 'Pan ni pare lami kaayu!!! -sure ba? -joke ra bitaw:)', 141, 5.00, '2023-12-12 11:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `qty`, `price`, `date`) VALUES
(1, 1, 2, 1000.00, '2023-09-05'),
(2, 3, 3, 390.00, '2023-10-04'),
(3, 10, 6, 540.00, '2023-09-06'),
(4, 6, 2, 250.00, '2023-10-07'),
(5, 12, 5, 500.00, '2023-09-08'),
(6, 13, 21, 1260.00, '2023-10-03'),
(7, 7, 5, 1000.00, '2023-09-08'),
(8, 9, 2, 160.00, '2023-10-10'),
(9, 2, 5, 749.95, '2023-12-10'),
(10, 19, 6, 599.94, '2023-12-10'),
(11, 1, 9, 899.91, '2023-12-10'),
(12, 5, 4, 1999.96, '2023-12-10'),
(13, 10, 11, 1320.00, '2023-12-10'),
(14, 17, 13, 519.87, '2023-12-10'),
(15, 41, 11, 16500.00, '2023-12-11'),
(16, 42, 11, 17589.00, '2023-12-11'),
(17, 43, 11, 16499.89, '2023-12-11'),
(18, 42, 23, 36777.00, '2023-12-11'),
(19, 41, 15, 22500.00, '2023-12-11'),
(20, 10, 5, 600.00, '2023-12-11'),
(22, 42, 10, 15990.00, '2023-12-12'),
(23, 43, 9, 13499.91, '2023-12-12'),
(24, 41, 4, 6000.00, '2023-12-12'),
(25, 4, 11, 3300.00, '2023-12-12'),
(26, 42, 2, 3198.00, '2023-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`) VALUES
(1, 'Janry Lego', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1),
(2, 'Althea Fernandez', 'user', '12dea96fec20593566ab75692c9949596833adc9', 2),
(3, 'Janice Marquez', 'Janis', '12dea96fec20593566ab75692c9949596833adc9', 2),
(4, 'Nyana Go', 'Nanana', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2),
(5, 'Lalai Garcia', 'Galay', '286b9b7b50ab89e3397b4df540021b531f457f7f', 2),
(6, 'Mark Garcia', 'user', '29c89232e4100ab01fc4587a5055223e932169a8', 2),
(7, 'Marvin Tenebruso', 'Angkol_Bayot', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2),
(8, 'Aldrin Taburada', 'Dokyu', '72a62f9dae9b8ab2ff9280738ea4234a679c45a2', 2),
(14, 'Marlon', 'Bayot bayot150', '75d73705929c6427bdc37ca9d6d295ab93e3326c', 1),
(15, 'Pare', 'Parekoy', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`) VALUES
(1, 'Admin', 1),
(2, 'User', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
