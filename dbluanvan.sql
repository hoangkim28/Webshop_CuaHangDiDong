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
(24, 10, '2019-03-28', 5090000.00, 'COD', NULL, '????', '2019-03-28 15:47:35', '2019-03-28 15:47:35'),
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
(2, 2, '232322@gmail.com', 'kjdhk', '??hdsu', 1, '2019-03-30 06:31:55', '2019-03-30 06:31:55'),
(3, 2, '1111111111@gmail.com', 'dhs???hd???', 'djshjadhj', 1, '2019-03-30 06:34:45', '2019-03-30 06:34:45');

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
(10, 'Kim Thanh Hoang', 'kthoang28@gmail.com', '0355640750', 'H???m 116, ???????ng 3 Th??ng 2, P. Xu??n Kh??nh, Qu???n Ninh Ki???u, C???n Th??', NULL, NULL, NULL, '2019-03-28 11:06:53', '2019-03-28 11:06:53');

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
(1, 'C??ch k??ch ho???t ch??? ????? n???n t???i b??? ???n tr??n Facebook Messenger', 'B?????c 1: C??c b???n ph???i c??i ?????t phi??n b???n Facebook Messenger m???i nh???t:\r\n\r\nFacebook Messenger m???i nh???t d??nh cho Android.\r\nFacebook Messenger m???i nh???t d??nh cho iOS.\r\nB?????c 2: M??? m???t ??o???n chat b???t k??? v???i b???n b?? v?? sau ???? g???i bi???u t?????ng h??nh m???t tr??ng ???? (b???n c?? th??? ???n v??o ????? copy), khi g???i xong b???n s??? th???y th??ng b??o B???n ???? t??m th???y ch??? ????? t???i! ??i k??m v???i ghi ch?? B???n b?? c???a b???n c??ng c?? th??? m??? kh??a t??nh n??ng n??y b???ng c??ch g???i bi???u t?????ng c???m x??c m???t tr??ng.\r\n\r\nR???i sau ????, b???n h??y nh???n v??o m???c B???T TRONG PH???N C??I ?????T.\r\n\r\n?????c 3: ?????n ????y b???n ch??? vi???c k??ch ho???t ch??? ????? t???i v?? giao di???n n???n t???i s??? hi???n th??? ra nh?? h??nh b??n d?????i. N???u b???n kh??ng th??ch ch??? ????? n???n t???i n??y, ch??? vi???c t???t ??? trong ph???n c??i ?????t th?? giao di???n s??? tr??? l???i n???n tr???ng nh?? c??.\r\n\r\nFacebook Messenger\r\nT??? b??y gi??? l?? b???n c?? th??? tr???i nghi???m ???????c ch??? ????? n???n t???i tr??n Facebook Messenger ???????c r???i, n???u th???y hay th?? h??y chia s??? cho b???n b?? c???a m??nh c??ng bi???t nh??!', '1551595176_1_800x450.jpg', 'Ngo??i t??nh n??ng Unsend (thu h???i tin nh???n ???? g???i) th?? Facebook c??ng ??ang th??? nghi???m th??m ch??? ????? Dark Mode (n???n t???i) tr??n Messenger. Tuy nhi??n ch??? ????? n???n t???i ch??? ???????c th??? nghi???m ??? m???t s??? qu???c gia nh???t ?????nh v?? tin vui l?? ng?????i d??ng t???i Vi???t Nam c??ng c?? th??? tr???i nghi???m t??nh n??ng n??y th??ng qua m???o nh??? d?????i ????y.\r\nCh??? ????? n???n t???i c?? l???i ??ch s??? gi??p ng?????i d??ng thao t??c v???i m??n h??nh trong m??i tr?????ng t???i tho???i m??i v?? gi???m t??nh tr???ng m???i m???t. B??n c???nh ????, ch??? ????? n???n t???i c??ng s??? gi??p ti???t ki???m pin ????ng k??? tr??n smartphone d??ng m??n h??nh AMOLED.\r\n\r\nL??u ??: C??ch k??ch ho???t ch??? ????? n???n t???i d?????i ????y ?????u ??p d???ng cho thi???t b??? ch???y h??? ??i???u h??nh Android v?? iOS.', 1, '2019-03-03 06:34:29', '2019-03-03 06:39:36'),
(2, '2019 c?? ph???i l?? n??m d??nh cho ??i???n tho???i 5G?', 'Ph???n c???ng qu?? ?????t\r\nR??o c???n ?????u ti??n m?? c??ng ngh??? m???i c???n ph???i ?????i di???n ????? tr??? n??n ph??? bi???n h??n l?? kh?? r?? r??ng. Nh???ng ??i???n tho???i 5G th???c s??? r???t ?????t. Galaxy S10 5G g???n nh?? s??? c?? gi?? h??n 1.000 USD (kho???ng 23 tri???u ?????ng), c??n v???i Huawei Mate X c?? gi?? v?????t qu?? 2.500 USD (kho???ng 58 tri???u ?????ng).\r\n\r\n???nh minh h???a\r\nCh??? c?? Xiaomi ??? th???i ??i???m hi???n t???i l?? cho ra m???t ??i???n tho???i 5G v???i m???t m???c gi?? c???nh tranh. B???i v?? c??ng ty Trung Qu???c ???? tung ra m???t bi???n th??? kh??c cho ??i???n tho???i hi???n c?? c???a h??ng l?? Xiaomi Mi MIX 3 v?? c???p nh???t th??ng s??? k??? thu???t m???i cho n??.\r\n\r\nM???c ti??u th??? n??ng l?????ng cao\r\nM???t s??? ??i???n tho???i 5G ???????c c??ng b??? g???n ????y ?????u ???????c trang b??? pin r???t l???n. Galaxy S10 5G th???m ch?? trang b??? pin 4.500 mAh. Ph???n l???n c??n l???i th?? s??? d???ng pin dung l?????ng b??nh th?????ng v?? kh??ng v?????t qu?? m???c trung b??nh nh?? Mi MIX 3 5G (3.300 mAh).\r\n\r\n???nh minh h???a\r\n????y l?? m???t v???n ????? l???n c???a th??? h??? ??i???n tho???i 5G ?????u ti??n v?? m???ng di ?????ng m???i hi???n t???i s??? d???ng qu?? nhi???u n??ng l?????ng.\r\n\r\nG???n nh?? v???n ch??a c?? c?? s??? h??? t???ng h??? tr??? 5G\r\nM???c d?? c??c nh?? m???ng mu???n nh???ng b?????c ti???n l???n v???i c??c d??? ??n m??? ?????u hay th??? nghi???m v???i cu???c g???i video, ph??t video tr??n m???ng 5G, th???c t??? th?? c?? s??? h??? t???ng c???n thi???t ????? cung c???p 5G v???n ??? giai ??o???n s?? khai. Ch??? c?? nh???ng th??nh ph??? l???n nh???t ???? ???????c trang b??? c??c ??ng-ten th??? h??? m???i, ph???n c??n l???i c???a th??? gi???i s??? ph???i ?????i v??i th??ng (ho???c v??i n??m) ????? c?? th??? tr???i nghi???m c??ng ngh??? m???i n??y.\r\n\r\n???nh minh h???a\r\nTh???c s??? 4G hi???n t???i v???n ch??a h??? tr??? ??? kh???p m???i n??i, c??c l??? h???ng v???n c??n hi???n di???n v???i c??c nh?? m???ng ??? nhi???u n??i tr??n th??? gi???i. T???t nhi??n, ????? ph??? s??ng to??n b??? 100% l?? kh??ng th???. T??m l???i, s??? m???t r???t nhi???u th???i gian tr?????c khi h???u h???t ng?????i d??ng c?? th??? s??? d???ng 5G.\r\n\r\nC??c g??i d???ch v??? 5G s??? r???t ?????t\r\n???nh minh h???a\r\nV??o th???i ??i???m 5G ra m???t, c??c g??i d???ch v??? ???????c c??c nh?? m???ng ????? xu???t ban ?????u s??? v?? c??ng ?????t ?????. N???u b???n tin r???ng 50 GB d??? li???u di ?????ng l?? r???t nhi???u th?? h??y t?????ng t?????ng l??u l?????ng ???????c t???o ra tr??n m???ng 5G. T???c ????? truy???n d??? li???u r???t cao c?? th??? r??t h???t g??i c?????c b???n ???? ????ng k?? trong th???i gian r???t ng???n n???u b???n kh??ng ch?? ??.\r\n\r\nV?? th???, c??c g??i d???ch v??? s??? cung c???p l??u l?????ng cao h??n v?? th???m ch?? l?? m???c gi?? c??? ?????nh nh??ng ch???c ch???n l?? s??? kh??ng r???.\r\n\r\nL???i k???t\r\nT???i th???i ??i???m m?? m???ng 5G tr??? n??n ph??? s??ng ????? r???ng, c??c th??nh ph???n ????? s???n xu???t ??i???n tho???i 5G c?? th??? tr??? n??n r??? h??n d???n t???i gi?? th??nh ??i???n tho???i c??ng gi???m xu???ng. Ngo??i ra, c??ng ngh??? SoC v?? ??ng-ten s??? ti???p t???c ???????c c???i thi???n, gi???m m???c ti??u th??? ??i???n n??ng v?? t??ng ????? tin c???y. V?? th???, ng?????i d??ng n??n ch??? ?????i trong giai ??o???n n??y.', '1551595325_smartphone5g_800x450.jpg', 'Ti??u chu???n m???i c???a k???t n???i m???ng ???? xu???t hi???n trong v??i n??m g???n ????y v?? n??m 2019 s??? l?? n??m m?? th??? h??? k???t n???i ti???p theo tr??? th??nh xu h?????ng chung nh??? v??o s??? ph??t tri???n m???nh m??? c???a ??i???n tho???i h??? tr??? 5G. Nh??ng ??i???u n??y c?? th???t s??? ????ng?', 1, '2019-03-03 06:42:05', '2019-03-03 06:42:05');

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
(2, 'Huawei Y9 (2019)', 2, 5490000.00, 3000000.00, 5090000.00, 'Chi???c', '0', NULL, '<h2>Th??ng s??? k??? thu???t</h2><p>M??n h??nh :6.5 inchs, 1080 x 2340 Pixels</p><p>Camera tr?????c :<strong>16 MP</strong> v?? 2 MP (2 camera)</p><p>Camera sau :13 MP v?? 2 MP (2 camera)</p><p>RAM :4 GB</p><p>B??? nh??? trong :64 GB</p><p>CPU :HUAWEI Kirin 710, 8, 4xCortex A73 2.2GHz + 4xCortex A53 1.7GHz</p><p>GPU :Mali-G51 MP4</p><p>Dung l?????ng pin :<strong>4000 </strong>mAh</p><p>H??? ??i???u h??nh :Android 8.1</p><p>Th??? SIM :Nano SIM, 2 Sim</p>', '1551600149_Y92019.jpg', 1, NULL, 1, '2019-03-03 08:02:29', '2019-03-30 06:50:11'),
(3, 'Huawei MediaPad T3 10.0', 6, 4490000.00, 2490000.00, 4490000.00, 'Chi???c', '11', NULL, '<h2>Th??ng s??? k??? thu???t</h2><ul><li>M??n h??nh :9.6\", 1280 x 800 pixels</li><li>Camera tr?????c :2 MP and fixed focus</li><li>Camera sau :5 MP and auto focus</li><li>CPU :Qualcomm MSM8917</li><li>GPU :Adreno 308@ 600 MHz</li><li>B??? nh??? trong :16 GB</li><li>K???t n???i :H??? tr??? 3G: WCDMA: AMR-NB, 4G LTE: ??? LTE-FDD: B1, B3, B5, (B19), B7, B8, B20 ??? LTE-TDD: B38, B39, B40, B41 (2555???2655MHz), Wi-Fi: 802.11 a/b/g/n@2.4GHz&amp;5GHz, Bluetooth: BT 4.2, compatible with BT 3.0 and BT 2.1+EDR</li><li>Th???i gian s??? d???ng :34-90 ti???ng</li><li>H??? ??i???u h??nh :Android 7.0</li></ul>', '1551600493_636489482634446409_1.jpg', 1, NULL, 0, '2019-03-03 08:08:13', '2019-03-28 17:10:41'),
(4, 'S???c D??? Ph??ng Xiaomi 5.000 mAh', 8, 190000.00, 70000.00, 190000.00, 'Chi???c', '90', NULL, '<ul><li>Thi???t k??? pin d??? ph??ng Xiaomi Mi 5000 mAh: g???n g??ng v?? sang tr???ng</li><li>Pin d??? ph??ng Xiaomi Mi 5000 mAh t????ng th??ch m???i thi???t b???</li><li>Pin d??? ph??ng Xiaomi Mi 5000 mAh s??? d???ng linh ki???n cao c???p</li><li>Hi???u su???t pin d??? ph??ng Xiaomi Mi 5000 mAh r???t ???n t?????ng</li></ul><p>Vi??n pin c???a Xiaomi c?? th??? s???c ?????y 1 l???n cho Mi 4, 1,8 l???n cho iPhone 6 v?? 2,2 l???n cho iPhone 5s, ?????m b???o n??ng l?????ng cho ng?????i d??ng s??? d???ng t??? 1 ??? 2 ng??y li??n t???c m?? kh??ng c???n s???c t??y v??o thi???t b???. Nh?? v???y, hi???u su???t chuy???n ?????i c???a Xiaomi Mi 5000 mAh l?? r???t t???t, nh???t l?? khi n?? ???????c b??n v???i m???c gi?? v?? c??ng d??? ch???u.</p><p>&nbsp;</p>', '1551601073_Original-Xiaomi-Power-Bank-5000mAh2-Mi-Portable-Charger-Ultra-Slim-Powerbank-Xiaomi-5000mAh-External-Battery-for.jpg_640x640.jpg', 1, NULL, 0, '2019-03-03 08:17:53', '2019-03-28 17:10:41'),
(5, 'Samsung Galaxy Tab E', 7, 3990000.00, 1700000.00, 3990000.00, 'Chi???c', '15', NULL, '<h2>Th??ng s??? k??? thu???t</h2><ul><li>M??n h??nh :9.6 inch, 1280 x 800 Pixels</li><li>Camera tr?????c :2.0 MP</li><li>Camera sau :5.0 MP</li><li>CPU :Spreadtrum 4 nh??n</li><li>GPU :Mali-400</li><li>RAM :1.5 GB</li><li>B??? nh??? trong :8 GB</li><li>K???t n???i :H??? tr??? 3G: C?? 3G (t???c ????? Download 21Mbps/42 Mbps; Upload 5.76 Mbps), 4G LTE: Kh??ng, Wi-Fi: 802.11 b/g/n 2.4GHz, Bluetooth: 4.0</li><li>Th???i gian s??? d???ng :7 gi???</li></ul>', '1551618214_u_10139237.jpg', 1, NULL, 0, '2019-03-03 13:03:34', '2019-03-03 13:03:34'),
(6, 'OPPO F9', 3, 6990000.00, 3490000.00, 6490000.00, 'Chi???c', '20', NULL, '<h2>Th??ng s??? k??? thu???t</h2><ul><li>M??n h??nh :6.3 inch, 1080 x 2340 pixels</li><li>Camera tr?????c :25 MP</li><li>Camera sau :16 MP v?? 2 MP (2 camera)</li><li>RAM :4 GB</li><li>B??? nh??? trong :64 GB</li><li>CPU :MediaTek Helio P60 , 8 nh??n, 2.0 Ghz</li><li>GPU :Mali-G72 MP3</li><li>Dung l?????ng pin :3500 mAh</li><li>H??? ??i???u h??nh :ColorOS 5.2 (Android 8.1)</li><li>Th??? SIM :Nano sim, 2 Sim, h??? tr??? 4G</li></ul>', '1551618883_OPPO-A7x.jpg', 1, NULL, 0, '2019-03-03 13:08:01', '2019-03-05 05:38:39'),
(7, 'XIAOMI MI A2 4GB-32GB', 4, 5990000.00, 2890000.00, 5290000.00, 'Chi???c', '25', NULL, '<h2>Th??ng s??? k??? thu???t</h2><ul><li>M??n h??nh :5.99\", 1080 x 2160 pixels</li><li>Camera tr?????c :20 MP</li><li>Camera sau :20 MP + 12 MP</li><li>RAM :4 GB</li><li>B??? nh??? trong :32GB</li><li>CPU :Qualcomm Snapdragon 660, 8 nh??n, 2.2 GHz</li><li>GPU :Adreno 512</li><li>Dung l?????ng pin :3010 mAh, c?? s???c nhanh</li><li>H??? ??i???u h??nh :Android One</li><li>Th??? SIM :Nano, 2 Sim, h??? tr??? 4G</li></ul>', '1551619083_1-1.jpg', 1, NULL, 0, '2019-03-03 13:18:03', '2019-03-03 13:18:03'),
(8, 'XIAOMI REDMI 6A 2GB-16GB', 4, 2290000.00, 890000.00, 1990000.00, 'Chi???c', '25', NULL, '<h2>Th??ng s??? k??? thu???t</h2><ul><li>M??n h??nh :5.45 inches, 1440 x 720 Pixel</li><li>Camera tr?????c :5.0 MP</li><li>Camera sau :13.0 MP</li><li>RAM :2 GB</li><li>B??? nh??? trong :16 GB</li><li>CPU :Mediatek MT6761 , 4, 2.0 GHz</li><li>GPU :PowerVR GE8320</li><li>Dung l?????ng pin :3000 mAh</li><li>H??? ??i???u h??nh :Android 8.1</li><li>Th??? SIM :2 SIM Nano (SIM 2 chung khe th??? nh???), 2 Sim</li></ul>', '1551619295_global-version-xiaomi-redmi-6a-2gb-16gb-smartphone-silver-gray-688095.jpg', 1, NULL, 2, '2019-03-03 13:21:35', '2019-03-30 05:40:19'),
(9, 'Th??? nh??? Micro SD 32Gb Sandisk', 9, 290000.00, 60000.00, 149000.00, 'Chi???c', '79', NULL, '<h2>Th??ng s??? k??? thu???t</h2><ul><li>Lo???i th???: Th??? Micro SD</li><li>Dung l?????ng: &nbsp;32 GB</li><li>T???c ????? ?????c: &nbsp;30 MB/s</li><li>T???c ????? ghi: &nbsp;10 MB/s</li><li>Th????ng hi???u uy t??n: Sandisk.</li><li>T???c ????? ?????c: 30 MB/s; T???c ????? ghi: 10 MB/s.</li><li>Kh??ng k??n thi???t b??? nh???n, d??? d??ng s??? d???ng.</li><li>Ch??p m???t video dung l?????ng 1 GB v??o th??? ch??a t???i 2 ph??t.</li><li>T????ng th??ch v???i h???u h???t t???t c??? thi???t b??? (??i???n tho???i, m??y t??nh b???ng).</li></ul>', '1551620217_74fb24eb7756c034b17c458377e4b6c1.jpg', 1, NULL, 0, '2019-03-03 13:36:57', '2019-03-28 17:12:05'),
(10, 'iPad 2018 WiFi 32GB', 10, 8900000.00, 5490000.00, 8900000.00, 'Chi???c', '10', NULL, '<h2>Th??ng s??? k??? thu???t</h2><ul><li>M??n h??nh :9.7 inches, 1536 x 2048 pixels</li><li>Camera tr?????c :1.2 MP</li><li>Camera sau :8.0 MP</li><li>CPU :A10 Fusion</li><li>GPU :PowerVR Series7XT Plus</li><li>B??? nh??? trong :32GB</li><li>K???t n???i :H??? tr??? 3G: No, 4G LTE: No, Wi-Fi: Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot, Bluetooth: 4.2, A2DP, EDR, LE</li><li>Th???i gian s??? d???ng :Up to 9 hours</li><li>H??? ??i???u h??nh :iOS11</li></ul>', '1551620616_apple-ipad-97-2018-128gb-wifi-gold-190198720672-ebay.jpg', 1, NULL, 0, '2019-03-03 13:43:36', '2019-03-03 13:43:36'),
(12, 'Huawei Mate 20 Pro', 2, 21990000.00, 9000000.00, 18990000.00, 'Chi???c', '15', NULL, '<h2>Th??ng s??? k??? thu???t</h2><ul><li>M??n h??nh :6.39 inchs, 1440 x 3120 pixels</li><li>Camera tr?????c :24MP</li><li>Camera sau :40Mp + 20Mp + 8Mp ( 3 Camera)</li><li>RAM :6 GB</li><li>B??? nh??? trong :128 GB</li><li>CPU :HUAWEI Kirin 980, 8, 2xCortex A76 2.6 GHz + 2xCortex A76 1.92 GHz + 4xCortex A55 1.8 GHz</li><li>GPU :Mali-G76</li><li>Dung l?????ng pin :4200mAh</li><li>H??? ??i???u h??nh :Android 9</li><li>Th??? SIM :Nano SIM, 2 Sim</li></ul>', '1551620942_HUAWEI-Mate-20-Pro-6-39-Inch-8GB-128GB-Smartphone-Aurora-752017-.jpg', 1, NULL, 0, '2019-03-03 13:49:02', '2019-03-03 13:49:02'),
(13, 'Sony ZX310AP', 13, 890000.00, 350000.00, 690000.00, 'Chi???c', '35', NULL, '<p>H??y l???a ch???n nh???ng m??u s???c th??? hi???n phong c??ch c???a b???n.</p><p>V??nh tai nghe c?? l???p ?????m mang l???i c???m gi??c tho???i m??i khi nghe.</p><p>D???i t???n s??? 10???24,000Hz.</p><p>M??ng loa ferit 30 mm cho ??m thanh c??n b???ng, m???nh m???.</p><p>Thi???t k??? d???ng g???p, g???n nh??? ????? nghe nh???c m???i n??i.</p><p>&nbsp;</p>', '1551764082_tai nghe sony.jpg', 1, NULL, 0, '2019-03-05 05:34:42', '2019-03-05 05:34:42'),
(14, 'Xiaomi Redmi Note 7 Ch??nh H??ng DGW Ram 3GB / 32GB', 4, 3990000.00, 3500000.00, 3990000.00, 'Chi???c', '100', NULL, '<p>Redmi Note 7 l?? chi???c smartphone m???i nh???t c???a Xiaomi v???a ???????c ra m???t t???i Vi???t Nam. M??n h??nh ???????c thi???t k??? theo ki???u gi???t n?????c ???n t?????ng,trang b??? camera c???c kh???ng l??n t???i 48 MP, b??? vi x??? l?? c???c m???nh Snapdragon 660, m???t l??ng b???ng k??nh c???ng ch???ng v??? v???i d???i m??u Gradient sang tr???ng, cao c???p . B??? ph??? ki???n chu???n g???m : H???p, s???c, c??p type C, que ch???c sim, ???p silicon. B???o h??nh ch??nh h??ng 18 th??ng tr??n to??n qu???c.</p>', '1553924819_Xiaomi-Redmi-Note-7-xanh.png', 1, NULL, 0, '2019-03-30 05:46:59', '2019-03-30 05:46:59');

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
(1, '??I???N THO???I', '<p>&nbsp;</p>', NULL, 1, '2019-03-03 05:33:00', '2019-03-03 05:33:00'),
(2, 'TABLET', '<p>&nbsp;</p>', NULL, 1, '2019-03-03 05:34:20', '2019-03-03 05:34:20'),
(3, 'PH??? KI???N', '<p>&nbsp;</p>', NULL, 1, '2019-03-03 05:34:33', '2019-03-03 05:34:33');

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
(2, 'HUAWEI', 1, '<p>&nbsp;</p>', '1551592014_??????-01.png', 1, '2019-03-03 05:43:01', '2019-03-03 05:46:54'),
(3, 'OPPO', 1, '<p>&nbsp;</p>', '1551592865_Logo-Oppo.png', 1, '2019-03-03 05:49:30', '2019-03-03 06:01:05'),
(4, 'XIAOMI', 1, '<p>&nbsp;</p>', '1551592723_xiaomi-logo-1.png', 1, '2019-03-03 05:52:22', '2019-03-03 05:58:43'),
(6, 'HUAWEI', 2, '<p>&nbsp;</p>', '1551600327_??????-01.png', 1, '2019-03-03 08:05:27', '2019-03-03 08:05:27'),
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
(1, 'Administrator', 'admin@gmail.com', '012345678', '?????a ch???', NULL, NULL, '1', '$2y$10$rTDh6/JbpYCCsKLHy2hHUuCcIUqSAzHvNhvBuXbB5WutyLPTuQ7iO', '5247slkk52QcnfrGaBbYZYtVhN9uJQQYVuSrsO79xFj0Kxf5lCfWTyKr3jfV', NULL, NULL),
(4, 'Nguy???n Thanh S??n', 'son@gmail.com', '0867573901', '206 Nguy???n Hi???n, Ph?????ng An Kh??nh, Qu???n Ninh Ki???u, C???n Th??', 'Nh??n vi??n', 'Kho h??ng', '5', '$2y$10$D5HMRY4VPL2p1MWlwEoDCesPA54j7d9GVmpU8DjjVBWvJPhrwelq.', NULL, '2019-03-02 06:05:30', '2019-03-04 14:35:48'),
(5, 'Nguy???n Ph????ng Nam', 'nam@gmail.com', '0867582417', '206 Nguy???n Ch?? Thanh. Ph?????ng An Kh??nh, Qu???n Ninh Ki???u, C???n Th??', 'Tr?????ng ph??ng', 'Kinh doanh', '4', '$2y$10$/rliRDeqXvRRH8DmkhmF.u4bcxaFEJxVZnMpy9KHicIYULeeHtX9m', NULL, '2019-03-02 06:09:41', '2019-03-04 14:34:49'),
(6, 'Nguy???n Ph????ng T??ng', 'tung@gmail.com', '0908234332', '56 Tr???n H??ng ?????o, Th??nh ph??? S??c Tr??ng', 'Tr?????ng ph??ng', 'Kho h??ng', '4', '$2y$10$crE9WvBuIxHIJble81ocQ.LQ0gF7Iz/DonKlCLuSH4ldKFNSuGjJW', NULL, '2019-03-02 06:11:34', '2019-03-04 14:35:17'),
(7, 'Nguy???n Linh Nhi', 'nhi@gmail.com', '0867452375', '162 Tr???n H??ng ?????o, Th??nh ph??? S??c Tr??ng', 'Nh??n vi??n', 'Kinh doanh', '5', '$2y$10$XcCIPeojar9abGWf9yFTGOh40ha1vzTE04G94ztM6qMmDd0s0QWnK', NULL, '2019-03-02 06:13:24', '2019-03-04 14:36:12'),
(8, 'Tr???nh Y???n Nhi', 'nhi96@gmail.com', '0861412372', '56 Hai B?? Tr??ng, Th??nh ph??? S??c Tr??ng', 'Nh??n vi??n', 'Kho h??ng', '5', '$2y$10$.pEWNQaP82u.etBNsg9GweoTdvp4kQ1/uidpeoXRwJy658PUEGrh.', NULL, '2019-03-02 06:15:30', '2019-03-04 14:36:39'),
(9, '????ng Minh T??m', 'tam@gmail.com', '0943212000', 'M???c Thi??n T??ch, Ph?????ng An Kh??nh, Qu???n Ninh Ki???u, C???n Th??', 'Ph?? gi??m ?????c', 'Gi??m ?????c', '3', '$2y$10$ztNLKn8EYqbg8E5jAX8QY.oJY/VvtsRSrkiFICAmDWtUZflIIImLW', NULL, '2019-03-02 06:17:59', '2019-03-04 14:34:13'),
(10, 'Tr???n Qu???c Kh??nh', 'khanh@gmail.com', '0847271501', '218, ???????ng 3/2, Ph?????ng H??ng L???i, Qu???n Ninh Ki???u, C???n Th??', 'Gi??m ?????c', 'Gi??m ?????c', '2', '$2y$10$sigkwJigv6Y8diIYA7a4QOCc1RVsd7MaNWfsygPTPe7Roy6UxcK5.', NULL, '2019-03-02 06:20:36', '2019-03-04 14:33:50'),
(11, 'Tr???n V??n H???u', 'hau@gmail.com', '0867582416', '122/4C, V?? V??n Ki???t, Ph?????ng An H??a, Qu???n Ninh Ki???u, C???n Th??', 'Nh??n vi??n', 'Kinh doanh', '3', '$2y$10$TCnixG5sYgf3h46dWWZrwuALnGgHL3S47g2l/XRQSpkbw6V05IuO6', NULL, '2019-03-02 06:22:21', '2019-03-02 06:22:21');

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
