-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2018 at 11:10 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `discription` text NOT NULL,
  `filename` varchar(255) NOT NULL,
  `alternate_text` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `caption`, `discription`, `filename`, `alternate_text`, `type`, `size`) VALUES
(8, 'Title 1', 'New Caption', 'This is a photo', 'Quebec_citadelles_200x200.png', 'New Alternate', 'image/png', 9932),
(9, '', '', '', 'rimac-1-980x620.png', '', 'image/png', 81486),
(10, '', '', '', 'rimac-2.png', '', 'image/png', 51596),
(11, '', '', '', '2-0125-Wheel-Diagram-PGo-4_3.png', '', 'image/png', 24523),
(12, '', '', '', '016 Comment Count Link  SOLUTION.mp4_snapshot_00.00_[2018.09.08_23.24.34].jpg', '', 'image/jpeg', 98125),
(15, '', '', '', 'images-1.jpg', '', 'image/jpeg', 28947),
(16, '', '', '', 'images-44.jpg', '', 'image/jpeg', 29486),
(18, '', '', '', 'images-50 copy.jpg', '', 'image/jpeg', 21652),
(19, '', '', '', 'images-50.jpg', '', 'image/jpeg', 21652),
(20, '', '', '', 'images_2.jpg', '', 'image/jpeg', 18578),
(21, '', '', '', 'image-1.jpg', '', 'image/jpeg', 328747),
(22, '', '', '', 'images-1 copy.jpg', '', 'image/jpeg', 28947),
(23, '', '', '', 'images-2 copy.jpg', '', 'image/jpeg', 18578),
(24, '', '', '', 'images-3 copy.jpg', '', 'image/jpeg', 18096),
(25, '', '', '', 'images-3.jpg', '', 'image/jpeg', 18096),
(26, '', '', '', 'images-4.jpg', '', 'image/jpeg', 23270),
(27, '', '', '', 'images-5 copy.jpg', '', 'image/jpeg', 33192),
(28, '', '', '', 'images-5.jpg', '', 'image/jpeg', 33192),
(29, '', '', '', 'images-6 copy.jpg', '', 'image/jpeg', 21886),
(30, '', '', '', 'images-6.jpg', '', 'image/jpeg', 21886),
(31, '', '', '', 'images-7 copy.jpg', '', 'image/jpeg', 24140),
(32, '', '', '', 'images-7.jpg', '', 'image/jpeg', 24140),
(33, '', '', '', 'images-8 copy.jpg', '', 'image/jpeg', 20810),
(34, '', '', '', 'images-8.jpg', '', 'image/jpeg', 20810),
(35, '', '', '', 'images-9 copy.jpg', '', 'image/jpeg', 21108),
(36, '', '', '', 'images-9.jpg', '', 'image/jpeg', 21108),
(37, '', '', '', 'images-10 copy.jpg', '', 'image/jpeg', 20401),
(38, '', '', '', 'images-10.jpg', '', 'image/jpeg', 20401),
(39, '', '', '', 'images-11 copy.jpg', '', 'image/jpeg', 27916),
(40, '', '', '', 'images-11.jpg', '', 'image/jpeg', 27916),
(41, '', '', '', 'images-12 copy.jpg', '', 'image/jpeg', 18540),
(42, '', '', '', 'images-12.jpg', '', 'image/jpeg', 18540),
(43, '', '', '', 'images-13 copy.jpg', '', 'image/jpeg', 22082),
(44, '', '', '', 'images-14 copy.jpg', '', 'image/jpeg', 21992),
(45, '', '', '', 'images-13.jpg', '', 'image/jpeg', 22082),
(46, '', '', '', 'images-14.jpg', '', 'image/jpeg', 21992),
(47, '', '', '', 'images-15 copy.jpg', '', 'image/jpeg', 28466),
(48, '', '', '', 'images-16 copy.jpg', '', 'image/jpeg', 21133),
(49, '', '', '', 'images-16.jpg', '', 'image/jpeg', 21133),
(50, '', '', '', 'images-17 copy.jpg', '', 'image/jpeg', 22792),
(51, '', '', '', 'images-17.jpg', '', 'image/jpeg', 22792),
(52, '', '', '', 'images-18 copy.jpg', '', 'image/jpeg', 27595),
(53, '', '', '', 'images-18.jpg', '', 'image/jpeg', 27595),
(54, '', '', '', 'images-19 copy.jpg', '', 'image/jpeg', 22792),
(55, '', '', '', 'images-19.jpg', '', 'image/jpeg', 22792),
(56, '', '', '', 'images-20 copy.jpg', '', 'image/jpeg', 22942),
(57, '', '', '', 'images-20.jpg', '', 'image/jpeg', 22942),
(58, '', '', '', 'images-21 copy.jpg', '', 'image/jpeg', 19957),
(59, '', '', '', 'images-21.jpg', '', 'image/jpeg', 19957),
(60, '', '', '', 'images-22 copy.jpg', '', 'image/jpeg', 21133),
(61, '', '', '', 'images-22.jpg', '', 'image/jpeg', 21133),
(62, '', '', '', 'images-23 copy.jpg', '', 'image/jpeg', 22792),
(63, '', '', '', 'images-23.jpg', '', 'image/jpeg', 22792),
(64, '', '', '', 'images-24 copy.jpg', '', 'image/jpeg', 29850),
(65, '', '', '', 'images-25 copy.jpg', '', 'image/jpeg', 19363),
(66, '', '', '', 'images-25.jpg', '', 'image/jpeg', 19363),
(67, '', '', '', 'images-26 copy.jpg', '', 'image/jpeg', 21802),
(68, '', '', '', 'images-26.jpg', '', 'image/jpeg', 21802),
(69, '', '', '', 'images-27 copy.jpg', '', 'image/jpeg', 17662),
(70, '', '', '', 'images-27.jpg', '', 'image/jpeg', 17662),
(71, '', '', '', 'images-28 copy.jpg', '', 'image/jpeg', 17662),
(72, '', '', '', 'images-28.jpg', '', 'image/jpeg', 17662),
(73, '', '', '', 'images-29 copy.jpg', '', 'image/jpeg', 25493),
(74, '', '', '', 'images-29.jpg', '', 'image/jpeg', 25493),
(75, '', '', '', 'images-30 copy.jpg', '', 'image/jpeg', 20257),
(76, '', '', '', 'images-30.jpg', '', 'image/jpeg', 20257),
(77, '', '', '', 'images-31 copy.jpg', '', 'image/jpeg', 20928),
(78, '', '', '', 'images-31.jpg', '', 'image/jpeg', 20928),
(79, '', '', '', 'images-32 copy.jpg', '', 'image/jpeg', 22772),
(80, '', '', '', 'images-32.jpg', '', 'image/jpeg', 22772),
(81, '', '', '', 'images-33 copy.jpg', '', 'image/jpeg', 16855),
(82, '', '', '', 'images-33.jpg', '', 'image/jpeg', 16855),
(83, '', '', '', 'images-34 copy.jpg', '', 'image/jpeg', 23587),
(84, '', '', '', 'images-34.jpg', '', 'image/jpeg', 23587),
(85, '', '', '', 'images-35 copy.jpg', '', 'image/jpeg', 23672),
(86, '', '', '', 'images-35.jpg', '', 'image/jpeg', 23672),
(88, '', '', '', 'images-36.jpg', '', 'image/jpeg', 21672),
(89, '', '', '', 'images-37 copy.jpg', '', 'image/jpeg', 20381);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `user_image`) VALUES
(12, 'rico', '123', 'Rico', 'Suawe', 'images-7.jpg'),
(15, 'asdaasdsd', 'qweqwe', 'qasdasd', 'afgqw', 'images-7.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_id` (`photo_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
