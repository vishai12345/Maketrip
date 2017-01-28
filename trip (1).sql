-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2017 at 02:36 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'silver', 1, '2017-01-16 12:29:00', '0000-00-00 00:00:00', NULL),
(2, 'gold', 1, '2017-01-16 12:29:00', '0000-00-00 00:00:00', NULL),
(3, 'platinum', 1, '2017-01-16 12:29:20', '0000-00-00 00:00:00', NULL),
(4, 'diamand', 1, '2017-01-16 12:29:20', '0000-00-00 00:00:00', NULL),
(5, 'haven', 1, '2017-01-16 12:29:34', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` int(11) NOT NULL,
  `from_loc` varchar(255) NOT NULL,
  `medium_id` int(11) NOT NULL,
  `airports` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `destination_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `from_loc`, `medium_id`, `airports`, `destination`, `category_id`, `description`, `status`, `destination_type`, `created_at`, `updated_at`, `remember_token`) VALUES
(3, 'singapur', 2, 'Kuala Lumpur, Malaysia (KUL)', 'Kuala Lumpur, Malaysia (KUL)', 1, 'Kuala Lumpur’s vibrant urban skyline is dominated by a blend of towering glass-and-steel-clad skyscrapers among a historical patchwork of lavish colonial buildings: there is the rich cultural heritage often overlooked beneath the iconic 88-storey Petronas Twin Towers. Whether shopping in extravagant megamall,s or exploring local handicraft gems in the Central Market or Chinatown, the spendaholic is well covered, as will foodies amongst the Malayan exotic culinary delights. A city that never sleeps, Kuala Lumpur is throbs day and night.', 1, '{"1":0,"2":1,"3":1,"4":1}', '2017-01-18 10:39:56', '0000-00-00 00:00:00', ''),
(4, 'singapore', 1, 'Bali, Indonesia', 'Bali, Indonesia', 3, 'Picturesque Bali, or The Island of the Gods, boasts everything from iconic landmark hillside temples, to World Heritage-listed terrace rice fields, through countless pristine beaches ideal for diving and surfing. Throw in its bustling cultural centres, Bali has something offer to any traveler. The island gets under your skin and will draw you to return time and again.', 1, '{"1":0,"2":1,"3":0,"4":1}', '2017-01-18 09:00:17', '0000-00-00 00:00:00', ''),
(5, 'singapore', 3, 'Hyderabad, India', 'Hyderabad, India', 2, 'While a first visit to Hyderabad might evoke a mix of emotions spurred by chaotic traffic and teeming crowds, a view of the city’s lavish mosques and palaces against the modern skyline of the local Silicon Valley of ‘Cyberabad’ is rather impressive. A place of contrasts, it has deep historical roots and vibrant festival traditions manifested in the background of abject poverty and glitzy malls', 1, '{"1":1,"2":1,"3":1,"4":1}', '2017-01-18 09:00:37', '0000-00-00 00:00:00', ''),
(6, 'Singapore', 2, 'Iloilo City, Philippines', 'Iloilo City, Philippines', 4, 'An intriguing city offering a patchwork of stunning architecture, elaborate festivities, delectable food and cosy accommodation, it delivers much of anything a traveller would crave for. A brief trip to the Guimaras or the Gigantes Island offers the perfect retreat.', 1, '{"1":0,"2":0,"3":0,"4":1}', '2017-01-18 09:00:47', '0000-00-00 00:00:00', ''),
(7, 'Singapore', 3, 'Sanya, China', 'Sanya, China', 4, 'The 40 km-long sandy coastline of S?nyà draws both domestic and international, tourists with its high quality services and beautiful waterfront sea views. There are three separate districts: S?nyà Bay, with a lively commercial spirit, for mostly to local visitors; Dàd?ngh?i Bay, drawing the majority of foreign travellers; and Yàlóng Bay, with its premium beaches and imposing international chain hotels.', 1, '{"1":1,"2":1,"3":1,"4":0}', '2017-01-18 09:01:02', '0000-00-00 00:00:00', ''),
(8, 'Singapore', 1, 'Kuala Terengganu', 'Kuala Terengganu', 2, 'Kuala Terengganu charms in spite of the number new skyscrapers piercing the sky. There’s a boardwalk, good beaches, historical kampong-style houses, and a wonderful Chinatown. With good locally sourced seafood, KT is worth a day or two.', 1, '{"1":1,"2":0,"3":0,"4":0}', '2017-01-18 09:01:06', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `destination_type`
--

CREATE TABLE `destination_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destination_type`
--

INSERT INTO `destination_type` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'metropolis', '', 1, '2017-01-16 12:35:23', '0000-00-00 00:00:00', ''),
(2, 'Beach', '', 1, '2017-01-16 12:35:23', '0000-00-00 00:00:00', ''),
(3, 'Nature', '', 1, '2017-01-16 12:35:47', '0000-00-00 00:00:00', ''),
(4, 'Culture', '', 1, '2017-01-16 12:35:47', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `medium`
--

CREATE TABLE `medium` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medium`
--

INSERT INTO `medium` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'plane', 'fa fa-plane', 1, '2017-01-17 09:24:30', '0000-00-00 00:00:00', ''),
(2, 'train', 'fa fa-train', 1, '2017-01-17 09:26:35', '0000-00-00 00:00:00', ''),
(3, 'car', 'fa fa-car', 1, '2017-01-17 09:26:50', '0000-00-00 00:00:00', ''),
(4, 'bus', 'fa fa-bus', 1, '2017-01-17 09:27:26', '0000-00-00 00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medium_id_2` (`medium_id`),
  ADD KEY `medium_id_3` (`medium_id`),
  ADD KEY `medium_id_4` (`medium_id`),
  ADD KEY `category_id_2` (`category_id`);

--
-- Indexes for table `destination_type`
--
ALTER TABLE `destination_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medium`
--
ALTER TABLE `medium`
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
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `destination_type`
--
ALTER TABLE `destination_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `medium`
--
ALTER TABLE `medium`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `destinations`
--
ALTER TABLE `destinations`
  ADD CONSTRAINT `category relation` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `medium relation` FOREIGN KEY (`medium_id`) REFERENCES `medium` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
