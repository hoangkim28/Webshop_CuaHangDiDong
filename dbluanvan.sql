-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2019 at 08:28 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbluanvan`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) NOT NULL,
  `nickname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) NOT NULL,
  `date_order` date DEFAULT NULL,
  `money_total` double(20,2) NOT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `money_total`, `payment`, `trans_method`, `note`, `created_at`, `updated_at`) VALUES
(19, 10, '2019-03-28', 5090000.00, 'COD', NULL, NULL, '2019-03-28 11:06:53', '2019-03-28 11:06:53'),
(20, 10, '2019-03-28', 18070000.00, 'COD', NULL, '123123', '2019-03-28 15:29:21', '2019-03-28 15:29:21'),
(21, 10, '2019-03-28', 298000.00, 'COD', NULL, '12312', '2019-03-28 15:31:34', '2019-03-28 15:31:34'),
(22, 10, '2019-03-28', 27679000.00, 'COD', NULL, '12312', '2019-03-28 15:36:35', '2019-03-28 15:36:35'),
(23, 10, '2019-03-28', 25540000.00, 'COD', NULL, '12312', '2019-03-28 15:38:49', '2019-03-28 15:38:49'),
(24, 10, '2019-03-28', 5090000.00, 'COD', NULL, 'đá', '2019-03-28 15:47:35', '2019-03-28 15:47:35'),
(25, 10, '2019-03-28', 6639000.00, 'COD', NULL, '123', '2019-03-28 15:51:39', '2019-03-28 15:51:39'),
(26, 10, '2019-03-28', 10180000.00, 'COD', NULL, NULL, '2019-03-28 16:14:23', '2019-03-28 16:14:23'),
(27, 10, '2019-03-28', 20360000.00, 'COD', NULL, '123123', '2019-03-28 16:37:33', '2019-03-28 16:37:33'),
(28, 10, '2019-03-29', 4490000.00, 'COD', NULL, NULL, '2019-03-28 17:02:18', '2019-03-28 17:02:18'),
(29, 10, '2019-03-29', 4490000.00, 'COD', NULL, '123', '2019-03-28 17:04:17', '2019-03-28 17:04:17'),
(30, 10, '2019-03-29', 8980000.00, 'COD', NULL, NULL, '2019-03-28 17:08:16', '2019-03-28 17:08:16'),
(31, 10, '2019-03-29', 49800000.00, 'COD', NULL, '12312321', '2019-03-28 17:10:31', '2019-03-28 17:10:31'),
(32, 10, '2019-03-29', 149000.00, 'COD', NULL, '123123', '2019-03-28 17:11:57', '2019-03-28 17:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill_details`
--

INSERT INTO `bill_details` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(21, 19, 2, 1, 5090000.00, '2019-03-28 11:06:53', '2019-03-28 11:06:53'),
(22, 20, 2, 1, 5090000.00, '2019-03-28 15:29:21', '2019-03-28 15:29:21'),
(23, 20, 6, 2, 6490000.00, '2019-03-28 15:29:21', '2019-03-28 15:29:21'),
(24, 21, 9, 2, 149000.00, '2019-03-28 15:31:34', '2019-03-28 15:31:34'),
(25, 22, 5, 1, 3990000.00, '2019-03-28 15:36:36', '2019-03-28 15:36:36'),
(26, 22, 4, 1, 190000.00, '2019-03-28 15:36:36', '2019-03-28 15:36:36'),
(27, 22, 3, 1, 4490000.00, '2019-03-28 15:36:36', '2019-03-28 15:36:36'),
(28, 22, 2, 1, 5090000.00, '2019-03-28 15:36:36', '2019-03-28 15:36:36'),
(29, 22, 6, 1, 6490000.00, '2019-03-28 15:36:36', '2019-03-28 15:36:36'),
(30, 22, 7, 1, 5290000.00, '2019-03-28 15:36:36', '2019-03-28 15:36:36'),
(31, 22, 8, 1, 1990000.00, '2019-03-28 15:36:36', '2019-03-28 15:36:36'),
(32, 22, 9, 1, 149000.00, '2019-03-28 15:36:36', '2019-03-28 15:36:36'),
(33, 23, 2, 1, 5090000.00, '2019-03-28 15:38:49', '2019-03-28 15:38:49'),
(34, 23, 6, 1, 6490000.00, '2019-03-28 15:38:49', '2019-03-28 15:38:49'),
(35, 23, 7, 1, 5290000.00, '2019-03-28 15:38:49', '2019-03-28 15:38:49'),
(36, 23, 3, 1, 4490000.00, '2019-03-28 15:38:49', '2019-03-28 15:38:49'),
(37, 23, 4, 1, 190000.00, '2019-03-28 15:38:50', '2019-03-28 15:38:50'),
(38, 23, 5, 1, 3990000.00, '2019-03-28 15:38:50', '2019-03-28 15:38:50'),
(39, 24, 2, 1, 5090000.00, '2019-03-28 15:47:35', '2019-03-28 15:47:35'),
(40, 25, 6, 1, 6490000.00, '2019-03-28 15:51:39', '2019-03-28 15:51:39'),
(41, 25, 9, 1, 149000.00, '2019-03-28 15:51:39', '2019-03-28 15:51:39'),
(42, 26, 2, 2, 5090000.00, '2019-03-28 16:14:24', '2019-03-28 16:14:24'),
(43, 27, 2, 4, 5090000.00, '2019-03-28 16:37:33', '2019-03-28 16:37:33'),
(44, 28, 3, 1, 4490000.00, '2019-03-28 17:02:18', '2019-03-28 17:02:18'),
(45, 29, 3, 1, 4490000.00, '2019-03-28 17:04:17', '2019-03-28 17:04:17'),
(46, 30, 3, 2, 4490000.00, '2019-03-28 17:08:16', '2019-03-28 17:08:16'),
(47, 31, 2, 5, 5090000.00, '2019-03-28 17:10:32', '2019-03-28 17:10:32'),
(48, 31, 3, 5, 4490000.00, '2019-03-28 17:10:32', '2019-03-28 17:10:32'),
(49, 31, 4, 10, 190000.00, '2019-03-28 17:10:32', '2019-03-28 17:10:32'),
(50, 32, 9, 1, 149000.00, '2019-03-28 17:11:57', '2019-03-28 17:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `id_product`, `email`, `name`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'jsdjshds@gmail.com', 'jjsjsj', 'jasjdhj', 1, '2019-03-30 06:27:50', '2019-03-30 06:28:14'),
(2, 2, '232322@gmail.com', 'kjdhk', 'áhdsu', 1, '2019-03-30 06:31:55', '2019-03-30 06:31:55'),
(3, 2, '1111111111@gmail.com', 'dhsạhdạ', 'djshjadhj', 1, '2019-03-30 06:34:45', '2019-03-30 06:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `birthday`, `gender`, `type`, `created_at`, `updated_at`) VALUES
(10, 'Kim Thanh Hoang', 'kthoang28@gmail.com', '0355640750', 'Hẻm 116, Đường 3 Tháng 2, P. Xuân Khánh, Quận Ninh Kiều, Cần Thơ', NULL, NULL, NULL, '2019-03-28 11:06:53', '2019-03-28 11:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_manager` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_typeProduct` int(11) DEFAULT NULL,
  `id_slides` int(11) DEFAULT NULL,
  `id_news` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `id_product`, `id_typeProduct`, `id_slides`, `id_news`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'Redmi-Note-7-1.png', 14, NULL, NULL, NULL, NULL, '2019-03-30 05:46:59', '2019-03-30 05:46:59'),
(2, 'Redmi-Note-7-2.jpg', 14, NULL, NULL, NULL, NULL, '2019-03-30 05:46:59', '2019-03-30 05:46:59'),
(3, 'Redmi-Note-7-9.jpg', 14, NULL, NULL, NULL, NULL, '2019-03-30 05:46:59', '2019-03-30 05:46:59'),
(4, 'Redmi-Note-7-9.jpg', 2, NULL, NULL, NULL, NULL, '2019-03-30 06:45:07', '2019-03-30 06:45:07'),
(5, 'Redmi-Note-7-2.jpg', 2, NULL, NULL, NULL, NULL, '2019-03-30 06:45:08', '2019-03-30 06:45:08'),
(6, 'Redmi-Note-7-1.png', 2, NULL, NULL, NULL, NULL, '2019-03-30 06:45:08', '2019-03-30 06:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_21_083341_create_products_table', 1),
(4, '2018_11_21_084024_create_product_types_table', 1),
(5, '2018_11_21_084245_create_images_table', 1),
(6, '2018_11_21_084328_create_bills_table', 1),
(7, '2018_11_21_084430_create_bill_details_table', 1),
(8, '2018_11_21_084518_create_customers_table', 1),
(9, '2018_11_21_084702_create_slides_table', 1),
(10, '2018_11_21_084742_create_departments_table', 1),
(11, '2018_11_21_084820_create_news_table', 1),
(12, '2018_11_21_084916_create_order_status_table', 1),
(13, '2018_12_01_123400_create_product_type_items_table', 1),
(14, '2018_12_05_081455_create_accounts_table', 1),
(15, '2019_02_28_200119_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `images`, `description`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'Cách kích hoạt chế độ nền tối bị ẩn trên Facebook Messenger', 'Bước 1: Các bạn phải cài đặt phiên bản Facebook Messenger mới nhất:\r\n\r\nFacebook Messenger mới nhất dành cho Android.\r\nFacebook Messenger mới nhất dành cho iOS.\r\nBước 2: Mở một đoạn chat bất kỳ với bạn bè và sau đó gửi biểu tượng hình mặt trăng 🌙 (bạn có thể ấn vào để copy), khi gửi xong bạn sẽ thấy thông báo Bạn đã tìm thấy chế độ tối! đi kèm với ghi chú Bạn bè của bạn cũng có thể mở khóa tính năng này bằng cách gửi biểu tượng cảm xúc mặt trăng.\r\n\r\nRồi sau đó, bạn hãy nhấn vào mục BẬT TRONG PHẦN CÀI ĐẶT.\r\n\r\nước 3: Đến đây bạn chỉ việc kích hoạt chế độ tối và giao diện nền tối sẽ hiển thị ra như hình bên dưới. Nếu bạn không thích chế độ nền tối này, chỉ việc tắt ở trong phần cài đặt thì giao diện sẽ trở lại nền trắng như cũ.\r\n\r\nFacebook Messenger\r\nTừ bây giờ là bạn có thể trải nghiệm được chế độ nền tối trên Facebook Messenger được rồi, nếu thấy hay thì hãy chia sẻ cho bạn bè của mình cùng biết nhé!', '1551595176_1_800x450.jpg', 'Ngoài tính năng Unsend (thu hồi tin nhắn đã gửi) thì Facebook cũng đang thử nghiệm thêm chế độ Dark Mode (nền tối) trên Messenger. Tuy nhiên chế độ nền tối chỉ được thử nghiệm ở một số quốc gia nhất định và tin vui là người dùng tại Việt Nam cũng có thể trải nghiệm tính năng này thông qua mẹo nhỏ dưới đây.\r\nChế độ nền tối có lợi ích sẽ giúp người dùng thao tác với màn hình trong môi trường tối thoải mái và giảm tình trạng mỏi mắt. Bên cạnh đó, chế độ nền tối cũng sẽ giúp tiết kiệm pin đáng kể trên smartphone dùng màn hình AMOLED.\r\n\r\nLưu ý: Cách kích hoạt chế độ nền tối dưới đây đều áp dụng cho thiết bị chạy hệ điều hành Android và iOS.', 1, '2019-03-03 06:34:29', '2019-03-03 06:39:36'),
(2, '2019 có phải là năm dành cho điện thoại 5G?', 'Phần cứng quá đắt\r\nRào cản đầu tiên mà công nghệ mới cần phải đối diện để trở nên phổ biến hơn là khá rõ ràng. Những điện thoại 5G thực sự rất đắt. Galaxy S10 5G gần như sẽ có giá hơn 1.000 USD (khoảng 23 triệu đồng), còn với Huawei Mate X có giá vượt quá 2.500 USD (khoảng 58 triệu đồng).\r\n\r\nẢnh minh họa\r\nChỉ có Xiaomi ở thời điểm hiện tại là cho ra mắt điện thoại 5G với một mức giá cạnh tranh. Bởi vì công ty Trung Quốc đã tung ra một biến thể khác cho điện thoại hiện có của hãng là Xiaomi Mi MIX 3 và cập nhật thông số kỹ thuật mới cho nó.\r\n\r\nMức tiêu thụ năng lượng cao\r\nMột số điện thoại 5G được công bố gần đây đều được trang bị pin rất lớn. Galaxy S10 5G thậm chí trang bị pin 4.500 mAh. Phần lớn còn lại thì sử dụng pin dung lượng bình thường và không vượt quá mức trung bình như Mi MIX 3 5G (3.300 mAh).\r\n\r\nẢnh minh họa\r\nĐây là một vấn đề lớn của thế hệ điện thoại 5G đầu tiên vì mạng di động mới hiện tại sử dụng quá nhiều năng lượng.\r\n\r\nGần như vẫn chưa có cơ sở hạ tầng hỗ trợ 5G\r\nMặc dù các nhà mạng muốn những bước tiến lớn với các dự án mở đầu hay thử nghiệm với cuộc gọi video, phát video trên mạng 5G, thực tế thì cơ sở hạ tầng cần thiết để cung cấp 5G vẫn ở giai đoạn sơ khai. Chỉ có những thành phố lớn nhất đã được trang bị các ăng-ten thế hệ mới, phần còn lại của thế giới sẽ phải đợi vài tháng (hoặc vài năm) để có thể trải nghiệm công nghệ mới này.\r\n\r\nẢnh minh họa\r\nThực sự 4G hiện tại vẫn chưa hỗ trợ ở khắp mọi nơi, các lỗ hỗng vẫn còn hiện diện với các nhà mạng ở nhiều nơi trên thế giới. Tất nhiên, để phủ sóng toàn bộ 100% là không thể. Tóm lại, sẽ mất rất nhiều thời gian trước khi hầu hết người dùng có thể sử dụng 5G.\r\n\r\nCác gói dịch vụ 5G sẽ rất đắt\r\nẢnh minh họa\r\nVào thời điểm 5G ra mắt, các gói dịch vụ được các nhà mạng đề xuất ban đầu sẽ vô cùng đắt đỏ. Nếu bạn tin rằng 50 GB dữ liệu di động là rất nhiều thì hãy tưởng tượng lưu lượng được tạo ra trên mạng 5G. Tốc độ truyền dữ liệu rất cao có thể rút hết gói cước bạn đã đăng ký trong thời gian rất ngắn nếu bạn không chú ý.\r\n\r\nVì thế, các gói dịch vụ sẽ cung cấp lưu lượng cao hơn và thậm chí là mức giá cố định nhưng chắc chắn là sẽ không rẻ.\r\n\r\nLời kết\r\nTới thời điểm mà mạng 5G trở nên phủ sóng đủ rộng, các thành phần để sản xuất điện thoại 5G có thể trở nên rẻ hơn dẫn tới giá thành điện thoại cũng giảm xuống. Ngoài ra, công nghệ SoC và ăng-ten sẽ tiếp tục được cải thiện, giảm mức tiêu thụ điện năng và tăng độ tin cậy. Vì thế, người dùng nên chờ đợi trong giai đoạn này.', '1551595325_smartphone5g_800x450.jpg', 'Tiêu chuẩn mới của kết nối mạng đã xuất hiện trong vài năm gần đây và năm 2019 sẽ là năm mà thế hệ kết nối tiếp theo trở thành xu hướng chung nhờ vào sự phát triển mạnh mẽ của điện thoại hỗ trợ 5G. Nhưng điều này có thật sự đúng?', 1, '2019-03-03 06:42:05', '2019-03-03 06:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `id_bill`, `id_user`, `status`, `created_at`, `updated_at`) VALUES
(2, 16, 1, 1, '2019-03-28 08:40:14', '2019-03-28 09:06:07'),
(3, 17, 1, 1, '2019-03-28 08:45:04', '2019-03-28 11:01:14'),
(4, 18, 1, 1, '2019-03-28 09:40:31', '2019-03-28 09:40:31'),
(5, 15, 1, 1, NULL, NULL),
(6, 19, 1, 1, '2019-03-28 11:06:53', '2019-03-28 14:56:37'),
(7, 20, 1, 1, '2019-03-28 15:29:21', '2019-03-28 15:29:28'),
(8, 21, 1, 1, '2019-03-28 15:31:34', '2019-03-28 15:31:39'),
(9, 22, 1, 1, '2019-03-28 15:36:36', '2019-03-28 15:36:52'),
(10, 23, 1, 1, '2019-03-28 15:38:49', '2019-03-28 15:39:03'),
(11, 24, 1, 1, '2019-03-28 15:47:35', '2019-03-28 15:47:44'),
(12, 25, 1, 1, '2019-03-28 15:51:39', '2019-03-28 16:04:04'),
(13, 26, 1, 1, '2019-03-28 16:14:24', '2019-03-28 16:14:33'),
(14, 27, 1, 1, '2019-03-28 16:37:33', '2019-03-28 16:37:44'),
(15, 28, 1, 1, '2019-03-28 17:02:18', '2019-03-28 17:02:45'),
(16, 29, 1, 1, '2019-03-28 17:04:17', '2019-03-28 17:04:27'),
(17, 30, 1, 1, '2019-03-28 17:08:16', '2019-03-28 17:08:26'),
(18, 31, 1, 1, '2019-03-28 17:10:32', '2019-03-28 17:10:41'),
(19, 32, 1, 1, '2019-03-28 17:11:57', '2019-03-28 17:12:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_type_item` int(11) NOT NULL,
  `unit_price` double(20,2) NOT NULL,
  `unit_purchase_price` double(20,2) DEFAULT NULL,
  `promotion_price` double(20,2) DEFAULT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty_product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_producer` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewcount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `id_type_item`, `unit_price`, `unit_purchase_price`, `promotion_price`, `unit`, `qty_product`, `id_producer`, `description`, `images`, `id_user`, `display_status`, `viewcount`, `created_at`, `updated_at`) VALUES
(2, 'Huawei Y9 (2019)', 2, 5490000.00, 3000000.00, 5090000.00, 'Chiếc', '0', NULL, '<h2>Thông số kỹ thuật</h2><p>Màn hình :6.5 inchs, 1080 x 2340 Pixels</p><p>Camera trước :<strong>16 MP</strong> và 2 MP (2 camera)</p><p>Camera sau :13 MP và 2 MP (2 camera)</p><p>RAM :4 GB</p><p>Bộ nhớ trong :64 GB</p><p>CPU :HUAWEI Kirin 710, 8, 4xCortex A73 2.2GHz + 4xCortex A53 1.7GHz</p><p>GPU :Mali-G51 MP4</p><p>Dung lượng pin :<strong>4000 </strong>mAh</p><p>Hệ điều hành :Android 8.1</p><p>Thẻ SIM :Nano SIM, 2 Sim</p>', '1551600149_Y92019.jpg', 1, NULL, 1, '2019-03-03 08:02:29', '2019-03-30 06:50:11'),
(3, 'Huawei MediaPad T3 10.0', 6, 4490000.00, 2490000.00, 4490000.00, 'Chiếc', '11', NULL, '<h2>Thông số kỹ thuật</h2><ul><li>Màn hình :9.6\", 1280 x 800 pixels</li><li>Camera trước :2 MP and fixed focus</li><li>Camera sau :5 MP and auto focus</li><li>CPU :Qualcomm MSM8917</li><li>GPU :Adreno 308@ 600 MHz</li><li>Bộ nhớ trong :16 GB</li><li>Kết nối :Hỗ trợ 3G: WCDMA: AMR-NB, 4G LTE:  LTE-FDD: B1, B3, B5, (B19), B7, B8, B20  LTE-TDD: B38, B39, B40, B41 (2555–2655MHz), Wi-Fi: 802.11 a/b/g/n@2.4GHz&amp;5GHz, Bluetooth: BT 4.2, compatible with BT 3.0 and BT 2.1+EDR</li><li>Thời gian sử dụng :34-90 tiếng</li><li>Hệ điều hành :Android 7.0</li></ul>', '1551600493_636489482634446409_1.jpg', 1, NULL, 0, '2019-03-03 08:08:13', '2019-03-28 17:10:41'),
(4, 'Sạc Dự Phòng Xiaomi 5.000 mAh', 8, 190000.00, 70000.00, 190000.00, 'Chiếc', '90', NULL, '<ul><li>Thiết kế pin dự phòng Xiaomi Mi 5000 mAh: gọn gàng và sang trọng</li><li>Pin dự phòng Xiaomi Mi 5000 mAh tương thích mọi thiết bị</li><li>Pin dự phòng Xiaomi Mi 5000 mAh sử dụng linh kiện cao cấp</li><li>Hiệu suất pin dự phòng Xiaomi Mi 5000 mAh rất ấn tượng</li></ul><p>Viên pin của Xiaomi có thể sạc đầy 1 lần cho Mi 4, 1,8 lần cho iPhone 6 và 2,2 lần cho iPhone 5s, đảm bảo năng lượng cho người dùng sử dụng từ 1 – 2 ngày liên tục mà không cần sạc tùy vào thiết bị. Như vậy, hiệu suất chuyển đổi của Xiaomi Mi 5000 mAh là rất tốt, nhất là khi nó được bán với mức giá vô cùng dễ chịu.</p><p>&nbsp;</p>', '1551601073_Original-Xiaomi-Power-Bank-5000mAh2-Mi-Portable-Charger-Ultra-Slim-Powerbank-Xiaomi-5000mAh-External-Battery-for.jpg_640x640.jpg', 1, NULL, 0, '2019-03-03 08:17:53', '2019-03-28 17:10:41'),
(5, 'Samsung Galaxy Tab E', 7, 3990000.00, 1700000.00, 3990000.00, 'Chiếc', '15', NULL, '<h2>Thông số kỹ thuật</h2><ul><li>Màn hình :9.6 inch, 1280 x 800 Pixels</li><li>Camera trước :2.0 MP</li><li>Camera sau :5.0 MP</li><li>CPU :Spreadtrum 4 nhân</li><li>GPU :Mali-400</li><li>RAM :1.5 GB</li><li>Bộ nhớ trong :8 GB</li><li>Kết nối :Hỗ trợ 3G: Có 3G (tốc độ Download 21Mbps/42 Mbps; Upload 5.76 Mbps), 4G LTE: Không, Wi-Fi: 802.11 b/g/n 2.4GHz, Bluetooth: 4.0</li><li>Thời gian sử dụng :7 giờ</li></ul>', '1551618214_u_10139237.jpg', 1, NULL, 0, '2019-03-03 13:03:34', '2019-03-03 13:03:34'),
(6, 'OPPO F9', 3, 6990000.00, 3490000.00, 6490000.00, 'Chiếc', '20', NULL, '<h2>Thông số kỹ thuật</h2><ul><li>Màn hình :6.3 inch, 1080 x 2340 pixels</li><li>Camera trước :25 MP</li><li>Camera sau :16 MP và 2 MP (2 camera)</li><li>RAM :4 GB</li><li>Bộ nhớ trong :64 GB</li><li>CPU :MediaTek Helio P60 , 8 nhân, 2.0 Ghz</li><li>GPU :Mali-G72 MP3</li><li>Dung lượng pin :3500 mAh</li><li>Hệ điều hành :ColorOS 5.2 (Android 8.1)</li><li>Thẻ SIM :Nano sim, 2 Sim, hỗ trợ 4G</li></ul>', '1551618883_OPPO-A7x.jpg', 1, NULL, 0, '2019-03-03 13:08:01', '2019-03-05 05:38:39'),
(7, 'XIAOMI MI A2 4GB-32GB', 4, 5990000.00, 2890000.00, 5290000.00, 'Chiếc', '25', NULL, '<h2>Thông số kỹ thuật</h2><ul><li>Màn hình :5.99\", 1080 x 2160 pixels</li><li>Camera trước :20 MP</li><li>Camera sau :20 MP + 12 MP</li><li>RAM :4 GB</li><li>Bộ nhớ trong :32GB</li><li>CPU :Qualcomm Snapdragon 660, 8 nhân, 2.2 GHz</li><li>GPU :Adreno 512</li><li>Dung lượng pin :3010 mAh, có sạc nhanh</li><li>Hệ điều hành :Android One</li><li>Thẻ SIM :Nano, 2 Sim, hỗ trợ 4G</li></ul>', '1551619083_1-1.jpg', 1, NULL, 0, '2019-03-03 13:18:03', '2019-03-03 13:18:03'),
(8, 'XIAOMI REDMI 6A 2GB-16GB', 4, 2290000.00, 890000.00, 1990000.00, 'Chiếc', '25', NULL, '<h2>Thông số kỹ thuật</h2><ul><li>Màn hình :5.45 inches, 1440 x 720 Pixel</li><li>Camera trước :5.0 MP</li><li>Camera sau :13.0 MP</li><li>RAM :2 GB</li><li>Bộ nhớ trong :16 GB</li><li>CPU :Mediatek MT6761 , 4, 2.0 GHz</li><li>GPU :PowerVR GE8320</li><li>Dung lượng pin :3000 mAh</li><li>Hệ điều hành :Android 8.1</li><li>Thẻ SIM :2 SIM Nano (SIM 2 chung khe thẻ nhớ), 2 Sim</li></ul>', '1551619295_global-version-xiaomi-redmi-6a-2gb-16gb-smartphone-silver-gray-688095.jpg', 1, NULL, 2, '2019-03-03 13:21:35', '2019-03-30 05:40:19'),
(9, 'Thẻ nhớ Micro SD 32Gb Sandisk', 9, 290000.00, 60000.00, 149000.00, 'Chiếc', '79', NULL, '<h2>Thông số kỹ thuật</h2><ul><li>Loại thẻ: Thẻ Micro SD</li><li>Dung lượng: &nbsp;32 GB</li><li>Tốc độ đọc: &nbsp;30 MB/s</li><li>Tốc độ ghi: &nbsp;10 MB/s</li><li>Thương hiệu uy tín: Sandisk.</li><li>Tốc độ đọc: 30 MB/s; Tốc độ ghi: 10 MB/s.</li><li>Không kén thiết bị nhận, dễ dàng sử dụng.</li><li>Chép một video dung lượng 1 GB vào thẻ chưa tới 2 phút.</li><li>Tương thích với hầu hết tất cả thiết bị (điện thoại, máy tính bảng).</li></ul>', '1551620217_74fb24eb7756c034b17c458377e4b6c1.jpg', 1, NULL, 0, '2019-03-03 13:36:57', '2019-03-28 17:12:05'),
(10, 'iPad 2018 WiFi 32GB', 10, 8900000.00, 5490000.00, 8900000.00, 'Chiếc', '10', NULL, '<h2>Thông số kỹ thuật</h2><ul><li>Màn hình :9.7 inches, 1536 x 2048 pixels</li><li>Camera trước :1.2 MP</li><li>Camera sau :8.0 MP</li><li>CPU :A10 Fusion</li><li>GPU :PowerVR Series7XT Plus</li><li>Bộ nhớ trong :32GB</li><li>Kết nối :Hỗ trợ 3G: No, 4G LTE: No, Wi-Fi: Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot, Bluetooth: 4.2, A2DP, EDR, LE</li><li>Thời gian sử dụng :Up to 9 hours</li><li>Hệ điều hành :iOS11</li></ul>', '1551620616_apple-ipad-97-2018-128gb-wifi-gold-190198720672-ebay.jpg', 1, NULL, 0, '2019-03-03 13:43:36', '2019-03-03 13:43:36'),
(12, 'Huawei Mate 20 Pro', 2, 21990000.00, 9000000.00, 18990000.00, 'Chiếc', '15', NULL, '<h2>Thông số kỹ thuật</h2><ul><li>Màn hình :6.39 inchs, 1440 x 3120 pixels</li><li>Camera trước :24MP</li><li>Camera sau :40Mp + 20Mp + 8Mp ( 3 Camera)</li><li>RAM :6 GB</li><li>Bộ nhớ trong :128 GB</li><li>CPU :HUAWEI Kirin 980, 8, 2xCortex A76 2.6 GHz + 2xCortex A76 1.92 GHz + 4xCortex A55 1.8 GHz</li><li>GPU :Mali-G76</li><li>Dung lượng pin :4200mAh</li><li>Hệ điều hành :Android 9</li><li>Thẻ SIM :Nano SIM, 2 Sim</li></ul>', '1551620942_HUAWEI-Mate-20-Pro-6-39-Inch-8GB-128GB-Smartphone-Aurora-752017-.jpg', 1, NULL, 0, '2019-03-03 13:49:02', '2019-03-03 13:49:02'),
(13, 'Sony ZX310AP', 13, 890000.00, 350000.00, 690000.00, 'Chiếc', '35', NULL, '<p>Hãy lựa chọn những màu sắc thể hiện phong cách của bạn.</p><p>Vành tai nghe có lớp đệm mang lại cảm giác thoải mái khi nghe.</p><p>Dải tần số 10–24,000Hz.</p><p>Màng loa ferit 30 mm cho âm thanh cân bằng, mạnh mẽ.</p><p>Thiết kế dạng gập, gọn nhẹ để nghe nhạc mọi nơi.</p><p>&nbsp;</p>', '1551764082_tai nghe sony.jpg', 1, NULL, 0, '2019-03-05 05:34:42', '2019-03-05 05:34:42'),
(14, 'Xiaomi Redmi Note 7 Chính Hãng DGW Ram 3GB / 32GB', 4, 3990000.00, 3500000.00, 3990000.00, 'Chiếc', '100', NULL, '<p>Redmi Note 7 là chiếc smartphone mới nhất của Xiaomi vừa được ra mắt tại Việt Nam. Màn hình được thiết kế theo kiểu giọt nước ấn tượng,trang bị camera cực khủng lên tới 48 MP, bộ vi xử lý cực mạnh Snapdragon 660, mặt lưng bằng kính cứng chống vỡ với dải màu Gradient sang trọng, cao cấp . Bộ phụ kiện chuẩn gồm : Hộp, sạc, cáp type C, que chọc sim, ốp silicon. Bảo hành chính hãng 18 tháng trên toàn quốc.</p>', '1553924819_Xiaomi-Redmi-Note-7-xanh.png', 1, NULL, 0, '2019-03-30 05:46:59', '2019-03-30 05:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`id`, `name`, `description`, `images`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'ĐIỆN THOẠI', '<p>&nbsp;</p>', NULL, 1, '2019-03-03 05:33:00', '2019-03-03 05:33:00'),
(2, 'TABLET', '<p>&nbsp;</p>', NULL, 1, '2019-03-03 05:34:20', '2019-03-03 05:34:20'),
(3, 'PHỤ KIỆN', '<p>&nbsp;</p>', NULL, 1, '2019-03-03 05:34:33', '2019-03-03 05:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_type_items`
--

CREATE TABLE `product_type_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_type` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_type_items`
--

INSERT INTO `product_type_items` (`id`, `name`, `id_type`, `description`, `images`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'SAMSUNG', 1, '<p>&nbsp;</p>', '1551591580_Samsung-logo-2015-640x480.png', 1, '2019-03-03 05:39:40', '2019-03-03 05:39:40'),
(2, 'HUAWEI', 1, '<p>&nbsp;</p>', '1551592014_華為-01.png', 1, '2019-03-03 05:43:01', '2019-03-03 05:46:54'),
(3, 'OPPO', 1, '<p>&nbsp;</p>', '1551592865_Logo-Oppo.png', 1, '2019-03-03 05:49:30', '2019-03-03 06:01:05'),
(4, 'XIAOMI', 1, '<p>&nbsp;</p>', '1551592723_xiaomi-logo-1.png', 1, '2019-03-03 05:52:22', '2019-03-03 05:58:43'),
(6, 'HUAWEI', 2, '<p>&nbsp;</p>', '1551600327_華為-01.png', 1, '2019-03-03 08:05:27', '2019-03-03 08:05:27'),
(7, 'SAMSUNG', 2, '<p>&nbsp;</p>', '1551600349_Samsung-logo-2015-640x480.png', 1, '2019-03-03 08:05:49', '2019-03-03 08:05:49'),
(8, 'XIAOMI', 3, '<p>&nbsp;</p>', '1551600710_xiaomi-logo-1.png', 1, '2019-03-03 08:11:50', '2019-03-03 08:11:50'),
(9, 'SANDISK', 3, '<p>&nbsp;</p>', '1551619846_sandisk-logo-share-158575.png', 1, '2019-03-03 13:30:46', '2019-03-03 13:30:46'),
(10, 'APPLE', 2, '<p>&nbsp;</p>', '1551620368_Apple-Logo-black.png', 1, '2019-03-03 13:39:28', '2019-03-03 13:39:28'),
(13, 'SONY', 3, '<p>&nbsp;</p>', '1551763424_sony logo.png', 1, '2019-03-05 05:23:44', '2019-03-05 05:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` text COLLATE utf8mb4_unicode_ci,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `link`, `images`, `slogan`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'homePageClient', '1551593764_09_02_2019_22_58_10_iphone-master-800-300.png', '<p>&nbsp;</p>', 1, '2019-03-03 06:16:04', '2019-03-03 06:16:04'),
(2, 'homePageClient', '1551594694_28_02_2019_23_05_06_800x300.png', '<p>&nbsp;</p>', 1, '2019-03-03 06:31:34', '2019-03-03 06:31:34'),
(3, 'homePageClient', '1551594705_636869960333207599_Samsung-Thang3-H1.jpg', '<p>&nbsp;</p>', 1, '2019-03-03 06:31:45', '2019-03-03 06:31:45'),
(4, 'homePageClient', '1551764650_28_02_2019_21_44_57_Vsmart-500k-800-300.png', '<p>&nbsp;</p>', 1, '2019-03-05 05:44:10', '2019-03-05 05:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `position`, `id_department`, `level`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', '012345678', 'Địa chỉ', NULL, NULL, '1', '$2y$10$rTDh6/JbpYCCsKLHy2hHUuCcIUqSAzHvNhvBuXbB5WutyLPTuQ7iO', '5247slkk52QcnfrGaBbYZYtVhN9uJQQYVuSrsO79xFj0Kxf5lCfWTyKr3jfV', NULL, NULL),
(4, 'Nguyễn Thanh Sơn', 'son@gmail.com', '0867573901', '206 Nguyễn Hiền, Phường An Khánh, Quận Ninh Kiều, Cần Thơ', 'Nhân viên', 'Kho hàng', '5', '$2y$10$D5HMRY4VPL2p1MWlwEoDCesPA54j7d9GVmpU8DjjVBWvJPhrwelq.', NULL, '2019-03-02 06:05:30', '2019-03-04 14:35:48'),
(5, 'Nguyễn Phương Nam', 'nam@gmail.com', '0867582417', '206 Nguyễn Chí Thanh. Phường An Khánh, Quận Ninh Kiều, Cần Thơ', 'Trưởng phòng', 'Kinh doanh', '4', '$2y$10$/rliRDeqXvRRH8DmkhmF.u4bcxaFEJxVZnMpy9KHicIYULeeHtX9m', NULL, '2019-03-02 06:09:41', '2019-03-04 14:34:49'),
(6, 'Nguyễn Phương Tùng', 'tung@gmail.com', '0908234332', '56 Trần Hưng Đạo, Thành phố Sóc Trăng', 'Trưởng phòng', 'Kho hàng', '4', '$2y$10$crE9WvBuIxHIJble81ocQ.LQ0gF7Iz/DonKlCLuSH4ldKFNSuGjJW', NULL, '2019-03-02 06:11:34', '2019-03-04 14:35:17'),
(7, 'Nguyễn Linh Nhi', 'nhi@gmail.com', '0867452375', '162 Trần Hưng Đạo, Thành phố Sóc Trăng', 'Nhân viên', 'Kinh doanh', '5', '$2y$10$XcCIPeojar9abGWf9yFTGOh40ha1vzTE04G94ztM6qMmDd0s0QWnK', NULL, '2019-03-02 06:13:24', '2019-03-04 14:36:12'),
(8, 'Trịnh Yến Nhi', 'nhi96@gmail.com', '0861412372', '56 Hai Bà Trưng, Thành phố Sóc Trăng', 'Nhân viên', 'Kho hàng', '5', '$2y$10$.pEWNQaP82u.etBNsg9GweoTdvp4kQ1/uidpeoXRwJy658PUEGrh.', NULL, '2019-03-02 06:15:30', '2019-03-04 14:36:39'),
(9, 'Đăng Minh Tâm', 'tam@gmail.com', '0943212000', 'Mạc Thiên Tích, Phường An Khánh, Quận Ninh Kiều, Cần Thơ', 'Phó giám đốc', 'Giám đốc', '3', '$2y$10$ztNLKn8EYqbg8E5jAX8QY.oJY/VvtsRSrkiFICAmDWtUZflIIImLW', NULL, '2019-03-02 06:17:59', '2019-03-04 14:34:13'),
(10, 'Trần Quốc Khánh', 'khanh@gmail.com', '0847271501', '218, Đường 3/2, Phường Hưng Lợi, Quận Ninh Kiều, Cần Thơ', 'Giám đốc', 'Giám đốc', '2', '$2y$10$sigkwJigv6Y8diIYA7a4QOCc1RVsd7MaNWfsygPTPe7Roy6UxcK5.', NULL, '2019-03-02 06:20:36', '2019-03-04 14:33:50'),
(11, 'Trần Văn Hậu', 'hau@gmail.com', '0867582416', '122/4C, Võ Văn Kiệt, Phường An Hòa, Quận Ninh Kiều, Cần Thơ', 'Nhân viên', 'Kinh doanh', '3', '$2y$10$TCnixG5sYgf3h46dWWZrwuALnGgHL3S47g2l/XRQSpkbw6V05IuO6', NULL, '2019-03-02 06:22:21', '2019-03-02 06:22:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type_items`
--
ALTER TABLE `product_type_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_type_items`
--
ALTER TABLE `product_type_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
