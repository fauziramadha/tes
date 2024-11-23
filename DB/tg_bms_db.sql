-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2024 at 01:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tg_bms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tg_admin`
--

CREATE TABLE `tg_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_code` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tg_admin`
--

INSERT INTO `tg_admin` (`admin_id`, `admin_code`, `admin_name`, `admin_email`, `admin_password`, `admin_time`) VALUES
(1, 'OCAdmin', 'Admin', 'admin@gmail.com', 'f50dcd5c784e71143437767771b8e080668221a4', '2024-09-14 02:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `tg_contact_form`
--

CREATE TABLE `tg_contact_form` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tg_contact_form`
--

INSERT INTO `tg_contact_form` (`id`, `name`, `email`, `subject`, `message`, `submitted_at`) VALUES
(1, 'Dinuka Perera', 'dinuka.perera@example.com', 'Product Inquiry', 'Can you provide more details about product availability?', '2024-09-28 04:30:00'),
(2, 'Tharindu Silva', 'tharindu.silva@example.com', 'Order Status', 'I would like to know the current status of my order.', '2024-09-28 05:00:00'),
(3, 'Chathuri Jayasinghe', 'chathuri.jaya@example.com', 'Shipping Question', 'What are the delivery charges for Colombo?', '2024-09-28 05:30:00'),
(4, 'Kasun Wickramasinghe', 'kasun.wick@example.com', 'Payment Issue', 'I encountered a problem while making a payment online.', '2024-09-28 06:00:00'),
(5, 'Nishadi Rathnayake', 'nishadi.rathnayake@example.com', 'Return Request', 'I would like to return an item from my recent purchase.', '2024-09-28 06:30:00'),
(6, 'Isuru Fernando', 'isuru.fernando@example.com', 'Discount Inquiry', 'Are there any ongoing promotions for bulk orders?', '2024-09-28 07:00:00'),
(7, 'Ruwan Gunasekara', 'ruwan.guna@example.com', 'Technical Support', 'I need assistance with a technical issue on your website.', '2024-09-28 07:30:00'),
(8, 'Sachini Dias', 'sachini.dias@example.com', 'Product Return', 'Can I return a defective product I received?', '2024-09-28 08:00:00'),
(9, 'Nuwan Wijesinghe', 'nuwan.wije@example.com', 'Website Feedback', 'Your website is not loading properly on mobile devices.', '2024-09-28 08:30:00'),
(10, 'Sanduni Peris', 'sanduni.peris@example.com', 'Inquiry on New Arrivals', 'When will your new collection of products be available?', '2024-09-28 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tg_customers`
--

CREATE TABLE `tg_customers` (
  `customer_id` int(11) NOT NULL,
  `customer_username` varchar(255) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_Name` varchar(255) NOT NULL,
  `customer_Email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tg_customers`
--

INSERT INTO `tg_customers` (`customer_id`, `customer_username`, `customer_password`, `customer_Name`, `customer_Email`, `customer_address`, `photo`, `created`) VALUES
(1, 'dinuka_p', 'cbfdac6008f9cab4083784cbd1874f76618d2a97', 'Dinuka Perera', 'dinuka.perera@example.com', '123 Galle Road, Colombo 03', '1-dinuka.jpg', '2024-09-28 12:53:39'),
(2, 'tharindu_s', 'fa6e73c564a59bc3df49321f0cace0394523466e', 'Tharindu Silva', 'tharindu.silva@example.com', 'tharindu.silva@example.com', '2-tharidu.jpg', '2024-09-28 13:11:46'),
(3, 'chathuri_j', '14620228f3acbf2bbafedc627751de9204f25732', 'Chathuri Jayasinghe', 'chathuri.jaya@example.com', '789 Union Place, Colombo 02', '3-chathuri.jpg', '2024-09-28 13:13:36'),
(4, 'kasun_w', '003ea22d654e701e04f10912be9ed9713ab057fc', 'Kasun Wickramasinghe', 'kasun.wick@example.com', '321 Duplication Road, Colombo 04', '4-kasun.jpeg', '2024-09-28 13:14:46'),
(5, 'nishadi_r', '1a4f2090bf75600c27dc0f3d5852b6302437faa6', 'Nishadi Rathnayake', 'nishadi.rathnayake@example.com', '654 High Level Road, Nugegoda', '5-nishadi.jpg', '2024-09-28 13:16:00'),
(6, 'isuru_f', '6e41d158be078563fb71936a004f3a5cc042e9c7', 'Isuru Fernando', 'isuru.fernando@example.com', '987 Havelock Road, Colombo 05', '6-isuru.jpg', '2024-09-28 13:16:47'),
(7, 'ruwan_g', 'f47799ac0798471bf4eabbb8847c5ca2faec2019', 'Ruwan Gunasekara', 'ruwan.guna@example.com', '111 Galle Face Court, Colombo 01', '7-ruwan.jpg', '2024-09-28 13:18:08'),
(8, 'sachini_d', 'c3c45663626a4c3ce6d24a4913ee3b5b6a583d7e', 'Sachini Dias', 'sachini.dias@example.com', '222 1st Cross Street, Pettah', '8-sachini.jpg', '2024-09-28 13:19:00'),
(9, 'nuwan_w', 'e2606f680520d470738a81d445bb1a0cb1a20d25', 'Nuwan Wijesinghe', 'nuwan.wije@example.com', '333 Baseline Road, Colombo 09', '9-nuwan.jpg', '2024-09-28 13:19:42'),
(10, 'sanduni_p', '1f52eb932e53f8ca5f038679fd1d95a0b5cc353f', 'Sanduni Peris', 'sanduni.peris@example.com', '444 Negombo Road, Wattala', '10-saduni.jpeg', '2024-09-28 13:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `tg_orders`
--

CREATE TABLE `tg_orders` (
  `id` int(13) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `customerID` varchar(255) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `customerAddress` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(13) NOT NULL,
  `totalAmount` int(13) NOT NULL,
  `orderDate` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tg_orders`
--

INSERT INTO `tg_orders` (`id`, `orderId`, `customerID`, `customerName`, `customerAddress`, `productName`, `quantity`, `totalAmount`, `orderDate`, `status`) VALUES
(1, 'O001', '2', 'Tharindu Silva', 'tharindu.silva@example.com', ' Bread Bun', 2, 700, '9/28/2024 1:40:53 PM', 'Completed'),
(2, 'O002', '2', 'Tharindu Silva', 'tharindu.silva@example.com', ' Brownies', 5, 1275, '9/28/2024 1:41:03 PM', 'Completed'),
(3, 'O003', '8', 'Sachini Dias', '222 1st Cross Street, Pettah', ' Lava Cake', 10, 3450, '9/28/2024 1:43:12 PM', 'Completed'),
(4, 'O004', '10', 'Sanduni Peris', '444 Negombo Road, Wattala', ' Chia', 3, 1350, '9/28/2024 1:44:06 PM', 'Completed'),
(5, 'O005', '10', 'Sanduni Peris', '444 Negombo Road, Wattala', ' Whole Grain Bread', 5, 2900, '9/28/2024 1:45:12 PM', 'Completed'),
(6, 'O006', '10', 'Sanduni Peris', '444 Negombo Road, Wattala', ' Butter Pastry', 2, 960, '9/28/2024 1:45:28 PM', 'Completed'),
(7, 'O007', '5', 'Nishadi Rathnayake', '654 High Level Road, Nugegoda', ' Doughnut', 10, 2500, '9/28/2024 1:47:40 PM', 'Completed'),
(8, 'O008', '5', 'Nishadi Rathnayake', '654 High Level Road, Nugegoda', ' Cup Cake', 20, 5000, '9/28/2024 1:47:48 PM', 'Completed'),
(9, 'O009', '4', 'Kasun Wickramasinghe', '321 Duplication Road, Colombo 04', ' Arabic Bread', 3, 825, '9/28/2024 1:49:31 PM', 'Completed'),
(10, 'O010', '4', 'Kasun Wickramasinghe', '321 Duplication Road, Colombo 04', ' Apple Pie', 1, 1050, '9/28/2024 1:49:42 PM', 'Completed'),
(11, 'O011', '1', 'Dinuka Perera', '123 Galle Road, Colombo 03', ' Arabic Bread', 10, 2750, '10/13/2024 7:53:36 AM', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `tg_products`
--

CREATE TABLE `tg_products` (
  `id` int(12) NOT NULL,
  `productId` varchar(12) NOT NULL,
  `productImage` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `stockQuantity` int(12) NOT NULL,
  `price` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tg_products`
--

INSERT INTO `tg_products` (`id`, `productId`, `productImage`, `productName`, `category`, `stockQuantity`, `price`) VALUES
(3, 'P001', 'dist/uploads/products/P001_Arabic_Bread.png', 'Arabic Bread', 'Bread', 30, 275),
(4, 'P002', 'dist/uploads/products/P002_Bread_Rolls.png', 'Bread Rolls', 'Bread', 30, 250),
(5, 'P003', 'dist/uploads/products/P003_Bread_Bun.png', 'Bread Bun', 'Bread', 25, 350),
(6, 'P004', 'dist/uploads/products/P004_Chia.png', 'Chia', 'Bread', 25, 450),
(8, 'P005', 'dist/uploads/products/P005_Pan_Bread.png', 'Pan Bread', 'Bread', 35, 280),
(9, 'P006', 'dist/uploads/products/P006_Brownies.png', 'Brownies', 'Cake', 50, 255),
(10, 'P007', 'dist/uploads/products/P007_Lava_Cake.png', 'Lava Cake', 'Cake', 30, 345),
(11, 'P008', 'dist/uploads/products/P008_Slice_Cake.png', 'Slice Cake', 'Cake', 40, 350),
(12, 'P009', 'dist/uploads/products/P009_Doughnut.png', 'Doughnut', 'Cake', 60, 250),
(13, 'P010', 'dist/uploads/products/P010_Cup_Cake.png', 'Cup Cake', 'Cake', 60, 250),
(15, 'P011', 'dist/uploads/products/P011_Apple_Pie.png', 'Apple Pie', 'Pastry', 10, 1050),
(16, 'P012', 'dist/uploads/products/P012_Croissant.png', 'Croissant', 'Pastry', 50, 250),
(17, 'P013', 'dist/uploads/products/P013_Danish.png', 'Danish', 'Pastry', 50, 275),
(20, 'P014', 'dist/uploads/products/P014_Tart.png', 'Tart', 'Pastry', 10, 580),
(21, 'P015', 'dist/uploads/products/P015_Whole_Grain_Bread.png', 'Whole Grain Bread', 'Bread', 25, 580),
(22, 'P016', 'dist/uploads/products/P016_Butter_Pastry.png', 'Butter Pastry', 'Pastry', 30, 480),
(23, 'P017', 'dist/uploads/products/P017_Chocolate_Cake.png', 'Chocolate Cake', 'Cake', 30, 365);

-- --------------------------------------------------------

--
-- Table structure for table `tg_special_orders`
--

CREATE TABLE `tg_special_orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `preferred_date` date NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tg_special_orders`
--

INSERT INTO `tg_special_orders` (`id`, `name`, `email`, `phone`, `preferred_date`, `details`, `created_at`) VALUES
(1, 'Ayesha Perera', 'ayesha.perera@example.com', '+94771234567', '2024-10-01', 'Custom order of 50 Lava Cakes.', '2024-09-28 05:00:00'),
(2, 'Ruwan Fernando', 'ruwan.fernando@example.com', '+94712345678', '2024-10-05', 'Order for 200 Bread Rolls.', '2024-09-28 05:45:00'),
(3, 'Kavindi Rajapaksha', 'kavindi.rajapaksha@example.com', '+94763456789', '2024-10-10', 'Request for a custom Birthday Cake', '2024-09-28 06:30:00'),
(4, 'Harsha Weerasinghe', 'harsha.weera@example.com', '+94724567890', '2024-10-15', 'Order for 50 pieces of Brownies.', '2024-09-28 07:15:00'),
(5, 'Chathura Wickramasinghe', 'chathura.wick@example.com', '+94785678901', '2024-10-20', 'Special delivery of 3kg Slice Cake.', '2024-09-28 08:00:00'),
(6, 'Nishantha Wijesinghe', 'nishantha.wije@example.com', '+94776789012', '2024-10-25', 'Urgent order of 50 Doughnuts.', '2024-09-28 08:45:00'),
(7, 'Anjali Rathnayake', 'anjali.rathnayake@example.com', '+94717890123', '2024-10-30', 'Order for custom a tart.', '2024-09-28 09:30:00'),
(8, 'Malith Peris', 'malith.peris@example.com', '+94768901234', '2024-11-01', 'Special order of 40 Butter Pastries.', '2024-09-28 10:15:00'),
(9, 'Samanthi Jayasinghe', 'samanthi.jaya@example.com', '+94729012345', '2024-11-05', 'Order for 100 pieces of Danish.', '2024-09-28 11:00:00'),
(10, 'Nuwan Silva', 'nuwan.silva@example.com', '+94780123456', '2024-11-10', 'Special request for 60  cup cakes.', '2024-09-28 11:45:00'),
(11, 'Tharushi Perera', 'tharushi.perera@example.com', '+94771234565', '2024-10-08', 'Custom order of 2Kg Chocolate cakes.', '2024-09-28 08:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `tg_supplier`
--

CREATE TABLE `tg_supplier` (
  `id` int(11) NOT NULL,
  `supplier_id` varchar(50) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `contact_name` varchar(100) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tg_supplier`
--

INSERT INTO `tg_supplier` (`id`, `supplier_id`, `supplier_name`, `contact_name`, `contact_email`, `phone_number`, `address`) VALUES
(1, 'S001', 'Colombo Supplies', 'Arun Perera', 'arun.perera@colombosupplies.lk', '+94112345678', '123 Galle Road, Colombo 03'),
(2, 'S002', 'Lanka Traders', 'Nuwan Silva', 'nuwan.silva@lankatraders.lk', '+94112233445', '456 Kotte Road, Colombo 08'),
(3, 'S003', 'Metro Wholesale', 'Samanthi Jayasinghe', 'samanthi.jaya@metrowholesale.lk', '+94112445566', '789 Union Place, Colombo 02'),
(4, 'S004', 'Ceylon Suppliers', 'Ruwan Fernando', 'ruwan.fernando@ceylonsuppliers.lk', '+94112332211', '321 Duplication Road, Colombo 04'),
(5, 'S005', 'Sri Lanka Imports', 'Kavindi Rajapaksha', 'kavindi.rajapaksha@slimports.lk', '+94112111223', '654 High Level Road, Nugegoda'),
(6, 'S006', 'Eastern Distributors', 'Harsha Weerasinghe', 'harsha.weera@easterndistributors.lk', '+94112223344', '987 Havelock Road, Colombo 05'),
(7, 'S007', 'Western Supplies', 'Malith Peris', 'malith.peris@westerns.lk', '+94112233444', '111 Galle Face Court, Colombo 01'),
(8, 'S008', 'Pettah Traders', 'Anjali Rathnayake', 'anjali.rathnayake@pettahtraders.lk', '+94112255667', '222 1st Cross Street, Pettah'),
(9, 'S009', 'Southern Goods', 'Chathura Wickramasinghe', 'chathura.wick@sgoods.lk', '+94112266778', '333 Baseline Road, Colombo 09'),
(10, 'S010', 'Kelani Suppliers', 'Nishantha Wijesinghe', 'nishantha.wije@kelanisuppliers.lk', '+94112288990', '444 Negombo Road, Wattala');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tg_admin`
--
ALTER TABLE `tg_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`),
  ADD UNIQUE KEY `admin_code` (`admin_code`);

--
-- Indexes for table `tg_contact_form`
--
ALTER TABLE `tg_contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tg_customers`
--
ALTER TABLE `tg_customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `emp_code` (`customer_username`);

--
-- Indexes for table `tg_orders`
--
ALTER TABLE `tg_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tg_products`
--
ALTER TABLE `tg_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tg_special_orders`
--
ALTER TABLE `tg_special_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tg_supplier`
--
ALTER TABLE `tg_supplier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supplier_id` (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tg_admin`
--
ALTER TABLE `tg_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tg_contact_form`
--
ALTER TABLE `tg_contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tg_customers`
--
ALTER TABLE `tg_customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tg_orders`
--
ALTER TABLE `tg_orders`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tg_products`
--
ALTER TABLE `tg_products`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tg_special_orders`
--
ALTER TABLE `tg_special_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tg_supplier`
--
ALTER TABLE `tg_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
