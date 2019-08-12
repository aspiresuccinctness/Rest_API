-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2019 at 05:28 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Technology', '2019-04-16 23:10:34'),
(2, 'Gaming', '2019-04-16 23:10:34'),
(3, 'Auto', '2019-04-16 23:10:34'),
(4, 'Entertainment', '2019-04-16 23:10:34'),
(5, 'Books', '2019-04-16 23:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `support` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `description`, `support`, `created_at`) VALUES
(1, 1, 'InShorts', 'Inshorts - News in 60 words is a mobile app for Android and iOS devices presenting you the latest and best national and international news ', 'Android & IOS', '2019-04-16 23:10:35'),
(2, 2, 'Cargo-Bot', 'Cargo-Bot is a puzzle game app for iOS that challenges tour brain while helps you learning programming concepts.', 'IOS', '2019-04-16 23:10:35'),
(3, 1, 'Find My iPhone', 'Find My iPhone is a device-tracking application for iOS devices is to find it and protect your data. ', 'IOS', '2019-04-16 23:10:35'),
(4, 4, 'Jango Radio', 'Jango Radio is kind of a wildcard in the free music apps space. It has a variety of music from both big names and independent artists alike. Unlike most, this service allows independent artists to pay for plays, meaning that you may hears a song that an artist paid to hear. ', 'Android', '2019-04-16 23:10:35'),
(5, 4, 'Youtube', 'YouTube is probably the world\'s most popular free music app. You can find virtually anything you\'ve ever heard of. Every band ever has a presence on YouTube. ', 'Android & IOS', '2019-04-16 23:10:35'),
(6, 1, 'Restore Contacts', 'Restore Contacts is an Android app that allows you to recover lost contacts from your device.', 'Android', '2019-04-16 23:10:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
