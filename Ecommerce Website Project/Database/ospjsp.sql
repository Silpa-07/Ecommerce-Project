

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `email` varchar(100) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `mobileNumber` bigint(20) DEFAULT NULL,
  `orderDate` varchar(100) DEFAULT NULL,
  `deliveryDate` varchar(100) DEFAULT NULL,
  `paymentMethod` varchar(100) DEFAULT NULL,
  `transactionId` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`email`, `product_id`, `quantity`, `price`, `total`, `address`, `city`, `state`, `country`, `mobileNumber`, `orderDate`, `deliveryDate`, `paymentMethod`, `transactionId`, `status`) VALUES
('maneesha@gmail.com', 1, 5, 1000, 5000, 'thrissur', 'thrissur', 'kerala', 'India', 9988383891, '2021-01-19 10:52:18', '2021-01-26 10:52:18', 'Cash on delivery(COD)', '', 'Delivered'),
('vithu@gmail.com', 2, 2, 2000, 4000, 'thrissur', 'thrissur', '', 'India', 9988383891, '2021-01-19 10:52:18', '2021-01-26 10:52:18', 'Cash on delivery(COD)', '', 'Cancel'),
('meenu@gmail.com', 3, 3, 3000, 9000, 'thrissur', 'thrissur', 'kerala', 'India', 9988383891, '2021-01-19 10:52:18', '2021-01-26 10:52:18', 'Cash on delivery(COD)', '', 'Delivered'),
('rohan@gmail.com', 4, 4, 8000, 32000, 'thrissur', 'thrissur', 'kerala', 'India', 9988383891, '2021-01-19 10:52:18', '2021-01-26 10:52:18', 'Cash on delivery(COD)', '', 'Delivered'),
('abc@gmail.com', 1, 3, 1000, 3000, 'abc@gmail.com', 'thrissur', 'kerala', 'India', 9988383891, '2021-02-11 20:24:55', '2021-02-18 20:24:55', 'Cash on delivery(COD)', '', 'Cancel'),
('krishna@gmail.com', 4, 2, 8000, 16000, 'Chandigarh', 'thrissur', 'kerala', 'India', 9988383891, '2021-02-11 19:17:36', '2021-02-18 19:17:36', 'Cash on delivery(COD)', '', 'Delivered'),
('vinu@gmail.com', 1, 2, 1000, 2000, 'thrissur', 'thrissur', 'thrissu', 'India', 9876543210, '2021-01-21 19:32:30', '2021-01-28 19:32:30', 'Cash on delivery(COD)', '', 'Delivered'),
('sugu@gmail.com', 2, 1, 2000, 2000, 'thrissur', 'thrissur', 'chandigarh', 'India', 9876543210, '2021-01-21 19:32:30', '2021-01-28 19:32:30', 'Cash on delivery(COD)', '', 'Delivered'),
('athira@gmail.com', 3, 1, 3000, 3000,  'thrissur', 'thrissur', 'India', 9876543210, '2021-01-21 19:32:30', '2021-01-28 19:32:30', 'Cash on delivery(COD)', '', 'Delivered'),
('athira@gmail.com', 2, 4, 2000, 8000, 'thrissur', 'thrissur', 'kerala', 'India', 9988383891, '2021-02-11 19:17:36', '2021-02-18 19:17:36', 'Cash on delivery(COD)', '', 'Cancel'),
('vinu@gmail.com', 3, 3, 3000, 9000, 'thrissur', 'thrissur', 'kerala', 'India', 9988383891, '2021-02-11 19:17:36', '2021-02-18 19:17:36', 'Cash on delivery(COD)', '', 'Delivered'),
('maneesha@gmail.com', 2, 1, 2000, 2000, 'thrissur', 'thrissur', 'kerala', 'India', 9988383891, '2021-02-11 19:24:19', '2021-02-18 19:24:19', 'Cash on delivery(COD)', '', 'Cancel'),


-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `body` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `email`, `subject`, `body`) VALUES
(1, 'maneesha@gmail.com', 'Great', 'Great'),
(2, 'athira@gmail.com', 'hey', 'Sai ee website'),
(3, 'vinu@gmail.com', 'hello', 'badhia project ee');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category`, `price`, `active`) VALUES
(1, 'puma', 'Shoe', 1000, 'Yes'),
(2, 'nike', 'Shoe', 2000, 'Yes'),
(3, 'adidas', 'Shoe', 3000, 'Yes'),
(4, 'jeans', 'denim', 8000, 'Yes'),
(5, 'Jacket', 'Jacket1', 5000, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobileNumber` bigint(20) DEFAULT NULL,
  `securityQuestion` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `mobileNumber`, `securityQuestion`, `answer`, `password`, `address`, `city`, `state`, `country`) VALUES
('vinu', 'vinu@gmail.com', 9988383891, 'What was your first car?', 'maruti', 'qwertyuiop', 'Chandigarh', 'chandigarh', 'Punjab', 'India'),
('sugu', 'sugu@gmail.com', 9873216540, 'What is the name of the town you were born?', 'Chandigarh', '1', 'gagan@gmail.com', 'chandigarh', 'chandigarh', 'India'),
('athira', 'athira@gmail.com', 9988383891, 'What is the name of your first pet?', 'dog', 'asdfghjkl', 'rashi@gmail.com', 'Chandigarh', 'Chandigarh', 'India'),
('abc', 'abc@gmail.com', 9988383891, 'What was your first car?', 'Maruti', 'asdfghjkl', 'abc@gmail.com', 'Chandigarh', 'Chandigarh', 'India');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
