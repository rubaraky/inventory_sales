-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 13, 2025 at 09:27 PM
-- Server version: 8.0.40-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hayirlisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `category_id` int NOT NULL,
  `c_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`category_id`, `c_name`) VALUES
(3, 'Accessories'),
(1, 'Computer'),
(4, 'Hardware'),
(7, 'Home'),
(6, 'Office'),
(5, 'Others'),
(2, 'Phone');

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `customer_id` int NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `c_phone` varchar(15) DEFAULT NULL,
  `c_gender` char(1) DEFAULT NULL,
  `product_type` varchar(100) DEFAULT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`customer_id`, `customer_name`, `c_phone`, `c_gender`, `product_type`, `product_id`) VALUES
(1, 'Caner', '05345678901', 'M', 'Laptop', 1),
(2, 'Selin', '05431234567', 'F', 'Phone', 2),
(3, 'Okan', '05321234567', 'M', 'Headphones', 3),
(4, 'Ebru', '05445678912', 'F', 'Monitor', 4),
(5, 'Bora', '05337894567', 'M', 'Keyboard', 5),
(6, 'Dilara', '05456789012', 'F', 'Mouse', 6),
(7, 'Engin', '05329876543', 'M', 'Tablet', 7),
(8, 'Buse', '05445678943', 'F', 'Smartwatch', 8),
(9, 'Kemal', '05323456789', 'M', 'Speaker', 9),
(10, 'Esra', '05434567890', 'F', 'Printer', 10),
(11, 'Furkan', '05355678912', 'M', 'Router', 11),
(12, 'Cansu', '05461234567', 'F', 'Hard Drive', 12),
(13, 'Serkan', '05327894567', 'M', 'Camera', 13),
(14, 'Zehra', '05472345678', 'F', 'Microphone', 14),
(15, 'Kaan', '05394567891', 'M', 'Projector', 15),
(16, 'Deniz', '05483456789', 'F', 'Air Conditioner', 16),
(17, 'Tolga', '05389456723', 'M', 'Fan', 17),
(18, 'Sinem', '05492345678', 'F', 'Heater', 18),
(19, 'Hakan', '05381234567', 'M', 'Vacuum Cleaner', 19),
(20, 'Melis', '05467891234', 'F', 'Washing Machine', 20);

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `dep_number` int NOT NULL,
  `dep_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`dep_number`, `dep_name`) VALUES
(1, 'Cashier'),
(2, 'Floor Staff'),
(3, 'Manager'),
(4, 'Customer Service'),
(5, 'Stock Manager'),
(6, 'Sales Associate'),
(7, 'Technician'),
(8, 'Logistics'),
(9, 'Delivery Coordinator'),
(10, 'HR Specialist'),
(11, 'Inventory Specialist'),
(12, 'IT Support'),
(13, 'Marketing'),
(14, 'Finance'),
(15, 'Assistant Manager'),
(16, 'Warehouse Manager'),
(17, 'Quality Control'),
(18, 'Product Specialist'),
(19, 'Security'),
(20, 'Operations Manager');

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `employee_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `product_id` int NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `dep_number` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`employee_id`, `name`, `surname`, `product_id`, `gender`, `salary`, `dep_number`) VALUES
(1, 'Ahmet', 'Yılmaz', 1, 'M', '3000.00', 1),
(2, 'Elif', 'Demir', 2, 'F', '3500.00', 12),
(3, 'Hasan', 'Özdemir', 3, 'M', '2800.00', 13),
(4, 'Ayşe', 'Aksoy', 4, 'F', '3200.00', 9),
(5, 'Mehmet', 'Kaya', 5, 'M', '3400.00', 7),
(6, 'Zeynep', 'Çelik', 6, 'F', '3300.00', 8),
(7, 'Emre', 'Koç', 7, 'M', '3100.00', 17),
(8, 'Aylin', 'Erdem', 8, 'F', '3000.00', 3),
(9, 'Ali', 'Can', 9, 'M', '3200.00', 2),
(10, 'Fatma', 'Yıldız', 10, 'F', '3000.00', 1),
(11, 'Seda', 'Turan', 11, 'F', '2900.00', 20),
(12, 'Murat', 'Kara', 12, 'M', '2700.00', 15),
(13, 'İsmail', 'Tosun', 13, 'M', '3300.00', 16),
(14, 'Sibel', 'Özkan', 14, 'F', '3100.00', 14),
(15, 'Barış', 'Şahin', 15, 'M', '3500.00', 1),
(16, 'Gökhan', 'Büyük', 16, 'M', '2800.00', 2),
(17, 'Dilek', 'Yılmaz', 17, 'F', '3000.00', 6),
(18, 'Berk', 'Çetin', 18, 'M', '2900.00', 2),
(19, 'Merve', 'Yalçın', 19, 'F', '3400.00', 14),
(20, 'Rıza', 'Özdemir', 20, 'M', '3000.00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `order_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `order_date` date NOT NULL,
  `total_amount` decimal(30,0) NOT NULL,
  `payment_status` varchar(30) NOT NULL,
  `payment_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`order_id`, `customer_id`, `order_date`, `total_amount`, `payment_status`, `payment_id`) VALUES
(1, 1, '2025-01-01', '101', 'Paid', 1),
(2, 2, '2025-01-02', '201', 'Pending', 2),
(3, 3, '2025-01-03', '150', 'Paid', 3),
(4, 4, '2025-01-04', '175', 'Failed', 4),
(5, 5, '2025-01-05', '225', 'Paid', 5),
(6, 6, '2025-01-06', '111', 'Pending', 6),
(7, 7, '2025-01-07', '300', 'Paid', 7),
(8, 8, '2025-01-08', '95', 'Failed', 8),
(9, 9, '2025-01-09', '121', 'Paid', 9),
(10, 10, '2025-01-10', '251', 'Pending', 10),
(11, 11, '2025-01-11', '310', 'Paid', 11),
(12, 12, '2025-01-12', '400', 'Failed', 12),
(13, 13, '2025-01-13', '90', 'Pending', 13),
(14, 14, '2025-01-14', '181', 'Paid', 14),
(15, 15, '2025-01-15', '275', 'Failed', 15),
(16, 16, '2025-01-16', '96', 'Paid', 16),
(17, 17, '2025-01-17', '151', 'Pending', 17),
(18, 18, '2025-01-18', '325', 'Paid', 18),
(19, 19, '2025-01-19', '211', 'Failed', 19),
(20, 20, '2025-01-20', '100', 'Paid', 20);

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `payment_id` int NOT NULL,
  `order_id` int NOT NULL,
  `payment_date` date NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `payment_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Payment`
--

INSERT INTO `Payment` (`payment_id`, `order_id`, `payment_date`, `amount`, `payment_method`) VALUES
(1, 1, '2025-01-01', '101', 'Credit Card'),
(2, 2, '2025-01-02', '201', 'PayPal'),
(3, 3, '2025-01-03', '150', 'Debit Card'),
(4, 4, '2025-01-04', '175', 'Cash'),
(5, 5, '2025-01-05', '225', 'Credit Card'),
(6, 6, '2025-01-06', '111', 'PayPal'),
(7, 7, '2025-01-07', '300', 'Debit Card'),
(8, 8, '2025-01-08', '95', 'Cash'),
(9, 9, '2025-01-09', '121', 'Credit Card'),
(10, 10, '2025-01-10', '251', 'PayPal'),
(11, 11, '2025-01-11', '310', 'Debit Card'),
(12, 12, '2025-01-12', '400', 'Cash'),
(13, 13, '2025-01-13', '90', 'Credit Card'),
(14, 14, '2025-01-14', '181', 'PayPal'),
(15, 15, '2025-01-15', '275', 'Debit Card'),
(16, 16, '2025-01-16', '96', 'Cash'),
(17, 17, '2025-01-17', '151', 'Credit Card'),
(18, 18, '2025-01-18', '325', 'PayPal'),
(19, 19, '2025-01-19', '211', 'Debit Card'),
(20, 20, '2025-01-20', '100', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `product_id` int NOT NULL,
  `product_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `category_id` int NOT NULL,
  `order_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`product_id`, `product_type`, `price`, `category_id`, `order_id`) VALUES
(1, 'Laptop', '5000.00', 2, 1),
(2, 'Phone', '3000.00', 1, 2),
(3, 'Headphones', '500.00', 3, 3),
(4, 'Monitor', '1500.00', 4, 4),
(5, 'Keyboard', '200.00', 4, 5),
(6, 'Mouse', '100.00', 4, 6),
(7, 'Tablet', '2000.00', 1, 7),
(8, 'Smartwatch', '1500.00', 3, 8),
(9, 'Speaker', '800.00', 5, 9),
(10, 'Printer', '1200.00', 6, 10),
(11, 'Router', '400.00', 6, 11),
(12, 'Hard Drive', '800.00', 4, 12),
(13, 'Camera', '3000.00', 5, 13),
(14, 'Microphone', '600.00', 5, 14),
(15, 'Projector', '4500.00', 6, 15),
(16, 'Air Conditioner', '8000.00', 7, 16),
(17, 'Computer Cooler', '2000.00', 4, 17),
(18, 'Heater', '3000.00', 7, 18),
(19, 'Vacuum Cleaner', '2500.00', 7, 19),
(20, 'Washing Machine', '7500.00', 7, 20);

-- --------------------------------------------------------

--
-- Table structure for table `Sales`
--

CREATE TABLE `Sales` (
  `sales_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `product_id` int NOT NULL,
  `sale_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Sales`
--

INSERT INTO `Sales` (`sales_id`, `employee_id`, `product_id`, `sale_date`) VALUES
(1, 1, 1, '2025-01-01'),
(2, 2, 2, '2025-01-02'),
(3, 3, 3, '2025-01-03'),
(4, 4, 4, '2025-01-04'),
(5, 5, 5, '2025-01-05'),
(6, 6, 6, '2025-01-06'),
(7, 7, 7, '2025-01-07'),
(8, 8, 8, '2025-01-08'),
(9, 9, 9, '2025-01-09'),
(10, 10, 10, '2025-01-10'),
(11, 11, 11, '2025-01-11'),
(12, 12, 12, '2025-01-12'),
(13, 13, 13, '2025-01-13'),
(14, 14, 14, '2025-01-14'),
(15, 15, 15, '2025-01-15'),
(16, 16, 16, '2025-01-16'),
(17, 17, 17, '2025-01-17'),
(18, 18, 18, '2025-01-18'),
(19, 19, 19, '2025-01-19'),
(20, 20, 20, '2025-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `Stock`
--

CREATE TABLE `Stock` (
  `product_id` int NOT NULL,
  `product_count` int DEFAULT NULL,
  `type_of_product` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Stock`
--

INSERT INTO `Stock` (`product_id`, `product_count`, `type_of_product`) VALUES
(1, 50, 'Laptop'),
(2, 30, 'Phone'),
(3, 100, 'Headphones'),
(4, 75, 'Monitor'),
(5, 40, 'Keyboard'),
(6, 60, 'Mouse'),
(7, 90, 'Tablet'),
(8, 120, 'Smartwatch'),
(9, 110, 'Speaker'),
(10, 150, 'Printer'),
(11, 80, 'Router'),
(12, 65, 'Hard Drive'),
(13, 55, 'Camera'),
(14, 25, 'Microphone'),
(15, 100, 'Projector'),
(16, 70, 'Air Conditioner'),
(17, 200, 'Fan'),
(18, 150, 'Heater'),
(19, 90, 'Vacuum Cleaner'),
(20, 110, 'Washing Machine');

-- --------------------------------------------------------

--
-- Table structure for table `Supplier`
--

CREATE TABLE `Supplier` (
  `supplier_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact_info` varchar(50) NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Supplier`
--

INSERT INTO `Supplier` (`supplier_id`, `name`, `contact_info`, `product_id`) VALUES
(1, 'Supplier 1', 'contact1@supplier.com', 1),
(2, 'Supplier 2', 'contact2@supplier.com', 2),
(3, 'Supplier 3', 'contact3@supplier.com', 3),
(4, 'Supplier 4', 'contact4@supplier.com', 4),
(5, 'Supplier 5', 'contact5@supplier.com', 5),
(6, 'Supplier 6', 'contact6@supplier.com', 6),
(7, 'Supplier 7', 'contact7@supplier.com', 7),
(8, 'Supplier 8', 'contact8@supplier.com', 8),
(9, 'Supplier 9', 'contact9@supplier.com', 9),
(10, 'Supplier 10', 'contact10@supplier.com', 10),
(11, 'Supplier 11', 'contact11@supplier.com', 11),
(12, 'Supplier 12', 'contact12@supplier.com', 12),
(13, 'Supplier 13', 'contact13@supplier.com', 13),
(14, 'Supplier 14', 'contact14@supplier.com', 14),
(15, 'Supplier 15', 'contact15@supplier.com', 15),
(16, 'Supplier 16', 'contact16@supplier.com', 16),
(17, 'Supplier 17', 'contact17@supplier.com', 17),
(18, 'Supplier 18', 'contact18@supplier.com', 18),
(19, 'Supplier 19', 'contact19@supplier.com', 19),
(20, 'Supplier 20', 'contact20@supplier.com', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_id` (`category_id`),
  ADD UNIQUE KEY `c_name` (`c_name`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`dep_number`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `dep_number` (`dep_number`) USING BTREE,
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_id_2` (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `payment_id_2` (`payment_id`);

--
-- Indexes for table `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `Sales`
--
ALTER TABLE `Sales`
  ADD PRIMARY KEY (`sales_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `Stock`
--
ALTER TABLE `Stock`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `count` (`product_count`);

--
-- Indexes for table `Supplier`
--
ALTER TABLE `Supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Category`
--
ALTER TABLE `Category`
  ADD CONSTRAINT `Category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `Product` (`category_id`);

--
-- Constraints for table `Employee`
--
ALTER TABLE `Employee`
  ADD CONSTRAINT `Employee_ibfk_1` FOREIGN KEY (`dep_number`) REFERENCES `Department` (`dep_number`);

--
-- Constraints for table `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`),
  ADD CONSTRAINT `Orders_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `Product` (`order_id`),
  ADD CONSTRAINT `Orders_ibfk_3` FOREIGN KEY (`payment_id`) REFERENCES `Payment` (`payment_id`);

--
-- Constraints for table `Product`
--
ALTER TABLE `Product`
  ADD CONSTRAINT `Product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `Orders` (`order_id`);

--
-- Constraints for table `Sales`
--
ALTER TABLE `Sales`
  ADD CONSTRAINT `Sales_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`employee_id`),
  ADD CONSTRAINT `Sales_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `Product` (`product_id`);

--
-- Constraints for table `Stock`
--
ALTER TABLE `Stock`
  ADD CONSTRAINT `Stock_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `Product` (`product_id`);

--
-- Constraints for table `Supplier`
--
ALTER TABLE `Supplier`
  ADD CONSTRAINT `Supplier_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `Stock` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
