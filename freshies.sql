-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2024 at 04:27 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freshies`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `contact_number` varchar(250) NOT NULL,
  `total_price` varchar(250) NOT NULL,
  `payment_method` varchar(250) NOT NULL,
  `items` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `contact_number`, `total_price`, `payment_method`, `items`) VALUES
(10, 'user1', 'anywhere', '0123456789', '2487', '', '[{\"name\":\"String Hoppers\",\"quantity\":\"1\"},{\"name\":\"Mutton Samosa\",\"quantity\":\"1\"},{\"name\":\"Chicken Burger\",\"quantity\":\"1\"},{\"name\":\"Sri Lankan Rice and Curry\",\"quantity\":\"1\"},{\"name\":\"Seafood Nasigoreng\",\"quantity\":\"1\"},{\"name\":\"Mixed Fried Rice\",\"qu'),
(11, 'user2', 'anywhere', '0112233445', '147', '', '[{\"name\":\"String Hoppers\",\"quantity\":\"1\"}]'),
(12, 'user3', 'any', '01111111', '147', '', '[{\"name\":\"String Hoppers\",\"quantity\":\"1\"}]'),
(13, 'a', 'a', 'a', '197', '', '[{\"name\":\"Sri Lankan Rice and Curry\",\"quantity\":\"1\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` varchar(50) NOT NULL,
  `meal_name` varchar(250) NOT NULL,
  `meal_type` varchar(50) NOT NULL,
  `meal_category` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `year` varchar(4) NOT NULL,
  `month` varchar(10) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `meal_name`, `meal_type`, `meal_category`, `quantity`, `year`, `month`, `price`) VALUES
('1707484408-1127718998', 'Mixed Fried Rice', 'nonVeg', 'dinner', 1, '2024', 'February', 750),
('1707484408-1178651800', 'Chicken Burger', 'nonVeg', 'breakfast', 1, '2024', 'February', 450),
('1707484408-1309975466', 'String Hoppers', 'veg', 'breakfast', 1, '2024', 'February', 150),
('1707484408-1579579568', 'Mutton Samosa', 'nonVeg', 'breakfast', 1, '2024', 'February', 60),
('1707484408-176257633', 'Chocolate Muffins', '', 'snacks', 1, '2024', 'February', 200),
('1707484408-569944215', 'Seafood Nasigoreng', 'nonVeg', 'lunch', 1, '2024', 'February', 680),
('1707484408-833605193', 'Sri Lankan Rice and Curry', 'veg', 'lunch', 1, '2024', 'February', 200),
('1707562448-496702827', 'String Hoppers', 'veg', 'breakfast', 1, '2024', 'January', 150),
('1707662290-1797936437', 'String Hoppers', 'veg', 'breakfast', 1, '2024', 'February', 150),
('1707663077-1225087526', 'Sri Lankan Rice and Curry', 'veg', 'breakfast', 1, '2024', 'February', 200);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'user@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
