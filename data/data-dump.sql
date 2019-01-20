-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jan 18, 2019 at 02:12 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kenzan`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `middleinitial` varchar(1) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `dateofemployment` date DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `firstname`, `middleinitial`, `lastname`, `dateofbirth`, `dateofemployment`, `status`) VALUES
(1, 'David', NULL, 'DeCastro', '1990-01-11', '2014-04-01', 'active'),
(2, 'Bud', NULL, 'Dupree', '1993-02-12', '2015-04-01', 'active'),
(3, 'Anthony', 'J', 'Chickillo', '1992-12-10', '2015-04-01', 'active'),
(4, 'Marcus', 'S', 'Gilbert', '1988-02-15', '2015-04-01', 'active'),
(5, 'Ben', 'T', 'Roethlisberger', '1982-03-02', '2003-04-01', 'active'),
(6, 'Ryan', 'L', 'Shazier', '1993-02-12', '1992-09-06', 'inactive'),
(7, 'JuJu', NULL, 'Smith-Schuster', '1996-11-22', '2016-04-01', 'active'),
(8, 'T.J.', NULL, 'Watt', '1994-02-12', '2016-04-01', 'active'),
(9, 'Vince', NULL, 'Williams', '1989-12-27', '2012-04-01', 'active'),
(10, 'Alejandro', NULL, 'Villanueva', '1988-09-22', '2014-04-01', 'active'),
(11, 'Stevan', 'P', 'Ridley', '1989-01-27', '2012-04-01', 'active'),
(12, 'Maurkice', NULL, 'Pouncey', '1989-07-24', '2009-04-01', 'active'),
(13, 'Cameron', NULL, 'Heyward', '1989-05-06', '2010-04-01', 'active'),
(14, 'Joe', NULL, 'Haden', '1989-04-14', '2009-04-01', 'active'),
(15, 'James', NULL, 'Conner', '1995-05-05', '2016-04-01', 'active'),
(16, 'Ramon', NULL, 'Foster', '1986-01-07', '2008-04-01', 'active'),
(17, 'Jesse', NULL, 'James', '1994-06-04', '2014-04-01', 'active'),
(18, 'Mike', NULL, 'Hilton', '1994-03-09', '2016-04-01', 'active'),
(19, 'Vance', NULL, 'McDonald', '1990-06-13', '2012-04-01', 'active'),
(20, 'Ryan', NULL, 'Switzer', '1994-11-14', '2016-04-01', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
