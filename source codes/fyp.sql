-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2023 at 01:53 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery_details`
--

CREATE TABLE `delivery_details` (
  `tracking_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_details`
--

INSERT INTO `delivery_details` (`tracking_number`) VALUES
('-'),
('0196202910773435'),
('0251533815161006'),
('0398986153579499'),
('0712188102775965'),
('1792566137296526'),
('2253514710743005'),
('2392795588919037'),
('3415215971398817'),
('3770115663589104'),
('3897193386564536'),
('4250963811486981'),
('5746632008463443'),
('5776622224475661'),
('6757516368315485'),
('7157013343243935'),
('7870809882395235'),
('8583430131035767'),
('8769645837880456'),
('9770947013841502');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback_issue` varchar(50) DEFAULT NULL,
  `feedback_type` varchar(50) DEFAULT NULL,
  `feedback_desc` varchar(500) DEFAULT NULL,
  `feedback_status` varchar(50) DEFAULT NULL,
  `feedback_date` datetime NOT NULL DEFAULT current_timestamp(),
  `feedback_sentiment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `feedback_urgency` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `feedback_priority` float DEFAULT NULL,
  `feedback_update` varchar(500) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tracking_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `feedback_issue`, `feedback_type`, `feedback_desc`, `feedback_status`, `feedback_date`, `feedback_sentiment`, `feedback_urgency`, `feedback_priority`, `feedback_update`, `user_id`, `tracking_number`) VALUES
(35, 'courier', 'appraisal', 'The delivery man is polite and patient ', 'In progress', '2022-05-21 16:29:32', '{\"Positive\":\"0.651\"}', '{\"Not Urgent\":\"1\"}', 0.054483, 'qwe', 5, '9770947013841502'),
(37, 'courier', 'suggestion', 'The delivery man should inform the recipient when the parcel is arriving ', 'In progress', '2022-05-21 17:17:51', '{\"Negative\":\"0.748\"}', '{\"Not Urgent\":\"0.993\"}', 0.335709, 'sorry to hear that...', 5, '1792566137296526'),
(41, 'courier', 'appraisal', 'I got my order here ASAP. Definitely will order from them all the time! This is by far the best delivery service. Thank you guys for what you do!', 'In progress', '2022-05-21 21:00:54', '{\"Positive\":\"0.998\"}', '{\"Urgent\":\"0.899\"}', 0.397029, 'testing 123', 5, '0398986153579499'),
(42, 'courier', 'appraisal', 'Thank you for your help and quick delivery which enable our customer to meet his deadline – excellent service.', 'Sent', '2022-05-21 21:06:11', '{\"Positive\":\"0.997\"}', '{\"Not Urgent\":\"1\"}', 0.065901, NULL, 5, '3770115663589104'),
(45, 'courier', 'suggestion', 'You can have your customers pin their location. With a working GPS installed in all delivery vehicles, goods can get to the correct destination, and on time, plus the location of the vehicle can always be tracked in real-time.', 'Sent', '2022-05-21 23:06:10', '{\"Positive\":\"0.887\"}', '{\"Not Urgent\":\"1\"}', 0.062271, NULL, 5, '5776622224475661'),
(46, 'courier', 'suggestion', 'Courier services should offer different delivery point options, so customers can choose one that will best serve their specific needs.', 'Complete', '2022-05-21 23:09:26', '{\"Neutral\":\"0.49\"}', '{\"Not Urgent\":\"0.972\"}', 0.092836, NULL, 5, '8583430131035767'),
(52, 'anonymous', 'complaint', 'the driver is rude', 'Sent', '2022-05-26 23:14:47', '{\"Negative\":\"0.98\"}', '{\"Not Urgent\":\"1.0\"}', 0.033, NULL, 5, NULL),
(53, 'general issue', 'suggestion', 'The parcel packaging should utilize more sustainable materials instead of plastic', 'Sent', '2022-05-28 01:59:21', '{\"Negative\":\"0.747\"}', '{\"Not Urgent\":\"1\"}', 0.335535, NULL, 5, '9770947013841502'),
(54, 'customer service', 'complaint', 'I was transferred to three different departments when I called the customer service! Wasted my time!', 'Sent', '2022-05-28 02:27:05', '{\"Negative\":\"0.981\"}', '{\"Not Urgent\":\"1\"}', 0.430305, NULL, 7, '8769645837880456'),
(55, 'general issue', 'appraisal', 'I love how the packaging is nicely designed and waterproof. ', 'Complete', '2022-05-28 02:28:02', '{\"Positive\":\"0.997\"}', '{\"Not Urgent\":\"1\"}', 0.065901, 'thank you for your kind words', 7, '8583430131035767'),
(56, 'courier', 'appraisal', 'The delivery time was super fast. I got my parcel in less than 3 days.', 'Sent', '2022-05-28 02:29:04', '{\"Positive\":\"0.997\"}', '{\"Not Urgent\":\"0.988\"}', 0.065505, NULL, 7, '7870809882395235'),
(57, 'general issue', 'suggestion', 'DHL can lower their international delivery fees.', 'Sent', '2022-05-28 02:29:27', '{\"Neutral\":\"0.735\"}', '{\"Not Urgent\":\"1\"}', 0.12414, NULL, 7, '7157013343243935'),
(58, 'anonymous', 'appraisal', 'I love the company’s CSR initiative and general culture.', 'Sent', '2022-05-28 02:35:16', '{\"Positive\":\"0.942\"}', '{\"Not Urgent\":\"0.916\"}', 0.061314, NULL, 5, NULL),
(60, 'general issue', 'suggestion', 'The delivery man should be allowed to leave the parcel at the door to reduce in-person contact during the pandemic.', 'Sent', '2022-05-28 02:42:53', '{\"Negative\":\"0.823\"}', '{\"Not Urgent\":\"0.994\"}', 0.366117, NULL, 7, '7157013343243935'),
(61, 'general issue', 'complaint', 'I cannot find any details on how to pack my package on the website. I’m so lost!', 'In progress', '2022-05-28 02:44:15', '{\"Negative\":\"0.991\"}', '{\"Not Urgent\":\"1\"}', 0.434355, 'sorry to hear that', 7, '6757516368315485'),
(62, 'general issue', 'suggestion', 'The website interface is so easy to navigate. Would definitely recommend!', 'Sent', '2022-05-28 02:44:44', '{\"Positive\":\"1\"}', '{\"Not Urgent\":\"0.985\"}', 0.065505, NULL, 7, '6757516368315485'),
(63, 'general issue', 'suggestion', 'The company website should offer more languages to attend to the global market.', 'Sent', '2022-05-28 02:45:04', '{\"Negative\":\"0.614\"}', '{\"Not Urgent\":\"0.969\"}', 0.280647, NULL, 7, '6757516368315485'),
(66, 'anonymous', 'complaint', 'impolite driver', 'Sent', '2022-05-30 19:53:37', '{\"Negative\":\"0.918\"}', '{\"Not Urgent\":\"0.973\"}', 0.032109, NULL, 7, NULL),
(67, 'anonymous', 'complaint', 'impolite driver', 'Sent', '2022-05-30 20:22:03', '{\"Negative\":\"0.918\"}', '{\"Not Urgent\":\"0.973\"}', 0.032109, NULL, 7, NULL),
(68, 'anonymous', 'complaint', 'impolite driver', 'Sent', '2022-05-30 20:27:52', '{\"Negative\":\"0.918\"}', '{\"Not Urgent\":\"0.973\"}', 0.032109, NULL, 7, NULL),
(69, 'anonymous', 'complaint', 'impolite driver', 'Sent', '2022-05-30 20:29:59', '{\"Negative\":\"0.918\"}', '{\"Not Urgent\":\"0.973\"}', 0.032109, NULL, 7, NULL),
(70, 'customer_service', 'complaint', 'impolite customer service', 'Sent', '2022-05-30 20:30:34', '{\"Negative\":\"0.991\"}', '{\"Not Urgent\":\"1\"}', 0.434355, NULL, 7, '-'),
(71, 'anonymous', 'appraisal', 'the driver is nice', 'Sent', '2022-06-16 10:16:58', '{\"Positive\":\"0.868\"}', '{\"Not Urgent\":\"1.0\"}', 0.061644, NULL, 5, NULL),
(72, 'general issue', 'suggestion', 'the customer service is polite', 'Sent', '2022-06-16 10:19:19', '{\"Negative\":\"0.569\"}', '{\"Not Urgent\":\"1\"}', 0.263445, NULL, 7, '-'),
(89, 'courier', 'complaint', 'I received my parcel but it was half open, and the parcel’s condition was quite miserable. ', 'Sent', '2022-08-16 02:03:17', '{\"Negative\":\"0.995\"}', '{\"Not Urgent\":\"0.951\"}', 0.434358, NULL, 9, '-'),
(90, 'courier', 'complaint', 'The parcel I received was not packed properly, and the items inside were partially scratched and dented. Please look into this issue!\n', 'Sent', '2022-08-16 02:03:34', '{\"Negative\":\"0.817\"}', '{\"Not Urgent\":\"0.966\"}', 0.362763, NULL, 9, '-'),
(91, 'courier', 'complaint', 'I came home after work and found out that my parcel was left outside my house, I didn’t even get a message that it was left there unattended for long hours.\n', 'Sent', '2022-08-16 02:03:47', '{\"Negative\":\"0.985\"}', '{\"Not Urgent\":\"0.89\"}', 0.428295, NULL, 9, '-'),
(92, 'courier', 'complaint', 'The delivery man dropped off a parcel at my doorstep without ringing the bell and it wasn’t even my parcel! What do I do with it?', 'Sent', '2022-08-16 02:03:57', '{\"Negative\":\"0.977\"}', '{\"Not Urgent\":\"1\"}', 0.428685, NULL, 9, '-'),
(93, 'courier', 'complaint', 'The parcel I have sent through your service has been received only after a fortnight of the exact delivery date as mentioned while placing the order.', 'Sent', '2022-08-16 02:04:16', '{\"Negative\":\"0.412\"}', '{\"Urgent\":\"0.557\"}', 0.392445, NULL, 9, '-'),
(94, 'courier', 'complaint', 'The scheduled pick-up time was delayed multiple times since last week, when will you be collecting my parcel?', 'Sent', '2022-08-16 02:04:23', '{\"Neutral\":\"0.593\"}', '{\"Urgent\":\"0.483\"}', 0.269147, NULL, 9, '-'),
(95, 'courier', 'complaint', 'I was supposed to receive a parcel last Tuesday but did not hear any news until yesterday. However, when I called the office, they did not find it in the records. Please update me soon.', 'Sent', '2022-08-16 02:04:37', '{\"Positive\":\"0.488\"}', '{\"Not Urgent\":\"0.567\"}', 0.034815, NULL, 9, '-'),
(96, 'courier', 'complaint', 'I was supposed to receive two parcels but only received one. What happened to the other one?', 'Sent', '2022-08-16 02:04:46', '{\"Negative\":\"0.852\"}', '{\"Not Urgent\":\"0.968\"}', 0.377004, NULL, 9, '-'),
(97, 'courier', 'complaint', 'My parcel shows ‘delivered’ on your website, but I did not receive anything. Did the delivery man get the address wrong?', 'Sent', '2022-08-16 02:04:57', '{\"Negative\":\"0.654\"}', '{\"Not Urgent\":\"0.7\"}', 0.28797, NULL, 9, '-'),
(98, 'courier', 'complaint', 'My parcel status has not been updated since last week. I called customer care regarding updates on my parcel but I did not get any response.', 'Sent', '2022-08-16 02:05:10', '{\"Negative\":\"0.99\"}', '{\"Not Urgent\":\"0.985\"}', 0.433455, NULL, 9, '-'),
(99, 'courier', 'complaint', 'I sent an email regarding my parcel two weeks ago but did not receive any updates until today. Where is my parcel?', 'Sent', '2022-08-16 02:05:24', '{\"Negative\":\"0.828\"}', '{\"Not Urgent\":\"0.698\"}', 0.358374, NULL, 9, '-'),
(100, 'courier', 'complaint', 'The driver hung up on me when I just wanted to confirm the pick-up time. When I called again, no one picked up', 'Sent', '2022-08-16 02:05:35', '{\"Negative\":\"0.997\"}', '{\"Not Urgent\":\"0.786\"}', 0.429723, NULL, 9, '-'),
(101, 'courier', 'complaint', 'I paid for express delivery but it didn’t happen, I expect compensation due to the delay and inconveniences caused by your company.', 'Sent', '2022-08-16 02:05:43', '{\"Negative\":\"0.883\"}', '{\"Not Urgent\":\"0.989\"}', 0.390252, NULL, 9, '-'),
(102, 'courier', 'complaint', 'I chose to deliver my computer using your service which cost at least two times more than other companies but I am not satisfied with the efficiency.', 'Sent', '2022-08-16 02:05:58', '{\"Negative\":\"0.911\"}', '{\"Not Urgent\":\"0.966\"}', 0.400833, NULL, 9, '-'),
(103, 'courier', 'complaint', 'Three of my parcels have been delivered to my neighbor this month, please deliver the parcels accurately according to the address of shipment.', 'Sent', '2022-08-16 02:06:12', '{\"Positive\":\"0.509\"}', '{\"Not Urgent\":\"0.805\"}', 0.043362, NULL, 9, '-'),
(104, 'courier', 'complaint', 'The delivery man that delivered my parcel last week was rude and impolite. ', 'Sent', '2022-08-16 02:07:12', '{\"Negative\":\"0.902\"}', '{\"Not Urgent\":\"0.974\"}', 0.397452, NULL, 9, '-'),
(105, 'customer service', 'suggestion', 'I was billed twice for the service and this is the second time it has happened. Can you please look into this matter right away? This situation will affect your company reputation if not solve immediately.', 'Sent', '2022-09-01 15:22:47', '{\"Negative\":\"0.751\"}', '{\"Urgent\":\"0.992\"}', 0.705915, NULL, 5, '-'),
(106, 'customer service', 'suggestion', 'I love the company’s CSR initiative and general culture.', 'Sent', '2022-09-01 15:27:22', '{\"Positive\":\"0.942\"}', '{\"Not Urgent\":\"0.916\"}', 0.061314, NULL, 5, '-'),
(107, 'customer service', 'suggestion', 'I received my parcel but it was half open, and the parcel’s condition was quite miserable. Please give me reasonable explanation.', 'Sent', '2022-09-01 15:28:29', '{\"Negative\":\"0.982\"}', '{\"Not Urgent\":\"0.975\"}', 0.429885, NULL, 5, '-'),
(109, 'general issue', 'complaint', 'I received my parcel but it was half open, and the parcel’s condition was quite miserable. Please give me reasonable explanation.', 'Sent', '2022-12-30 18:36:58', '{\"negative\":\"0.79879534\"}', '{\"Not Urgent\":\"0.975\"}', 0.032175, NULL, 5, '-'),
(111, 'general issue', 'appraisal', 'the parcel is delivered on time.', 'Sent', '2023-01-17 17:13:10', '{\"positive\":\"0.74609196\"}', '{\"Not Urgent\":\"1\"}', 0.033, NULL, 7, '-');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_unknown`
--

CREATE TABLE `feedback_unknown` (
  `feedback_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `feedback_type` varchar(50) NOT NULL,
  `feedback_desc` varchar(500) NOT NULL,
  `feedback_status` varchar(50) NOT NULL,
  `feedback_date` datetime NOT NULL DEFAULT current_timestamp(),
  `feedback_sentiment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`feedback_sentiment`)),
  `feedback_urgency` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`feedback_urgency`)),
  `feedback_priority` float NOT NULL,
  `feedback_update` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback_unknown`
--

INSERT INTO `feedback_unknown` (`feedback_id`, `username`, `email`, `feedback_type`, `feedback_desc`, `feedback_status`, `feedback_date`, `feedback_sentiment`, `feedback_urgency`, `feedback_priority`, `feedback_update`) VALUES
(5, 'soo', 'sookt9@gmail.com', 'suggestion', 'test 123 456', 'Complete', '2022-05-19 19:51:47', '{\"Neutral\":\"0.843\"}', '{\"Not Urgent\":\"1.0\"}', 0, 'done~~~'),
(6, 'soo', 'sookt9@gmail.com', 'appraisal', 'the driver is nice', 'sent', '2022-05-20 01:00:54', '{\"Positive\":\"0.868\"}', '{\"Not Urgent\":\"1.0\"}', 0, NULL),
(7, 'soo', 'B032020017@student.utem.edu.my', 'complaint', 'the driver is rude', 'sent', '2022-05-20 11:08:12', '{\"Negative\":\"0.98\"}', '{\"Not Urgent\":\"1.0\"}', 0, NULL),
(9, 'soo', 'sookt9@gmail.com', 'complaint', 'testing 123', 'In progress', '2022-05-26 17:27:44', '{\"Neutral\":\"0.827\"}', '{\"Not Urgent\":\"1.0\"}', 0.135548, 'zxc'),
(14, 'qwe', 'sookt@gmail.com', 'suggestion', 'asd zxc', 'sent', '2022-05-26 23:33:41', '{\"Neutral\":\"0.865\"}', '{\"Not Urgent\":\"0.973\"}', 0.139369, NULL),
(15, 'soo', 'katao910@gmail.com', 'complaint', 'impolite driver', 'Sent', '2022-05-30 20:24:29', '{\"Negative\":\"0.918\"}', '{\"Not Urgent\":\"0.973\"}', 0.032109, NULL),
(16, 'asd', 'a@gmail.com', 'suggestion', 'qwe', 'Sent', '2022-07-21 21:52:44', '{\"Positive\":\"0.476\"}', '{\"Not Urgent\":\"0.973\"}', 0.047817, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'admin'),
(2, 'courier'),
(3, 'general issue'),
(4, 'customer service'),
(5, 'user'),
(6, 'chatbot'),
(7, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `role`) VALUES
(1, 'admin', 'admin', NULL, 1),
(2, 'courier', 'courier', NULL, 2),
(3, 'general issue', 'general issue', NULL, 3),
(4, 'customer service', 'customer service', NULL, 4),
(5, 'soo', '123456', 'sookt9@gmail.com', 5),
(6, 'chatbot', 'chatbot', NULL, 6),
(7, 'kstao', '123456', 'kstao910@gmail.com', 5),
(8, 'test', 'test', NULL, 2),
(9, 'test_user', '123456', NULL, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delivery_details`
--
ALTER TABLE `delivery_details`
  ADD PRIMARY KEY (`tracking_number`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `feedback_user_fk` (`user_id`),
  ADD KEY `tracking_number` (`tracking_number`);

--
-- Indexes for table `feedback_unknown`
--
ALTER TABLE `feedback_unknown`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `feedback_unknown`
--
ALTER TABLE `feedback_unknown`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`tracking_number`) REFERENCES `delivery_details` (`tracking_number`),
  ADD CONSTRAINT `feedback_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
