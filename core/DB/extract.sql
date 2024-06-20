-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 12:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tanknew`
--

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proof` varchar(255) NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(4, NULL, '<h4><strong>What is FAQ?</strong></h4><p>FAQ means frequent asked questions</p>', '2023-11-06 07:36:53', '2023-11-06 07:36:53'),
(5, NULL, '<p>1. To deposit funds</p><p>• With the massive amount of information on the platform, users should contact customer service to confirm and double-check the client\'s cryptocurrency address before each deposit.</p><p>• After a successful deposit, users are requested to provide successful transfer receipts for online customer service to update the platform account.</p><p>• The cryptocurrency address of the recipient and the amount transferred must be the same as the cryptocurrency address details provided for the payment to be effective immediately.</p><p>• If the user encounters any problem during the deposit process, please contact our online customer service for more information!</p><p>2. About Products</p><p>• The value of the Product is adjusted according to the market value.</p><p>• The Product is randomly assigned according to the total balance on the user\'s account.</p><p>• The higher the balance on the user\'s account, the higher the amount of the Product, and therefore the higher the profit.</p><p>• If the user is concerned that the amount of the Product is too high to afford, please do not deposit too much money to start drive traffic.</p><p>3. Withdrawal</p><p>• Withdrawal time is from 10:00 to 22:59 daily</p><p>4. Platform User Mode</p><p>• Users may invite new users to become platform users and will receive additional referral commissions. The referral incentive is an additional 20%<br>• Platform users can invite others to become platform agents through agent codes and become your downline. As the upline, you can extract a certain percentage of your downline\'s profit, and the profit obtained by the upline will be directly returned to the upline\'s platform account or the team report.<br>• You can get 20% of your Tier 1 agent\'s profit<br>• All users of the platform will receive a certain percentage of the platform\'s profits and rewards accordingly, developing a team does not affect the profits and rewards of any users</p><p>5. Operating hours</p><p>• Users may optimize the Product during the daily operation hours from 10:00 to 22:59</p><p>Notice: For further explanation, please click \"Support\" on the platform to contact our online customer service</p>', '2023-11-06 08:01:06', '2023-11-06 08:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_30_092539_create_tiers_table', 1),
(6, '2023_08_30_092540_create_users_table', 1),
(7, '2023_08_31_060817_laratrust_setup_tables', 1),
(8, '2023_09_05_064059_create_and_update_table', 1),
(9, '2023_09_08_024422_create_deposits_table', 1),
(10, '2023_09_08_094456_create_payment_infos_table', 1),
(11, '2023_09_08_115243_create_user_payments_table', 1),
(12, '2023_09_09_190802_create_withdrawals_table', 1),
(13, '2023_09_09_205044_create_settings_table', 1),
(14, '2023_09_11_221741_table_update', 1),
(15, '2023_09_13_153723_create_faqs_table', 1),
(16, '2023_09_16_050722_create_notifications_table', 1),
(37, '2023_09_26_121738_create_products_table', 2),
(38, '2023_09_26_140108_create_product_reviews_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `massage` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_infos`
--

CREATE TABLE `payment_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wallet_name` varchar(255) NOT NULL,
  `walet_address` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2023-09-18 14:13:39', '2023-09-18 14:13:39'),
(2, 'users-read', 'Read Users', 'Read Users', '2023-09-18 14:13:39', '2023-09-18 14:13:39'),
(3, 'users-update', 'Update Users', 'Update Users', '2023-09-18 14:13:39', '2023-09-18 14:13:39'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2023-09-18 14:13:39', '2023-09-18 14:13:39'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2023-09-18 14:13:39', '2023-09-18 14:13:39'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2023-09-18 14:13:39', '2023-09-18 14:13:39'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2023-09-18 14:13:39', '2023-09-18 14:13:39'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2023-09-18 14:13:40', '2023-09-18 14:13:40'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2023-09-18 14:13:40', '2023-09-18 14:13:40'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2023-09-18 14:13:40', '2023-09-18 14:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(10, 1),
(10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `profit` double(8,2) NOT NULL,
  `tier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `img`, `price`, `profit`, `tier_id`, `created_at`, `updated_at`) VALUES
(6, 'Leather ladies hand Bag', 'uploads/product/Bag.jpg', 75.00, 0.75, 2, '2023-11-09 12:01:06', '2023-11-18 11:55:22'),
(7, 'Modern Office Table Executive', 'uploads/product/Modern Office Table Executive.jpg', 85.00, 0.75, 2, '2023-11-09 20:43:44', '2023-11-18 11:56:12'),
(8, 'Office Furniture Coffee Table', 'uploads/product/Office Furniture Coffee Table.jpg', 150.00, 1.00, 3, '2023-11-09 20:45:34', '2023-11-18 11:57:16'),
(9, 'Luxury Foshan Custom CEO', 'uploads/product/Luxury Foshan Custom CEO.jpg', 318.00, 1.25, 4, '2023-11-09 20:47:51', '2023-11-18 11:58:37'),
(11, 'Wireless Battery Operated Surveillance…', 'uploads/product/Wireless Battery Operated Surveillance….jpg', 610.00, 1.50, NULL, '2023-11-09 21:00:43', '2023-11-18 11:59:48'),
(14, 'High Quality Heavy Duty Welder Extension Cord…', 'uploads/product/High Quality Heavy Duty Welder Extension Cord….jpg', 160.00, 1.00, 3, '2023-11-09 21:04:17', '2023-11-18 12:00:52'),
(17, 'Commercial Water Dispenser with Top Faucet', 'uploads/product/Commercial Water Dispenser with Top Faucet.jpg', 330.00, 1.25, 4, '2023-11-09 21:07:13', '2023-11-18 12:02:08'),
(19, 'Ladies Designer Vegan Leather hobo bag', 'uploads/product/Ladies Designer Vegan Leather hobo bag.jpg', 720.00, 1.50, NULL, '2023-11-09 21:09:46', '2023-11-18 12:03:17'),
(20, 'LG Washing Machine P1461RWN', 'uploads/product/LG Washing Machine P1461RWN.jpg', 145.00, 1.00, 3, '2023-11-09 21:10:47', '2023-11-18 12:05:20'),
(22, 'men\'s leather duffel travel bag', 'uploads/product/men\'s leather duffel travel bag.jpg', 375.00, 1.25, 4, '2023-11-09 21:13:12', '2023-11-18 12:06:35'),
(25, 'Memory Foam Mattress A Memorable Nights', 'uploads/product/Memory Foam Mattress A Memorable Nights.jpg', 630.00, 1.50, NULL, '2023-11-09 21:15:34', '2023-11-18 12:08:01'),
(27, 'Natural Rubber Yoga Mat', 'uploads/product/Natural Rubber Yoga Mat.jpg', 410.00, 1.25, 4, '2023-11-09 21:17:42', '2023-11-18 12:09:07'),
(28, 'Solar CCTV Camera | Solar Wi-Fi CCTV Camera', 'uploads/product/Solar CCTV Camera | Solar Wi-Fi CCTV Camera.jpg', 735.00, 1.50, NULL, '2023-11-09 21:18:17', '2023-11-18 12:10:34'),
(29, 'Allie Dark Grey Sofa Chairs', 'uploads/product/Allie Dark Grey Sofa Chairs.jpg', 170.00, 1.00, 3, '2023-11-09 21:19:30', '2023-11-18 12:11:48'),
(30, 'Saint Mary\'s Tulsa Summer Heat fan', 'uploads/product/Saint Mary\'s Tulsa Summer Heat fan.jpg', 420.00, 1.25, 4, '2023-11-09 21:20:50', '2023-11-18 12:13:09'),
(31, 'Tempurpedic Sleeper Sofa chair', 'uploads/product/Tempurpedic Sleeper Sofa chair.jpg', 710.00, 1.50, NULL, '2023-11-09 21:21:47', '2023-11-18 12:14:38'),
(32, 'Black and Decker 4-in-1 6 Piece Personal Compact Sports Blender and Smoothie Maker 500 ml 300 W SBX300-B5', 'uploads/product/Black and Decker 4-in-1 6 Piece Personal Compact Sports Blender and Smoothie Maker 500 ml 300 W SBX300-B5.jpg', 155.00, 1.00, 3, '2023-11-09 21:23:05', '2023-11-18 12:15:38'),
(33, '2023  Single Seat Sofa Chairs', 'uploads/product/2023  Single Seat Sofa Chairs.jpg', 162.00, 1.00, 3, '2023-11-09 21:23:59', '2023-11-18 12:16:50'),
(34, 'Cool Living 5,000 BTU air conditioner', 'uploads/product/Cool Living 5,000 BTU air conditioner.jpg', 730.00, 1.25, 4, '2023-11-09 21:25:07', '2023-11-18 12:17:55'),
(35, 'Geepas standing cooling Refrigerator', 'uploads/product/Geepas standing cooling Refrigerator.jpg', 725.00, 1.50, NULL, '2023-11-09 21:27:39', '2023-11-18 12:19:04'),
(36, 'stainless steel black sink waterfall faucet', 'uploads/product/stainless steel black sink waterfall faucet.jpeg', 36.00, 0.50, 1, '2023-11-17 10:29:30', '2023-11-18 12:04:03'),
(37, 'stainless steel black sink waterfall faucet', 'uploads/product/stainless steel black sink waterfall faucet.jpeg', 71.00, 0.75, 2, '2023-11-17 10:29:31', '2023-11-19 14:26:40'),
(38, 'stainless steel black sink waterfall faucet', 'uploads/product/stainless steel black sink waterfall faucet.jpeg', 159.00, 1.00, 3, '2023-11-17 10:32:02', '2023-11-18 12:21:45'),
(39, 'stainless steel black sink waterfall faucet', 'uploads/product/*stainless steel black sink waterfall faucet*.jpeg', 335.00, 1.25, 4, '2023-11-17 10:32:44', '2023-11-18 12:23:15'),
(40, 'stainless steel black sink waterfall faucet', 'uploads/product/stainless steel black sink waterfall faucet.jpeg', 555.00, 1.50, NULL, '2023-11-17 10:33:28', '2023-11-18 12:24:32'),
(41, 'La Bianca Wardrobe', 'uploads/product/La Bianca Wardrobe.jpg', 440.00, 1.25, 4, '2023-11-17 11:07:07', '2023-11-18 12:25:47'),
(42, 'Shared Hosting', 'uploads/product/Shared Hosting.jpeg', 42.00, 0.50, 1, '2023-11-17 11:45:20', '2023-11-18 12:26:57'),
(43, 'sliding door wardrobe with loft, model,', 'uploads/product/sliding door wardrobe with loft, model,.jpg', 40.00, 0.50, 1, '2023-11-17 11:49:59', '2023-11-18 12:28:01'),
(44, 'Modular wardrobe', 'uploads/product/Modular wardrobe.jpeg', 41.00, 0.50, 1, '2023-11-17 13:21:59', '2023-11-18 12:29:03'),
(45, 'Modular wardrobe', 'uploads/product/Modular wardrobe.jpeg', 69.00, 0.75, 2, '2023-11-17 13:22:27', '2023-11-18 12:30:04'),
(46, 'Modular wardrobe', 'uploads/product/Modular wardrobe.jpeg', 179.00, 1.00, 3, '2023-11-17 13:22:55', '2023-11-18 12:31:03'),
(47, 'Modular wardrobe', 'uploads/product/Modular wardrobe.jpeg', 329.00, 1.25, 4, '2023-11-17 13:23:30', '2023-11-18 12:32:13'),
(48, 'Modular wardrobe', 'uploads/product/Modular wardrobe.jpeg', 760.00, 1.50, NULL, '2023-11-17 13:24:08', '2023-11-18 12:33:17'),
(50, 'Low maintenance modern styled compact sized wardrobe', 'uploads/product/Low maintenance modern styled compact sized wardrobe.jpeg', 48.00, 0.50, 1, '2023-11-17 13:25:28', '2023-11-18 12:34:35'),
(51, 'Low maintenance modern styled compact sized wardrobe', 'uploads/product/Low maintenance modern styled compact sized wardrobe.jpeg', 89.00, 0.75, 2, '2023-11-17 13:25:51', '2023-11-18 12:35:46'),
(52, 'Low maintenance modern styled compact sized wardrobe', 'uploads/product/Low maintenance modern styled compact sized wardrobe.jpeg', 169.00, 1.00, 3, '2023-11-17 13:28:35', '2023-11-18 12:38:20'),
(53, 'Low maintenance modern styled compact sized wardrobe', 'uploads/product/Low maintenance modern styled compact sized wardrobe.jpeg', 439.00, 1.25, 4, '2023-11-17 13:29:01', '2023-11-18 12:39:29'),
(54, 'Low maintenance modern styled compact sized wardrobe', 'uploads/product/Low maintenance modern styled compact sized wardrobe.jpeg', 659.00, 1.50, NULL, '2023-11-17 13:29:22', '2023-11-18 12:40:23'),
(55, 'Aluminum modular kitchen cabinet', 'uploads/product/Aluminum modular kitchen cabinet.jpeg', 46.00, 0.50, 1, '2023-11-17 13:30:20', '2023-11-18 12:42:42'),
(56, 'Aluminum modular kitchen cabinet', 'uploads/product/Aluminum modular kitchen cabinet.jpeg', 99.00, 0.75, 2, '2023-11-17 13:30:44', '2023-11-18 12:43:52'),
(57, 'Aluminum modular kitchen cabinet', 'uploads/product/Aluminum modular kitchen cabinet.jpeg', 158.00, 1.00, 3, '2023-11-17 13:31:06', '2023-11-18 12:45:05'),
(58, 'Aluminum modular kitchen cabinet', 'uploads/product/Aluminum modular kitchen cabinet.jpeg', 410.00, 1.25, 4, '2023-11-17 13:31:25', '2023-11-18 12:46:14'),
(59, 'Aluminum modular kitchen cabinet', 'uploads/product/Aluminum modular kitchen cabinet.jpeg', 660.00, 1.50, NULL, '2023-11-17 13:31:48', '2023-11-18 12:48:47'),
(60, 'Absolute - The perfect LED rounded mirror', 'uploads/product/Absolute - The perfect LED rounded mirror.jpg', 43.00, 0.50, 1, '2023-11-17 13:32:07', '2023-11-18 12:49:56'),
(61, 'KINWELL 40inch. W x 28inches H frameless rectangular LED mirror with Anti-Fog Function', 'uploads/product/KINWELL 40inch. W x 28inches H frameless rectangular LED mirror with Anti-Fog Function.jpeg', 49.00, 0.50, 1, '2023-11-17 13:32:29', '2023-11-18 12:51:19'),
(62, 'KINWELL 40inch. W x 28inches H frameless rectangular LED mirror with Anti-Fog Function', 'uploads/product/KINWELL 40inch. W x 28inches H frameless rectangular LED mirror with Anti-Fog Function.jpeg', 85.00, 0.75, 2, '2023-11-17 13:32:55', '2023-11-18 12:52:40'),
(63, 'Aluminum kitchen cabinet', 'uploads/product/Aluminum kitchen cabinet.jpg', 45.00, 0.50, 1, '2023-11-17 13:33:10', '2023-11-18 12:53:38'),
(64, 'KINWELL 40inch. W x 28inches H frameless rectangular LED mirror with Anti-Fog Function', 'uploads/product/KINWELL 40inch. W x 28inches H frameless rectangular LED mirror with Anti-Fog Function.jpeg', 180.00, 1.00, 3, '2023-11-17 13:33:14', '2023-11-18 12:58:08'),
(65, 'KINWELL 40inch. W x 28inches H frameless rectangular LED mirror with Anti-Fog Function', 'uploads/product/KINWELL 40inch. W x 28inches H frameless rectangular LED mirror with Anti-Fog Function.jpeg', 430.00, 1.25, 4, '2023-11-17 13:33:16', '2023-11-18 12:51:34'),
(66, 'KINWELL 40inch. W x 28inches H frameless rectangular LED mirror with Anti-Fog Function', 'uploads/product/KINWELL 40inch. W x 28inches H frameless rectangular LED mirror with Anti-Fog Function.jpeg', 749.00, 1.50, NULL, '2023-11-17 13:33:36', '2023-11-18 12:47:35'),
(67, 'Pendant lights, modern art decor tassel  lamps', 'uploads/product/Pendant lights, modern art decor tassel  lamps.jpeg', 39.00, 0.50, 1, '2023-11-17 13:33:59', '2023-11-18 12:04:40'),
(70, 'Biege and brown damask wallpaper design', 'uploads/product/Biege and brown damask wallpaper design.jpg', 40.00, 0.50, 1, '2023-11-17 13:34:49', '2023-11-18 12:05:14'),
(71, 'Black base aluminum kitchen cabinet', 'uploads/product/Black base aluminum kitchen cabinet.jpg', 44.00, 0.50, 1, '2023-11-17 13:35:19', '2023-11-18 12:05:52'),
(72, 'Blue tree patterned wallpaper', 'uploads/product/Blue tree patterned wallpaper.jpg', 47.00, 0.50, 1, '2023-11-17 13:36:04', '2023-11-18 12:06:32'),
(73, 'DC ceiling fan lights with bulbs', 'uploads/product/DC ceiling fan lights with bulbs.jpg', 330.00, 1.25, 4, '2023-11-17 13:36:28', '2023-11-18 12:07:19'),
(74, 'Fan lights  Adjustable three colors of light', 'uploads/product/Fan lights  Adjustable three colors of light.jpg', 41.00, 0.50, 1, '2023-11-17 13:37:57', '2023-11-18 12:07:47'),
(75, 'Flower design PVC living room wallpaper', 'uploads/product/Flower design PVC living room wallpaper.jpg', 40.00, 0.50, 1, '2023-11-17 13:38:37', '2023-11-18 12:08:23'),
(76, 'Koket lightning', 'uploads/product/Koket lightning.jpeg', 46.00, 0.50, 1, '2023-11-17 13:39:19', '2023-11-18 12:08:53'),
(77, 'Koket lightning', 'uploads/product/Koket lightning.jpg', 71.00, 0.75, 2, '2023-11-17 13:41:00', '2023-11-18 12:09:37'),
(78, 'La Bianca Wardrobe', 'uploads/product/La Bianca Wardrobe.jpg', 49.00, 0.50, 1, '2023-11-17 13:41:53', '2023-11-18 12:10:18'),
(79, 'LA Bianca side table', 'uploads/product/LA Bianca side table.jpeg', 64.00, 0.75, 2, '2023-11-17 13:44:26', '2023-11-18 12:11:12'),
(80, 'LA Bianca side table', 'uploads/product/LA ianca side table.jpg', 47.00, 0.50, 1, '2023-11-17 13:44:57', '2023-11-18 12:11:54'),
(81, 'LAIYA full length mirror with LED lighted vanity', 'uploads/product/LAIYA full length mirror with LED lighted vanity.jpg', 39.00, 0.50, 1, '2023-11-17 13:45:30', '2023-11-18 12:12:34'),
(82, 'LED flower pattern ceiling light stepless dimming lights', 'uploads/product/LED flower pattern ceiling light stepless dimming lights.jpg', 45.00, 0.50, 1, '2023-11-17 13:45:55', '2023-11-18 12:13:01'),
(83, 'LA Bianca side table', 'uploads/product/LA Bianca side table.jpeg', 163.00, 1.00, 3, '2023-11-17 13:47:18', '2023-11-18 12:14:39'),
(84, 'LA Bianca side table', 'uploads/product/LA Bianca side table.jpeg', 343.00, 1.25, 4, '2023-11-17 13:47:38', '2023-11-18 12:15:18'),
(85, 'LA Bianca side table', 'uploads/product/LA Bianca side table.jpeg', 758.00, 1.50, NULL, '2023-11-17 13:48:08', '2023-11-18 12:16:26'),
(86, 'Living room lamb velvet sofa combinations with flexible fabric modules vintage', 'uploads/product/Living room lamb velvet sofa combinations with flexible fabric modules vintage.jpg', 49.00, 0.50, 1, '2023-11-17 13:48:39', '2023-11-18 12:17:00'),
(87, 'Low maintenance modern styled compact sized wardrobe', 'uploads/product/Low maintenance modern styled compact sized wardrobe.jpg', 42.00, 0.50, 1, '2023-11-17 13:49:05', '2023-11-18 12:17:33'),
(88, 'Luxury European Home decoration wallpaper', 'uploads/product/Luxury European Home decoration wallpaper.jpg', 46.00, 0.50, 1, '2023-11-17 13:49:29', '2023-11-18 12:18:09'),
(89, 'Modern LED chandelier for living room Nordic', 'uploads/product/Modern LED chandelier for living room Nordic.jpeg', 79.00, 0.75, 2, '2023-11-17 13:49:59', '2023-11-18 12:19:00'),
(90, 'Modern LED chandelier for living room Nordic', 'uploads/product/Modern LED chandelier for living room Nordic.jpg', 165.00, 1.00, 3, '2023-11-17 13:50:25', '2023-11-18 12:19:56'),
(91, 'Modern LED chandelier for living room Nordic', 'uploads/product/Modern LED chandelier for living room Nordic.jpg', 445.00, 1.25, 4, '2023-11-17 13:51:01', '2023-11-18 12:22:42'),
(92, 'Pride of Istanbul wine cabinet', 'uploads/product/Pride of Istanbul wine cabinet.jpeg', 48.00, 0.50, 1, '2023-11-17 13:51:09', '2023-11-18 12:23:25'),
(93, 'Pride of Istanbul wine cabinet', 'uploads/product/Pride of Istanbul wine cabinet.jpeg', 94.00, 0.75, 2, '2023-11-17 13:51:40', '2023-11-18 12:24:18'),
(95, 'Pride of Istanbul wine cabinet', 'uploads/product/Pride of Istanbul wine cabinet.jpeg', 167.00, 1.00, 3, '2023-11-17 13:52:16', '2023-11-18 12:25:08'),
(96, 'Oval LED illuminated bathroom mirror', 'uploads/product/Oval LED illuminated bathroom mirror.jpg', 39.00, 0.50, 1, '2023-11-17 13:52:32', '2023-11-18 12:26:06'),
(97, 'Pendant lights, modern art decor tassel  lamps', 'uploads/product/Pendant lights, modern art decor tassel  lamps.jpg', 43.00, 0.50, 1, '2023-11-17 13:53:00', '2023-11-18 12:26:36'),
(98, 'Pride of Istanbul center table', 'uploads/product/Pride of Istanbul center table.jpg', 40.00, 0.50, 1, '2023-11-17 13:53:41', '2023-11-18 12:27:14'),
(99, 'Pride of Istanbul center table', 'uploads/product/Pride of Istanbul center table.jpg', 68.00, 0.75, 2, '2023-11-17 13:53:44', '2023-11-18 12:28:12'),
(100, 'Pride of Istanbul wine cabinet', 'uploads/product/Pride of Istanbul wine cabinet.jpg', 349.00, 1.25, 4, '2023-11-17 13:55:44', '2023-11-18 12:29:09'),
(101, 'Siege and brown damask wallpaper design', 'uploads/product/Siege and brown damask wallpaper design.jpeg', 48.00, 0.50, 1, '2023-11-17 13:56:51', '2023-11-18 12:30:08'),
(102, 'TV background wallpaper 10D... Three-Dimensional wallpaper', 'uploads/product/TV background wallpaper 10D... Three-Dimensional wallpaper.jpg', 40.00, 0.50, 1, '2023-11-17 13:57:17', '2023-11-18 12:31:08'),
(103, 'UNICASA oval LED mirror', 'uploads/product/UNICASA oval LED mirror.jpg', 39.00, 0.50, 1, '2023-11-17 13:57:46', '2023-11-18 12:31:57'),
(104, 'Wall mount smart mirror', 'uploads/product/Wall mount smart mirror.jpg', 48.00, 0.50, 1, '2023-11-17 13:58:10', '2023-11-18 12:33:07'),
(105, 'Luxury multifunctional corner sofa for living room.. Minimalist sofa L shape 3 seat', 'uploads/product/Luxury multifunctional corner sofa for living room.. Minimalist sofa L shape 3 seat.jpeg', 39.00, 0.50, 1, '2023-11-17 14:37:57', '2023-11-18 12:34:22'),
(106, 'Luxury multifunctional corner sofa for living room.. Minimalist sofa L shape 3 seat', 'uploads/product/Luxury multifunctional corner sofa for living room.. Minimalist sofa L shape 3 seat.jpeg', 94.00, 0.75, 2, '2023-11-17 14:38:18', '2023-11-18 12:35:27'),
(107, 'Luxury multifunctional corner sofa for living room.. Minimalist sofa L shape 3 seat', 'uploads/product/Luxury multifunctional corner sofa for living room.. Minimalist sofa L shape 3 seat.jpeg', 168.00, 1.00, 3, '2023-11-17 14:38:40', '2023-11-18 12:36:39'),
(108, 'Luxury multifunctional corner sofa for living room.. Minimalist sofa L shape 3 seat', 'uploads/product/Luxury multifunctional corner sofa for living room.. Minimalist sofa L shape 3 seat.jpeg', 314.00, 1.25, 4, '2023-11-17 14:38:58', '2023-11-18 12:38:30'),
(109, 'Luxury multifunctional corner sofa for living room.. Minimalist sofa L shape 3 seat', 'uploads/product/Luxury multifunctional corner sofa for living room.. Minimalist sofa L shape 3 seat.jpeg', 779.00, 1.50, NULL, '2023-11-17 14:39:18', '2023-11-18 12:39:45'),
(110, 'Armchair modern luxury sofa. Living room lazy sectional sofa set', 'uploads/product/Armchair modern luxury sofa. Living room lazy sectional sofa set.jpeg', 39.00, 0.50, 1, '2023-11-17 14:40:28', '2023-11-18 12:40:45'),
(111, 'Armchair modern luxury sofa. Living room lazy sectional sofa set', 'uploads/product/Armchair modern luxury sofa. Living room lazy sectional sofa set.jpeg', 83.00, 0.75, 2, '2023-11-17 14:40:45', '2023-11-18 12:42:06'),
(112, 'Armchair modern luxury sofa. Living room lazy sectional sofa set', 'uploads/product/Armchair modern luxury sofa. Living room lazy sectional sofa set.jpeg', 173.00, 1.00, 3, '2023-11-17 14:41:01', '2023-11-18 12:43:24'),
(113, 'Armchair modern luxury sofa. Living room lazy sectional sofa set', 'uploads/product/Armchair modern luxury sofa. Living room lazy sectional sofa set.jpeg', 415.00, 1.25, 4, '2023-11-17 14:41:20', '2023-11-18 12:45:07'),
(114, 'Armchair modern luxury sofa. Living room lazy sectional sofa set', 'uploads/product/Armchair modern luxury sofa. Living room lazy sectional sofa set.jpeg', 800.00, 1.50, NULL, '2023-11-17 14:41:38', '2023-11-18 12:46:33'),
(115, 'LA Bianca sofa', 'uploads/product/LA Bianca sofa.jpeg', 40.00, 0.50, 1, '2023-11-17 14:43:40', '2023-11-18 12:47:07'),
(116, 'LA Bianca sofa', 'uploads/product/LA Bianca sofa.jpeg', 76.00, 0.75, 2, '2023-11-17 14:44:16', '2023-11-18 12:47:51'),
(117, 'LA Bianca sofa', 'uploads/product/LA Bianca sofa.jpeg', 163.00, 1.00, 3, '2023-11-17 14:44:33', '2023-11-18 12:48:36'),
(118, 'LA Bianca sofa', 'uploads/product/LA Bianca sofa.jpeg', 336.00, 1.25, 4, '2023-11-17 14:44:49', '2023-11-18 12:49:22'),
(119, 'LA Bianca sofa', 'uploads/product/LA Bianca sofa.jpeg', 690.00, 1.50, NULL, '2023-11-17 14:45:06', '2023-11-18 12:50:06'),
(120, 'LA Paris Sofa', 'uploads/product/LA Paris Sofa.jpeg', 64.00, 0.75, 2, '2023-11-17 14:45:57', '2023-11-18 08:59:23'),
(121, 'LA Paris Sofa', 'uploads/product/LA Paris Sofa.jpeg', 144.00, 1.00, 3, '2023-11-17 14:46:14', '2023-11-18 09:00:19'),
(122, 'LA Paris Sofa', 'uploads/product/LA Paris Sofa.jpeg', 300.00, 1.25, 4, '2023-11-17 14:46:31', '2023-11-18 09:01:36'),
(124, 'LA Paris Sofa', 'uploads/product/LA Paris Sofa.jpeg', 42.00, 0.50, 1, '2023-11-17 14:47:04', '2023-11-18 09:02:36'),
(125, 'White PUTIH Nordic dressing make up table with mirror', 'uploads/product/White PUTIH Nordic dressing make up table with mirror.jpeg', 77.00, 0.75, 2, '2023-11-17 14:47:36', '2023-11-18 09:04:10'),
(126, 'White PUTIH Nordic dressing make up table with mirror', 'uploads/product/White PUTIH Nordic dressing make up table with mirror.jpeg', 149.00, 1.00, 3, '2023-11-17 14:47:50', '2023-11-18 09:04:59'),
(127, 'White PUTIH Nordic dressing make up table with mirror', 'uploads/product/White PUTIH Nordic dressing make up table with mirror.jpeg', 450.00, 1.25, 4, '2023-11-17 14:48:05', '2023-11-18 09:05:43'),
(128, 'White PUTIH Nordic dressing make up table with mirror', 'uploads/product/White PUTIH Nordic dressing make up table with mirror.jpeg', 506.00, 1.50, NULL, '2023-11-17 14:48:20', '2023-11-18 09:06:36'),
(130, 'Smart touch LED mirror', 'uploads/product/Smart touch LED mirror.jpeg', 98.00, 0.75, 2, '2023-11-17 14:49:11', '2023-11-18 09:07:55'),
(131, 'Smart touch LED mirror', 'uploads/product/Smart touch LED mirror.jpeg', 150.00, 1.00, 3, '2023-11-17 14:49:32', '2023-11-18 09:08:41'),
(132, 'Smart touch LED mirror', 'uploads/product/Smart touch LED mirror.jpeg', 320.00, 1.25, 4, '2023-11-17 14:49:50', '2023-11-18 09:09:31'),
(133, 'Smart touch LED mirror', 'uploads/product/Smart touch LED mirror.jpeg', 751.00, 1.50, NULL, '2023-11-17 14:50:07', '2023-11-18 09:10:34'),
(135, 'Autumn Belgian mirror', 'uploads/product/Autumn Belgian mirror.jpeg', 60.00, 0.75, 2, '2023-11-17 14:51:02', '2023-11-18 09:11:45'),
(136, 'Autumn Belgian mirror', 'uploads/product/Autumn Belgian mirror.jpeg', 161.00, 1.00, 3, '2023-11-17 14:51:17', '2023-11-18 09:16:06'),
(137, 'Autumn Belgian mirror', 'uploads/product/Autumn Belgian mirror.jpeg', 410.00, 1.25, 4, '2023-11-17 14:51:38', '2023-11-18 09:15:06'),
(138, 'Autumn Belgian mirror', 'uploads/product/Autumn Belgian mirror.jpeg', 509.00, 1.50, NULL, '2023-11-17 14:51:54', '2023-11-18 09:16:58'),
(141, 'Aquabath touch sensor LED light round glass wall mirror', 'uploads/product/Aquabath touch sensor LED light round glass wall mirror.jpeg', 180.00, 1.00, 3, '2023-11-17 14:53:02', '2023-11-18 09:18:19'),
(142, 'Aquabath touch sensor LED light round glass wall mirror', 'uploads/product/Aquabath touch sensor LED light round glass wall mirror.jpeg', 431.00, 1.25, 4, '2023-11-17 14:53:21', '2023-11-18 09:19:49'),
(143, 'Aquabath touch sensor LED light round glass wall mirror', 'uploads/product/Aquabath touch sensor LED light round glass wall mirror.jpeg', 744.00, 1.50, NULL, '2023-11-17 14:53:36', '2023-11-18 09:21:00'),
(145, 'Dressing table with mirror and stool', 'uploads/product/Dressing table with mirror and stool.jpeg', 85.00, 0.75, 2, '2023-11-17 14:54:38', '2023-11-18 09:22:26'),
(146, 'Dressing table with mirror and stool', 'uploads/product/*Dressing table with mirror and stool*.jpeg', 176.00, 1.00, 3, '2023-11-17 14:54:55', '2023-11-18 09:23:38'),
(147, 'Dressing table with mirror and stool', 'uploads/product/*Dressing table with mirror and stool*.jpeg', 415.00, 1.25, 4, '2023-11-17 14:55:11', '2023-11-18 09:24:43'),
(148, 'Dressing table with mirror and stool', 'uploads/product/Dressing table with mirror and stool.jpeg', 696.00, 1.50, NULL, '2023-11-17 14:55:52', '2023-11-18 09:25:38'),
(150, 'Dressing table with LED mirror', 'uploads/product/Dressing table with LED mirror.jpeg', 95.00, 0.75, 2, '2023-11-17 14:56:57', '2023-11-18 09:31:34'),
(151, 'Dressing table with LED mirror', 'uploads/product/Dressing table with LED mirror.jpeg', 140.00, 1.00, 3, '2023-11-17 14:57:16', '2023-11-18 09:32:36'),
(152, 'Dressing table with LED mirror', 'uploads/product/Dressing table with LED mirror.jpeg', 391.00, 1.25, 4, '2023-11-17 14:57:35', '2023-11-18 09:34:10'),
(153, 'Dressing table with LED mirror', 'uploads/product/Dressing table with LED mirror.jpeg', 800.00, 1.50, NULL, '2023-11-17 14:57:56', '2023-11-18 09:34:57'),
(156, 'spacious wardrobe design with glossy finish', 'uploads/product/spacious wardrobe design with glossy finish.jpeg', 100.00, 0.75, 2, '2023-11-17 14:59:04', '2023-11-18 09:36:10'),
(157, 'spacious wardrobe design with glossy finish', 'uploads/product/spacious wardrobe design with glossy finish.jpeg', 146.00, 1.00, 3, '2023-11-17 14:59:23', '2023-11-18 09:37:07'),
(158, 'spacious wardrobe design with glossy finish', 'uploads/product/spacious wardrobe design with glossy finish.jpeg', 360.00, 1.25, 4, '2023-11-17 14:59:41', '2023-11-18 09:38:00'),
(159, 'spacious wardrobe design with glossy finish', 'uploads/product/spacious wardrobe design with glossy finish.jpeg', 599.00, 1.50, NULL, '2023-11-17 14:59:58', '2023-11-18 09:38:52'),
(161, 'PVC modern wardrobe design', 'uploads/product/PVC modern wardrobe design.jpeg', 89.00, 0.75, 2, '2023-11-17 15:01:47', '2023-11-18 10:05:34'),
(162, 'PVC modern wardrobe design', 'uploads/product/PVC modern wardrobe design.jpeg', 173.00, 1.00, 3, '2023-11-17 15:02:36', '2023-11-18 10:07:19'),
(163, 'PVC modern wardrobe design', 'uploads/product/PVC modern wardrobe design.jpeg', 389.00, 1.25, 4, '2023-11-17 15:02:59', '2023-11-18 10:08:18'),
(164, 'PVC modern wardrobe design', 'uploads/product/PVC modern wardrobe design.jpeg', 791.00, 1.50, NULL, '2023-11-17 15:03:21', '2023-11-18 10:09:51'),
(166, 'Stylish bedroom wardrobe', 'uploads/product/Stylish bedroom wardrobe.jpeg', 70.00, 0.75, 2, '2023-11-17 15:04:41', '2023-11-18 10:10:47'),
(167, 'Stylish bedroom wardrobe', 'uploads/product/Stylish bedroom wardrobe.jpeg', 157.00, 1.00, 3, '2023-11-17 15:04:57', '2023-11-18 10:11:30'),
(168, 'Stylish bedroom wardrobe', 'uploads/product/Stylish bedroom wardrobe.jpeg', 339.00, 1.25, 4, '2023-11-17 15:05:17', '2023-11-18 10:12:17'),
(169, 'Stylish bedroom wardrobe', 'uploads/product/Stylish bedroom wardrobe.jpeg', 630.00, 1.50, NULL, '2023-11-17 15:05:34', '2023-11-18 10:13:40'),
(171, '8ft * 6ft Brown white bedroom Wardrobe', 'uploads/product/8ft * 6ft Brown white bedroom Wardrobe.jpeg', 67.00, 0.75, 2, '2023-11-17 15:06:56', '2023-11-18 10:14:57'),
(172, '8ft * 6ft Brown white bedroom Wardrobe', 'uploads/product/8ft * 6ft Brown white bedroom Wardrobe.jpeg', 165.00, 1.00, 3, '2023-11-17 15:07:23', '2023-11-18 10:15:58'),
(173, '8ft * 6ft Brown white bedroom Wardrobe', 'uploads/product/8ft * 6ft Brown white bedroom Wardrobe.jpeg', 448.00, 1.25, 4, '2023-11-17 15:08:01', '2023-11-18 10:16:53'),
(174, '8ft * 6ft Brown white bedroom Wardrobe', 'uploads/product/8ft * 6ft Brown white bedroom Wardrobe.jpeg', 648.00, 1.50, NULL, '2023-11-17 15:08:26', '2023-11-18 10:18:15'),
(176, 'Vanity set makeup desk with charging space', 'uploads/product/Vanity set makeup desk with charging space.jpeg', 90.00, 0.75, 2, '2023-11-17 15:09:44', '2023-11-18 10:22:14'),
(177, 'Vanity set makeup desk with charging space', 'uploads/product/*Vanity set makeup desk with charging space*.jpeg', 159.00, 1.00, 3, '2023-11-17 15:10:07', '2023-11-18 10:22:58'),
(178, 'Vanity set makeup desk with charging space', 'uploads/product/Vanity set makeup desk with charging space.jpeg', 411.00, 1.25, 4, '2023-11-17 15:11:17', '2023-11-18 10:24:55'),
(179, 'Vanity set makeup desk with charging space', 'uploads/product/Vanity set makeup desk with charging space.jpeg', 515.00, 1.50, NULL, '2023-11-17 15:11:41', '2023-11-18 10:31:22'),
(181, 'Outstanding bedroom cupboard', 'uploads/product/Outstanding bedroom cupboard.jpeg', 74.00, 0.75, 2, '2023-11-17 15:14:02', '2023-11-18 10:33:56'),
(182, 'Outstanding bedroom cupboard', 'uploads/product/Outstanding bedroom cupboard.jpeg', 171.00, 1.00, 3, '2023-11-17 15:15:16', '2023-11-18 10:39:21'),
(183, 'Outstanding bedroom cupboard', 'uploads/product/Outstanding bedroom cupboard.jpeg', 389.00, 1.25, 4, '2023-11-17 15:15:42', '2023-11-18 10:40:48'),
(184, 'Outstanding bedroom cupboard', 'uploads/product/Outstanding bedroom cupboard.jpeg', 566.00, 1.50, NULL, '2023-11-17 15:16:14', '2023-11-18 10:46:25'),
(186, 'Blue tree patterned wallpaper', 'uploads/product/Blue tree patterned wallpaper.jpeg', 96.00, 0.75, 2, '2023-11-17 15:16:54', '2023-11-18 11:03:32'),
(187, 'Blue tree patterned wallpaper', 'uploads/product/Blue tree patterned wallpaper.jpeg', 157.00, 1.00, 3, '2023-11-17 15:20:16', '2023-11-18 11:05:41'),
(188, 'Blue tree patterned wallpaper', 'uploads/product/Blue tree patterned wallpaper.jpeg', 338.00, 1.25, 4, '2023-11-17 15:20:48', '2023-11-18 11:06:35'),
(189, 'Blue tree patterned wallpaper', 'uploads/product/Blue tree patterned wallpaper.jpeg', 740.00, 1.50, NULL, '2023-11-17 15:21:13', '2023-11-18 11:07:29'),
(191, 'Biege and brown damask wallpaper design', 'uploads/product/Biege and brown damask wallpaper design.jpeg', 100.00, 0.75, 2, '2023-11-17 15:22:27', '2023-11-18 11:08:39'),
(192, 'Biege and brown damask wallpaper design', 'uploads/product/Biege and brown damask wallpaper design.jpeg', 151.00, 1.00, 3, '2023-11-17 15:24:24', '2023-11-18 11:10:33'),
(193, 'Biege and brown damask wallpaper design', 'uploads/product/Biege and brown damask wallpaper design.jpeg', 321.00, 1.25, 4, '2023-11-17 15:24:45', '2023-11-18 11:11:54'),
(194, 'Biege and brown damask wallpaper design', 'uploads/product/Biege and brown damask wallpaper design.jpeg', 729.00, 1.50, NULL, '2023-11-17 15:25:07', '2023-11-18 11:13:21'),
(196, 'Luxury European Home decoration wallpaper... Size: 150cm X 105cm (59.1 x 41.3inch', 'uploads/product/Luxury European Home decoration wallpaper... Size: 150cm X 105cm (59.1 x 41.3inch.jpeg', 69.00, 0.75, 2, '2023-11-17 15:26:36', '2023-11-18 11:14:37'),
(197, 'Luxury European Home decoration wallpaper... Size: 150cm X 105cm (59.1 x 41.3inch', 'uploads/product/Luxury European Home decoration wallpaper... Size: 150cm X 105cm (59.1 x 41.3inch.jpeg', 169.00, 1.00, 3, '2023-11-17 15:27:03', '2023-11-18 11:15:20'),
(198, 'Luxury European Home decoration wallpaper... Size: 150cm X 105cm (59.1 x 41.3inch', 'uploads/product/Luxury European Home decoration wallpaper... Size: 150cm X 105cm (59.1 x 41.3inch.jpeg', 410.00, 1.25, 4, '2023-11-17 15:27:23', '2023-11-18 11:16:07'),
(199, 'Luxury European Home decoration wallpaper... Size: 150cm X 105cm (59.1 x 41.3inch', 'uploads/product/Luxury European Home decoration wallpaper... Size: 150cm X 105cm (59.1 x 41.3inch.jpeg', 793.00, 1.50, NULL, '2023-11-17 15:27:44', '2023-11-18 11:16:59'),
(201, 'TV background wallpaper 10D... Three-Dimensional wallpaper', 'uploads/product/TV background wallpaper 10D... Three-Dimensional wallpaper.jpeg', 88.00, 0.75, 2, '2023-11-17 15:29:07', '2023-11-18 11:18:28'),
(202, 'TV background wallpaper 10D... Three-Dimensional wallpaper', 'uploads/product/TV background wallpaper 10D... Three-Dimensional wallpaper.jpeg', 162.00, 1.00, 3, '2023-11-17 15:30:09', '2023-11-18 11:19:25'),
(203, 'TV background wallpaper 10D... Three-Dimensional wallpaper', 'uploads/product/TV background wallpaper 10D... Three-Dimensional wallpaper.jpeg', 332.00, 1.25, 4, '2023-11-17 15:30:46', '2023-11-18 11:20:25'),
(204, 'TV background wallpaper 10D... Three-Dimensional wallpaper', 'uploads/product/TV background wallpaper 10D... Three-Dimensional wallpaper.jpeg', 727.00, 1.50, NULL, '2023-11-17 15:32:10', '2023-11-18 11:21:45'),
(206, 'Flower design PVC living room wallpaper', 'uploads/product/Flower design PVC living room wallpaper.jpeg', 81.00, 0.75, 2, '2023-11-17 15:34:17', '2023-11-18 11:22:28'),
(207, 'Flower design PVC living room wallpaper', 'uploads/product/Flower design PVC living room wallpaper.jpeg', 153.00, 1.00, 3, '2023-11-17 15:34:51', '2023-11-18 11:23:41'),
(208, 'Flower design PVC living room wallpaper', 'uploads/product/Flower design PVC living room wallpaper.jpeg', 341.00, 1.25, 4, '2023-11-17 15:35:24', '2023-11-18 11:24:27'),
(209, 'Flower design PVC living room wallpaper', 'uploads/product/Flower design PVC living room wallpaper.jpeg', 509.00, 1.50, NULL, '2023-11-17 15:36:12', '2023-11-18 11:25:27'),
(211, 'UNICASA oval LED mirror', 'uploads/product/UNICASA oval LED mirror.jpeg', 92.00, 0.75, 2, '2023-11-17 15:40:19', '2023-11-18 11:26:14'),
(212, 'UNICASA oval LED mirror', 'uploads/product/UNICASA oval LED mirror.jpeg', 174.00, 1.00, 3, '2023-11-17 15:41:43', '2023-11-18 11:27:34'),
(213, 'UNICASA oval LED mirror', 'uploads/product/UNICASA oval LED mirror.jpeg', 418.00, 1.25, 4, '2023-11-17 15:42:02', '2023-11-18 11:28:29'),
(214, 'UNICASA oval LED mirror', 'uploads/product/UNICASA oval LED mirror.jpeg', 555.00, 1.50, NULL, '2023-11-17 15:42:22', '2023-11-18 11:29:04'),
(215, 'Absolute - The perfect LED rounded mirror', 'uploads/product/Absolute - The perfect LED rounded mirror.jpeg', 99.00, 0.75, 2, '2023-11-17 15:43:27', '2023-11-18 11:30:05'),
(216, 'Absolute - The perfect LED rounded mirror', 'uploads/product/*Absolute - The perfect LED rounded mirror*.jpeg', 166.00, 1.00, 3, '2023-11-17 15:43:47', '2023-11-18 11:30:55'),
(217, 'Absolute - The perfect LED rounded mirror', 'uploads/product/Absolute - The perfect LED rounded mirror.jpeg', 358.00, 1.25, 4, '2023-11-17 15:44:21', '2023-11-18 11:32:17'),
(218, 'Absolute - The perfect LED rounded mirror', 'uploads/product/Absolute - The perfect LED rounded mirror.jpeg', 606.00, 1.50, NULL, '2023-11-17 15:44:45', '2023-11-18 11:33:19'),
(219, 'LAIYA full length mirror with LED lighted vanity', 'uploads/product/LAIYA full length mirror with LED lighted vanity.jpeg', 80.00, 0.75, 2, '2023-11-17 15:46:49', '2023-11-18 11:34:06'),
(220, 'LAIYA full length mirror with LED lighted vanity', 'uploads/product/LAIYA full length mirror with LED lighted vanity.jpeg', 181.00, 1.00, 3, '2023-11-17 15:47:18', '2023-11-18 11:35:00'),
(221, 'LAIYA full length mirror with LED lighted vanity', 'uploads/product/LAIYA full length mirror with LED lighted vanity.jpeg', 436.00, 1.25, 4, '2023-11-17 15:47:36', '2023-11-18 11:36:05'),
(222, 'LAIYA full length mirror with LED lighted vanity', 'uploads/product/LAIYA full length mirror with LED lighted vanity.jpeg', 771.00, 1.50, NULL, '2023-11-17 15:47:54', '2023-11-18 11:37:05'),
(224, 'Modern creative crystal chandeliers', 'uploads/product/Modern creative crystal chandeliers.jpeg', 84.00, 0.75, 2, '2023-11-17 15:53:08', '2023-11-18 11:37:58'),
(225, 'Modern creative crystal chandeliers', 'uploads/product/Modern creative crystal chandeliers.jpeg', 185.00, 1.00, 3, '2023-11-17 15:53:29', '2023-11-18 11:38:47'),
(226, 'Modern creative crystal chandeliers', 'uploads/product/Modern creative crystal chandeliers.jpeg', 372.00, 1.25, 4, '2023-11-17 15:54:01', '2023-11-18 11:39:53'),
(227, 'Modern creative crystal chandeliers', 'uploads/product/Modern creative crystal chandeliers.jpeg', 677.00, 1.50, NULL, '2023-11-17 15:55:38', '2023-11-18 11:40:45'),
(229, 'Pendant lights, modern art decor tassel  lamps', 'uploads/product/Pendant lights, modern art decor tassel  lamps.jpeg', 142.00, 1.00, 3, '2023-11-17 16:02:01', '2023-11-18 11:42:55'),
(230, 'Pendant lights, modern art decor tassel  lamps', 'uploads/product/Pendant lights, modern art decor tassel  lamps.jpeg', 711.00, 1.50, NULL, '2023-11-17 16:02:45', '2023-11-18 11:43:36'),
(231, 'Koket lightning', 'uploads/product/Koket lightning.jpeg', 683.00, 1.50, NULL, '2023-11-17 16:07:15', '2023-11-18 11:44:53'),
(232, 'Living room lamb velvet sofa combinations with flexible fabric modules vintage', 'uploads/product/Living room lamb velvet sofa combinations with flexible fabric modules vintage.jpeg', 84.00, 0.75, 2, '2023-11-17 16:11:06', '2023-11-18 11:46:36'),
(233, 'Living room lamb velvet sofa combinations with flexible fabric modules vintage', 'uploads/product/Living room lamb velvet sofa combinations with flexible fabric modules vintage.jpeg', 154.00, 1.00, 3, '2023-11-17 16:12:21', '2023-11-18 11:48:57'),
(234, 'Living room lamb velvet sofa combinations with flexible fabric modules vintage', 'uploads/product/Living room lamb velvet sofa combinations with flexible fabric modules vintage.jpeg', 348.00, 1.25, 4, '2023-11-17 16:12:43', '2023-11-18 11:53:31'),
(235, 'Living room lamb velvet sofa combinations with flexible fabric modules vintage', 'uploads/product/Living room lamb velvet sofa combinations with flexible fabric modules vintage.jpeg', 617.00, 1.50, NULL, '2023-11-17 16:13:20', '2023-11-18 11:56:44'),
(236, 'Fan lights.. Adjustable: three colors of light can be selected warm light, neutral light, cool white light', 'uploads/product/Fan lights.. Adjustable: three colors of light can be selected warm light, neutral light, cool white light.jpeg', 170.00, 1.00, 3, '2023-11-17 16:15:13', '2023-11-18 11:58:30'),
(237, 'Fan lights.. Adjustable: three colors of light can be selected warm light, neutral light, cool white light', 'uploads/product/Fan lights.. Adjustable: three colors of light can be selected warm light, neutral light, cool white light.jpeg', 433.00, 1.25, 4, '2023-11-17 16:16:01', '2023-11-18 11:59:33'),
(238, 'Fan lights.. Adjustable: three colors of light can be selected warm light, neutral light, cool white light', 'uploads/product/Fan lights.. Adjustable: three colors of light can be selected warm light, neutral light, cool white light.jpeg', 783.00, 1.50, NULL, '2023-11-17 16:16:25', '2023-11-18 12:00:16'),
(239, 'LED flower pattern ceiling light stepless dimming lights', 'uploads/product/LED flower pattern ceiling light stepless dimming lights.jpeg', 100.00, 0.75, 2, '2023-11-17 16:27:56', '2023-11-18 12:01:28'),
(240, 'LED flower pattern ceiling light stepless dimming lights', 'uploads/product/LED flower pattern ceiling light stepless dimming lights.jpeg', 158.00, 1.00, 3, '2023-11-17 16:30:02', '2023-11-18 12:02:17'),
(241, 'LED flower pattern ceiling light stepless dimming lights', 'uploads/product/LED flower pattern ceiling light stepless dimming lights.jpeg', 319.00, 1.25, 4, '2023-11-17 16:30:59', '2023-11-18 12:03:11'),
(242, 'LED flower pattern ceiling light stepless dimming lights', 'uploads/product/LED flower pattern ceiling light stepless dimming lights.jpeg', 45.00, 0.50, 1, '2023-11-17 16:31:44', '2023-11-18 10:52:28'),
(243, 'DC ceiling fan lights with bulbs', 'uploads/product/DC ceiling fan lights with bulbs.jpeg', 70.00, 0.75, 2, '2023-11-17 16:35:23', '2023-11-18 11:12:24'),
(244, 'DC ceiling fan lights with bulbs', 'uploads/product/DC ceiling fan lights with bulbs.jpeg', 150.00, 1.00, 3, '2023-11-17 16:35:47', '2023-11-18 11:14:31'),
(245, 'Smart touch LED mirror', 'uploads/product/Smart touch LED mirror.jpeg', 350.00, 1.25, 4, '2023-11-17 21:59:21', '2023-11-18 11:16:44'),
(246, 'Smart touch LED mirror', 'uploads/product/Smart touch LED mirror.jpeg', 600.00, 1.50, NULL, '2023-11-17 22:00:08', '2023-11-18 11:18:12'),
(247, 'Black base aluminum kitchen cabinet', 'uploads/product/Black base aluminum kitchen cabinet.jpeg', 320.00, 1.25, 4, '2023-11-17 22:02:47', '2023-11-18 11:20:32'),
(248, 'Black base aluminum kitchen cabinet', 'uploads/product/Black base aluminum kitchen cabinet.jpeg', 650.00, 1.50, NULL, '2023-11-17 22:03:43', '2023-11-18 11:21:59'),
(249, 'Wall mount smart mirror', 'uploads/product/Wall mount smart mirror.jpeg', 400.00, 1.25, 4, '2023-11-17 22:07:07', '2023-11-18 11:23:08'),
(250, 'Wall mount smart mirror', 'uploads/product/Wall mount smart mirror.jpeg', 700.00, 1.50, NULL, '2023-11-17 22:07:45', '2023-11-18 11:24:56'),
(251, 'LA Bianca wardrobe', 'uploads/product/LA Bianca wardrobe.jpeg', 325.00, 1.25, 4, '2023-11-18 04:24:09', '2023-11-18 11:26:06'),
(252, 'LA Bianca wardrobe', 'uploads/product/LA Bianca wardrobe.jpeg', 625.00, 1.50, NULL, '2023-11-18 04:24:38', '2023-11-18 11:27:22'),
(253, 'Pride of Istanbul center table', 'uploads/product/Pride of Istanbul center table.jpeg', 425.00, 1.25, 4, '2023-11-18 04:27:47', '2023-11-18 11:28:56'),
(254, 'Pride of Istanbul center table', 'uploads/product/Pride of Istanbul center table.jpeg', 750.00, 1.50, NULL, '2023-11-18 04:28:28', '2023-11-18 11:30:29'),
(255, 'aluminum kitchen cabinet', 'uploads/product/aluminum kitchen cabinet.jpeg', 325.00, 1.25, 4, '2023-11-18 04:31:34', '2023-11-18 11:31:57'),
(256, 'aluminum kitchen cabinet', 'uploads/product/aluminum kitchen cabinet.jpeg', 640.00, 1.50, NULL, '2023-11-18 04:32:11', '2023-11-18 11:34:21'),
(257, 'Pride of Istanbul dining table', 'uploads/product/Pride of Istanbul dining table.jpeg', 370.00, 1.25, 4, '2023-11-18 04:36:31', '2023-11-18 11:35:52'),
(258, 'Pride of Istanbul dining table', 'uploads/product/Pride of Istanbul dining table.jpeg', 675.00, 1.50, NULL, '2023-11-18 04:37:11', '2023-11-18 11:37:18'),
(259, 'Pride of Istanbul dining table', 'uploads/product/Pride of Istanbul dining table.jpeg', 165.00, 1.00, 3, '2023-11-18 07:14:45', '2023-11-18 11:39:00'),
(260, 'spacious wardrobe design with glossy finish', 'uploads/product/spacious wardrobe design with glossy finish.jpeg', 550.00, 1.50, NULL, '2023-11-18 07:17:38', '2023-11-18 11:40:47'),
(261, 'PVC modern wardrobe design', 'uploads/product/PVC modern wardrobe design.jpeg', 775.00, 1.50, NULL, '2023-11-18 07:18:20', '2023-11-18 11:42:11'),
(262, 'TV background wallpaper 10D... Three-Dimensional wallpaper', 'uploads/product/TV background wallpaper 10D... Three-Dimensional wallpaper.jpeg', 620.00, 1.50, NULL, '2023-11-18 07:20:58', '2023-11-18 11:43:48'),
(263, 'Aluminum modular kitchen cabinet', 'uploads/product/Aluminum modular kitchen cabinet.jpeg', 520.00, 1.50, NULL, '2023-11-18 07:21:54', '2023-11-18 11:45:31'),
(264, 'Aquabath touch sensor LED light round glass wall mirror', 'uploads/product/Aquabath touch sensor LED light round glass wall mirror.jpeg', 725.00, 1.50, NULL, '2023-11-18 07:23:49', '2023-11-18 11:46:55'),
(265, 'Armchair modern luxury sofa. Living room lazy sectional sofa set', 'uploads/product/Armchair modern luxury sofa. Living room lazy sectional sofa set.jpeg', 800.00, 1.50, NULL, '2023-11-18 07:24:47', '2023-11-18 11:49:24'),
(266, 'Aquabath touch sensor LED light round glass wall mirror', 'uploads/product/Aquabath touch sensor LED light round glass wall mirror.jpeg', 82.00, 0.75, 2, '2023-11-19 14:29:29', '2023-11-19 14:29:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `status` enum('approved','pending','frozen') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `price`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(91, 6, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-09 12:02:06', '2023-11-09 12:02:23'),
(92, 6, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-09 12:02:39', '2023-11-09 12:02:46'),
(104, 29, 3, NULL, NULL, NULL, 'approved', '2023-11-09 21:40:11', '2023-11-09 21:40:24'),
(105, 11, 3, NULL, NULL, NULL, 'approved', '2023-11-09 21:40:30', '2023-11-09 21:40:40'),
(106, 6, 3, NULL, NULL, NULL, 'approved', '2023-11-09 21:40:44', '2023-11-09 21:41:04'),
(108, 30, 3, NULL, NULL, NULL, 'approved', '2023-11-10 15:21:26', '2023-11-11 10:08:50'),
(109, 11, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-11 10:08:56', '2023-11-11 10:09:14'),
(111, 6, 3, NULL, NULL, NULL, 'approved', '2023-11-11 10:10:09', '2023-11-11 11:09:52'),
(112, 28, 3, NULL, NULL, NULL, 'approved', '2023-11-11 11:09:57', '2023-11-11 11:28:46'),
(113, 8, 3, NULL, NULL, NULL, 'approved', '2023-11-11 11:29:02', '2023-11-11 11:36:42'),
(114, 14, 3, NULL, NULL, NULL, 'approved', '2023-11-11 11:36:47', '2023-11-11 11:39:13'),
(115, 8, 3, NULL, NULL, NULL, 'approved', '2023-11-11 11:39:20', '2023-11-11 11:40:53'),
(119, 6, 3, NULL, NULL, NULL, 'approved', '2023-11-11 21:02:04', '2023-11-11 21:02:13'),
(120, 6, 3, NULL, NULL, NULL, 'approved', '2023-11-11 21:02:18', '2023-11-11 21:02:26'),
(121, 6, 3, NULL, NULL, NULL, 'approved', '2023-11-11 21:02:32', '2023-11-11 21:10:27'),
(122, 6, 3, NULL, NULL, NULL, 'approved', '2023-11-11 21:10:34', '2023-11-11 21:10:39'),
(123, 7, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-11 21:10:43', '2023-11-11 21:11:22'),
(124, 8, 3, NULL, NULL, NULL, 'approved', '2023-11-11 21:11:36', '2023-11-11 21:12:07'),
(125, 6, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-12 19:35:48', '2023-11-12 19:36:39'),
(126, 7, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-12 19:37:24', '2023-11-12 19:37:57'),
(179, 6, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-16 16:25:32', '2023-11-16 16:25:39'),
(180, 6, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-16 16:32:11', '2023-11-16 16:36:52'),
(181, 6, 3, NULL, 'Normal! Not used often but know the Product', NULL, 'approved', '2023-11-16 16:37:02', '2023-11-16 16:37:09'),
(182, 6, 3, 50.00, 'Normal! Not used often but know the Product', NULL, 'approved', '2023-11-16 17:17:55', '2023-11-16 17:18:06'),
(183, 6, 3, 50.00, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-16 17:31:38', '2023-11-16 17:31:49'),
(184, 6, 3, 50.00, NULL, NULL, 'approved', '2023-11-16 17:45:38', '2023-11-16 17:46:01'),
(185, 6, 3, 50.00, 'Normal! Not used often but know the Product', NULL, 'approved', '2023-11-16 17:47:06', '2023-11-16 17:53:17'),
(186, 6, 3, 50.00, NULL, NULL, 'approved', '2023-11-16 19:17:48', '2023-11-16 19:18:08'),
(187, 7, 3, NULL, NULL, NULL, 'approved', '2023-11-16 19:18:13', '2023-11-16 19:18:38'),
(188, 9, 3, NULL, NULL, NULL, 'approved', '2023-11-16 19:18:42', '2023-11-17 17:30:50'),
(195, 6, 3, 50.00, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-17 17:30:54', '2023-11-17 17:32:46'),
(196, 7, 3, NULL, NULL, NULL, 'approved', '2023-11-17 17:32:59', '2023-11-17 21:30:52'),
(197, 8, 3, NULL, NULL, NULL, 'approved', '2023-11-17 21:30:59', '2023-11-17 21:31:20'),
(198, 14, 3, NULL, NULL, NULL, 'approved', '2023-11-17 21:31:29', '2023-11-18 01:02:21'),
(199, 8, 3, NULL, NULL, NULL, 'approved', '2023-11-18 01:02:26', '2023-11-18 01:03:18'),
(200, 14, 3, NULL, NULL, NULL, 'approved', '2023-11-18 01:03:23', '2023-11-18 01:04:22'),
(201, 20, 3, NULL, NULL, NULL, 'approved', '2023-11-18 01:04:27', '2023-11-18 01:33:48'),
(203, 29, 3, NULL, NULL, NULL, 'approved', '2023-11-18 02:16:40', '2023-11-18 02:16:47'),
(204, 32, 3, NULL, NULL, NULL, 'approved', '2023-11-18 02:16:53', '2023-11-18 02:17:21'),
(210, 8, 3, NULL, NULL, NULL, 'approved', '2023-11-18 14:53:41', '2023-11-18 16:43:32'),
(249, 8, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-18 16:45:30', '2023-11-18 16:45:41'),
(250, 8, 3, NULL, NULL, NULL, 'approved', '2023-11-18 20:05:34', '2023-11-18 21:57:11'),
(251, 8, 3, NULL, NULL, NULL, 'approved', '2023-11-19 02:25:37', '2023-11-19 02:26:01'),
(252, 8, 3, NULL, NULL, NULL, 'approved', '2023-11-19 04:07:09', '2023-11-19 04:11:25'),
(253, 8, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-19 04:11:29', '2023-11-19 04:11:43'),
(254, 14, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-19 04:11:47', '2023-11-19 04:12:12'),
(255, 20, 3, NULL, NULL, NULL, 'approved', '2023-11-19 04:12:24', '2023-11-19 04:12:37'),
(256, 8, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-19 08:46:42', '2023-11-19 08:48:19'),
(257, 14, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-19 08:51:13', '2023-11-19 08:51:27'),
(258, 20, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-19 08:51:40', '2023-11-19 08:51:53'),
(259, 29, 3, NULL, NULL, NULL, 'approved', '2023-11-19 08:52:00', '2023-11-19 08:52:08'),
(270, 8, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-19 10:14:58', '2023-11-19 10:18:57'),
(271, 14, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-19 10:19:04', '2023-11-19 10:19:24'),
(280, 8, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-19 10:55:09', '2023-11-19 10:55:16'),
(281, 14, 3, NULL, NULL, NULL, 'approved', '2023-11-19 10:55:19', '2023-11-19 10:55:28'),
(282, 20, 3, NULL, NULL, NULL, 'approved', '2023-11-19 10:55:34', '2023-11-19 10:55:40'),
(283, 29, 3, NULL, NULL, NULL, 'approved', '2023-11-19 10:55:45', '2023-11-19 10:55:50'),
(284, 32, 3, 15000.00, NULL, NULL, 'approved', '2023-11-19 10:55:57', '2023-11-22 21:05:01'),
(389, 8, 3, NULL, 'Normal! Not used often but know the Product', NULL, 'approved', '2023-11-22 21:05:12', '2023-11-22 21:05:28'),
(390, 14, 3, NULL, 'Normal! Not used often but know the Product', NULL, 'approved', '2023-11-22 21:09:34', '2023-11-22 21:09:47'),
(391, 20, 3, NULL, NULL, NULL, 'approved', '2023-11-22 21:14:36', '2023-11-22 21:14:40'),
(392, 29, 3, NULL, NULL, NULL, 'approved', '2023-11-22 21:16:15', '2023-11-22 21:16:19'),
(393, 32, 3, 15000.00, NULL, NULL, 'approved', '2023-11-22 21:16:48', '2023-11-22 21:16:54'),
(396, 8, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-23 21:09:56', '2023-11-23 21:10:11'),
(403, 8, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-11-24 08:30:17', '2023-11-24 08:30:25'),
(625, 8, 3, NULL, 'Excellent! I personally used it too, very Applicable', '33333', 'approved', '2023-11-30 09:05:33', '2023-11-30 09:06:08'),
(831, 8, 3, NULL, 'Normal! Not used often but know the Product', NULL, 'approved', '2023-12-09 09:26:27', '2023-12-09 09:27:04'),
(832, 8, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-12-10 14:54:24', '2023-12-10 14:55:04'),
(833, 14, 3, NULL, NULL, NULL, 'approved', '2023-12-10 15:22:45', '2023-12-11 12:19:15'),
(834, 8, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-12-11 12:19:26', '2023-12-11 12:20:27'),
(835, 8, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-12-13 18:03:38', '2023-12-13 18:03:46'),
(947, 8, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-12-15 20:53:22', '2023-12-15 20:53:29'),
(948, 14, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-12-15 20:53:33', '2023-12-15 20:53:39'),
(949, 20, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-12-15 20:53:42', '2023-12-15 20:53:49'),
(950, 29, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-12-15 20:53:52', '2023-12-15 20:54:04'),
(951, 32, 3, 15000.00, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-12-15 20:54:20', '2023-12-15 20:54:36'),
(952, 33, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-12-15 20:54:40', '2023-12-15 20:54:48'),
(953, 38, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-12-15 20:54:52', '2023-12-15 20:55:02'),
(954, 8, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:01:31', '2023-12-15 23:01:44'),
(955, 14, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:04:45', '2023-12-15 23:04:56'),
(956, 20, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:05:18', '2023-12-15 23:05:25'),
(957, 29, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:05:34', '2023-12-15 23:05:40'),
(958, 32, 3, 15000.00, NULL, NULL, 'approved', '2023-12-15 23:05:46', '2023-12-15 23:05:50'),
(959, 33, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:07:15', '2023-12-15 23:07:50'),
(960, 38, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:08:12', '2023-12-15 23:08:23'),
(961, 46, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:08:29', '2023-12-15 23:08:37'),
(962, 52, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:08:44', '2023-12-15 23:09:04'),
(963, 57, 3, 5000.00, NULL, NULL, 'approved', '2023-12-15 23:09:10', '2023-12-15 23:09:21'),
(964, 64, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:09:29', '2023-12-15 23:11:01'),
(965, 83, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:11:14', '2023-12-15 23:11:34'),
(966, 90, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:11:45', '2023-12-15 23:11:58'),
(967, 95, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:12:12', '2023-12-15 23:12:19'),
(968, 107, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:12:30', '2023-12-15 23:12:35'),
(969, 112, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:12:41', '2023-12-15 23:12:53'),
(970, 117, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:13:06', '2023-12-15 23:13:36'),
(971, 121, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:13:45', '2023-12-15 23:13:50'),
(972, 126, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:13:57', '2023-12-15 23:14:07'),
(973, 131, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:14:42', '2023-12-15 23:14:48'),
(974, 136, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:14:55', '2023-12-15 23:14:59'),
(975, 141, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:15:15', '2023-12-15 23:15:20'),
(976, 146, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:15:31', '2023-12-15 23:15:38'),
(977, 151, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:15:46', '2023-12-15 23:15:55'),
(978, 157, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:16:50', '2023-12-15 23:17:59'),
(979, 162, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:18:07', '2023-12-15 23:18:10'),
(980, 167, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:18:17', '2023-12-15 23:18:20'),
(981, 172, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:18:27', '2023-12-15 23:18:32'),
(982, 177, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:18:43', '2023-12-15 23:18:47'),
(983, 182, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:19:01', '2023-12-15 23:21:38'),
(984, 187, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:21:51', '2023-12-15 23:21:56'),
(985, 192, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:22:01', '2023-12-15 23:22:06'),
(986, 197, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:22:24', '2023-12-15 23:22:36'),
(987, 202, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:22:42', '2023-12-15 23:22:48'),
(988, 207, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:23:42', '2023-12-15 23:24:35'),
(989, 212, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:25:10', '2023-12-15 23:25:14'),
(990, 216, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:25:21', '2023-12-15 23:25:31'),
(991, 220, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:25:36', '2023-12-15 23:25:41'),
(992, 225, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:25:52', '2023-12-15 23:25:55'),
(993, 229, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:25:59', '2023-12-15 23:26:05'),
(994, 233, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:26:09', '2023-12-15 23:26:14'),
(995, 236, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:26:19', '2023-12-15 23:26:45'),
(996, 240, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:27:09', '2023-12-15 23:27:24'),
(997, 244, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:27:56', '2023-12-15 23:28:11'),
(998, 259, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:28:45', '2023-12-15 23:30:25'),
(999, 8, 3, NULL, NULL, NULL, 'approved', '2023-12-15 23:30:46', '2023-12-15 23:31:01'),
(1000, 8, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-12-16 05:02:24', '2023-12-16 05:05:09'),
(1001, 8, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2023-12-16 07:21:51', '2023-12-16 07:22:30'),
(1002, 8, 3, NULL, NULL, NULL, 'approved', '2024-05-28 20:22:13', '2024-05-28 20:22:19'),
(1003, 8, 3, NULL, NULL, NULL, 'approved', '2024-06-09 19:37:43', '2024-06-09 19:39:10'),
(1004, 14, 3, NULL, NULL, NULL, 'approved', '2024-06-09 19:41:16', '2024-06-09 19:41:23'),
(1005, 20, 3, NULL, NULL, NULL, 'approved', '2024-06-09 19:42:11', '2024-06-09 19:42:16'),
(1006, 29, 3, NULL, NULL, NULL, 'approved', '2024-06-09 19:45:48', '2024-06-09 19:45:54'),
(1007, 32, 3, 15000.00, NULL, NULL, 'approved', '2024-06-09 19:46:28', '2024-06-09 19:46:33'),
(1008, 33, 3, NULL, 'Excellent! I personally used it too, very Applicable', NULL, 'approved', '2024-06-09 22:05:43', '2024-06-09 22:08:11'),
(1009, 38, 3, NULL, NULL, NULL, 'approved', '2024-06-09 22:08:16', '2024-06-09 22:13:22'),
(1010, 46, 3, NULL, NULL, NULL, 'approved', '2024-06-09 22:13:26', '2024-06-09 22:18:50'),
(1011, 52, 3, NULL, 'Normal! Not used often but know the Product', NULL, 'approved', '2024-06-09 22:18:55', '2024-06-09 22:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin', '2023-09-18 14:13:39', '2023-09-18 14:13:39'),
(2, 'user', 'User', 'User', '2023-09-18 14:13:42', '2023-09-18 14:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 2, 'App\\Models\\User'),
(2, 3, 'App\\Models\\User'),
(2, 5, 'App\\Models\\User'),
(2, 6, 'App\\Models\\User'),
(2, 7, 'App\\Models\\User'),
(2, 8, 'App\\Models\\User'),
(2, 9, 'App\\Models\\User'),
(2, 10, 'App\\Models\\User'),
(2, 11, 'App\\Models\\User'),
(2, 12, 'App\\Models\\User'),
(2, 13, 'App\\Models\\User'),
(2, 14, 'App\\Models\\User'),
(2, 15, 'App\\Models\\User'),
(2, 16, 'App\\Models\\User'),
(2, 17, 'App\\Models\\User'),
(2, 18, 'App\\Models\\User'),
(2, 19, 'App\\Models\\User'),
(2, 20, 'App\\Models\\User'),
(2, 21, 'App\\Models\\User'),
(2, 22, 'App\\Models\\User'),
(2, 23, 'App\\Models\\User'),
(2, 24, 'App\\Models\\User'),
(2, 25, 'App\\Models\\User'),
(2, 26, 'App\\Models\\User'),
(2, 27, 'App\\Models\\User'),
(2, 28, 'App\\Models\\User'),
(2, 29, 'App\\Models\\User'),
(2, 31, 'App\\Models\\User'),
(2, 32, 'App\\Models\\User'),
(2, 33, 'App\\Models\\User'),
(2, 34, 'App\\Models\\User'),
(2, 35, 'App\\Models\\User'),
(2, 36, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_amount` varchar(255) NOT NULL DEFAULT '0',
  `min_withdrawal` double(8,2) NOT NULL DEFAULT 0.00,
  `chat` varchar(250) DEFAULT NULL,
  `tg` varchar(250) NOT NULL,
  `active_hour` time DEFAULT NULL,
  `close_hour` time DEFAULT NULL,
  `cert` varchar(255) DEFAULT NULL,
  `letter` varchar(255) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `term` longtext DEFAULT NULL,
  `event` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `ref_amount`, `min_withdrawal`, `chat`, `tg`, `active_hour`, `close_hour`, `cert`, `letter`, `about`, `term`, `event`, `created_at`, `updated_at`) VALUES
(1, '70', 0.02, NULL, 'https://t.me/sample', NULL, NULL, 'uploads/certificate/certificate_1717457220.jpg', 'uploads/certificate/L-of-A_1717457220.jpg', '<h4>About Tanknewmedia&nbsp;</h4><p>We\'re a full-service design &amp; digital growth companies<br>We provide creative design, digital &amp; marketing solutions to help businesses grow.<br><br>&nbsp;End User Experience Monitoring<br>Optimize user experience with detailed browser performance data correlated to backend performance<br>Salesforce Achieves Amazon Web Services (AWS) Cloud Operations Competency for AWS Observability<br>The new AWS Cloud Operations Competency program allows customers to select validated AWS Partners who offer comprehensive solutions with an integrated approach across Monitoring and Observability.<br>Developer Engineering Profiling<br>Learn How to Modernize How You Observe a Monolith Java App<br>Customers use APM/Observability to analyze of every method call inside a monolith Java to look for the longest running methods to point their performance engineers at to make the monolith run faster.<br>Mike Mallo | April 12, 2023<br>&nbsp;</p>', '<h4>TERMS AND CONDITIONS&nbsp;</h4><p>I. Drive Traffic<br>1.1) Reset requires a minimum deposit of £99<br>1.2) Once all drive traffic has been done, users should apply for a full withdrawal and receive the withdrawal amount before they can request to reset their account</p><p>II. Withdrawal<br>2.1）Please DO NOT use the same cryptocurrency address information to register multiple user accounts on the platform, if gets detected by the system the account will be frozen<br>2.2）After completing all products, users may apply for a full withdrawal<br>2.3) Withdrawal or refund is not available in the middle of the drive traffic process<br>2.4) Users are required to submit withdrawal requests from the platform to receive payment<br>2.5) The maximum withdrawal amount is £9999 for Normal &amp; Silver &amp; Gold &amp; Platinum users and no maximum withdrawal amount for Diamond users<br>2.6) Merchant\'s outstanding has to be paid back to the merchant on the given grace period. All legal fees are to be borne by the party who failed to repay the merchant. All funds in the account will be classified as unclaimed<br>2.7) Personal multi-account Products will lead to the suspension of the merchant\'s store, affecting the merchant\'s credibility and the invalidation of products. The platform prohibits the same cryptocurrency address bound to multiple accounts, please DO NOT use individual multi-account, if the cryptocurrency address is bound to multiple accounts, it will cause all funds to freeze for up to 90 days or the account permanently blocked<br>2.8) The platform is designed to prevent people from maliciously money laundering or cashing out a series of improper behavior<br>2.9) Please bind your withdrawal information to the platform before submitting it for withdrawal. Before proceeding, the withdrawal clients must complete all of the Product submission requirements. During the working hours of the platform, you can withdraw your money through the \"withdrawal\" interface. Click the \"Submit\" button after entering the amount you want to withdraw and enter your withdrawal passcode to withdraw. The specific arrival time is subject to the cryptocurrency wallet<br>3.0) Minimum Credit Score Requirement: To be eligible for fund withdrawals, customers must have a minimum credit score of 100 as determined by Salesforce. The credit score will be evaluated based on Salesforce chosen credit scoring model. Customers with credit scores below 100 will not be able to withdraw funds until their credit score meets or exceeds the required threshold. If have any questions do contact customer service for more inquiries.</p><p><br>III. Funds<br>3.1) All funds of the user will be safely kept in the user\'s account and can be requested to withdraw the total amount once products have been completed.<br>3.2) To avoid any loss of funds, all funds will be processed by the system and not manually<br>3.3) If there is any unexpected loss of funds, the platform will assume all responsibility<br>3.4) Each account is required to complete all Products in the account and have at least £99 in funds to process any withdrawals<br>3.5) Each Product comes from a different merchant. If you do not deposit within 30 minutes, you need to confirm the merchant\'s cryptocurrency address with customer service again before making a deposit<br>3.5.1) To ensure that the deposit progress is made quickly, please make sure that the cryptocurrency address and the amount you are transferring are the same as provided. If you encounter any unsolvable problems during the deposit process, please contact the platform\'s customer service immediately. Due to a large amount of transactions, please make sure to confirm the deposit cryptocurrency address of this platform carefully before depositing. The platform occasionally changes the deposit cryptocurrency address<br>3.6) If you have a negative amount in your account, you will need to deposit to your account before you can proceed to the next Product</p><p>IV. Account Security<br>4.1) Please do not disclose any passwords to others, if it causes any loss, the platform will not be responsible for any loss<br>4.2) Users are not recommended to set their birthday password, ID card number, or cell phone number as withdrawal passcode or login password<br>4.3) Login password or withdrawal passcode may be reset by contacting online customer service if forgotten<br>4.4) User and Business Non-Disclosure Agreement<br>4.4.1) The Products to be completed on this platform are real-time data from real users. Therefore, the users must ensure the tasks\' confidentiality and platform<br>4.5) Only one (1) account registration is allowed per mobile number<br>4.6) Legal measures will be taken in the event of malicious misappropriation of an account</p><p>V. Products<br>5.1) Normal users will be paid 0.5% for each drive traffic. Silver users will be paid 0.75% for each drive]this traffic. Gold users will be paid 1.0% for each drive traffic.<br>5.2) Platinum users will be paid 1.25% for each drive traffic. Diamond users will be paid 1.5% for each drive traffic<br>5.3) Each completed product will have funds and rewards returned to the user\'s account on the spot<br>5.4) The system will randomly assign Products to the user\'s account according to the total amount on the user\'s account<br>5.5) Once the Product has been assigned to the user\'s account, users will have the chance to get higher price products which depending on the system cannot be canceled or skipped.<br>5.5.1) All Products will be randomly assigned by the system. Once the Product is accepted and allocated by the system, no changes, cancellations, or abandoned data are strictly not allowed.<br>5.6) To protect the user\'s benefits, the amount of Products will be increased according to the total account balance, and so will the earnings!<br>5.7) If we receive the result of a complaint from a merchant that Products have not been completed after a long period, your account will be frozen<br>5.8) Multiple products to be reset every 24 hours.</p><p>VI. Multiple Products<br>6.1) Multiple Products are made up of 0 to 5 products, the system will randomly assign multiple products, and the user has a higher chance to get 1 or 2 products in multiple Products<br>6.2) Normal users will get 5% for each Product in the multiple Products. Silver users will get 7.5% for each Product in the multiple Products. Gold users will get 10.0% for each Product in the multiple Products.<br>6.3) Platinum users get 12.5% for each Product in the multiple Products. Diamond users get 15.0% for each Product in the multiple Products.<br>6.4) Once users receive multiple Products, funds will not be refunded to the account instantly and will be only returned to the account upon completion of each product in the combination.<br>6.5) The system will randomly assign multiple Products to the user\'s account according to the total balance range on the user\'s account<br>6.6) Once multiple Products are distributed to users, all orders couldn\'t be cancelled.<br>6.7) For all membership levels, there will be the opportunity for multiple package products, with a maximum of 3set package products<br>6.8) (SR) All levels of membership with a maximum recharge of USDT9999</p><p>VII. The deposit<br>7.1) The amount of deposit is the user\'s choice, we cannot decide the amount of deposit for the user, we suggest the user deposit according to their ability or after being familiar with the platform<br>7.2) If a user needs to deposit due to multiple Products, we recommend that the user deposits according to the negative amount shown on the account<br>7.3) Before making a deposit, the user must request and confirm cryptocurrency address details from the online customer service<br>7.4) If the user deposits to the wrong cryptocurrency address, the platform will not be held responsible for any loss</p><p>VIII. Product Merchant<br>8.1) There are different products updated on the platform every minute, a product that does not drive traffic for a long period will cause data failure to be uploaded to the system. To protect the merchant\'s credibility, users must complete the product within 8 hours. Failure to do so may result in a complaint from the merchant and the order will be fined or frozen!<br>8.2) The client will provide cryptocurrency address details for users to make deposits.</p><p>IX. Invitation<br>9.1) New users can only invite other users after 14 days of registration or after upgrading to Diamond Membership by using the Member ID<br>9.2) If the account does not complete all the products, users will not be able to invite other users.<br>9.3) Once the invitation code has been used, it takes 14 days to renew the Member ID<br>9.4) The referrer will receive a 70% referral member.<br>9.5) Platform users can become platform agents by referring new members and can get additional dynamic rewards. The reward is 70% of the daily profit of the direct first-level user</p><p>X. Operation time<br>10.1) Platform operating hours 10:00 to 22:59 (UTC +0 GMT)<br>10.2) Online customer service operating hours 10:00 to 22:59 (UTC +0 GMT)<br>10.3) Platform withdrawal time 10:00 to 22:59 (UTC +0 GMT)</p>', NULL, '2023-09-27 17:06:50', '2024-06-03 22:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `tiers`
--

CREATE TABLE `tiers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `percent` double(8,2) NOT NULL DEFAULT 0.00,
  `reset` int(11) NOT NULL DEFAULT 3,
  `daily_optimize` int(11) NOT NULL DEFAULT 30,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tiers`
--

INSERT INTO `tiers` (`id`, `name`, `icon`, `price`, `percent`, `reset`, `daily_optimize`, `created_at`, `updated_at`) VALUES
(1, 'Bronze', 'uploads/icon/Normal.png', 100, 0.80, 2, 40, '2023-09-19 04:49:11', '2023-09-19 04:49:11'),
(2, 'Silver', 'uploads/icon/Silver.png', 500, 1.00, 2, 45, '2023-09-19 04:51:35', '2023-09-19 04:51:35'),
(3, 'Gold', 'uploads/icon/Gold.png', 1500, 1.50, 2, 50, '2023-09-19 04:52:27', '2023-09-19 04:52:27'),
(4, 'Premium', 'uploads/icon/Platinum.png', 3000, 2.00, 2, 60, '2023-09-19 04:54:28', '2023-09-19 04:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(250) NOT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ref_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `withdrawal_pass` varchar(255) NOT NULL DEFAULT '1234',
  `pass` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `bonus_ispaid` tinyint(1) NOT NULL DEFAULT 0,
  `optimized` int(11) NOT NULL DEFAULT 0,
  `min_bal` int(11) NOT NULL DEFAULT 50,
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `frozen` double(8,2) NOT NULL DEFAULT 0.00,
  `asset` double(8,2) NOT NULL DEFAULT 0.00,
  `reset_count` int(11) NOT NULL DEFAULT 1,
  `credit_score` int(11) NOT NULL DEFAULT 60,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `tier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `gender`, `user_id`, `ref_id`, `email`, `email_verified_at`, `withdrawal_pass`, `pass`, `password`, `remember_token`, `bonus_ispaid`, `optimized`, `min_bal`, `balance`, `frozen`, `asset`, `reset_count`, `credit_score`, `is_active`, `tier_id`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin', NULL, NULL, 'ref_02', 'Admin@salesforcereviews.info', NULL, '1234', '12345678', '$2y$10$5x07oAoTfdnPnZKEGW5ECehbMnZ/VpteDl1iEnAqs05YUPlnry7wK', NULL, 0, 0, 50, 3576.12, 0.00, 3576.12, 1, 0, 0, NULL, '2023-09-18 14:28:10', '2024-06-09 22:19:06'),
(3, 'user', 'user', 'Male', 2, 'pSRiDJ', NULL, NULL, '12345', '12345678', '$2y$10$zEzWeKRqFq4Vu9JXePHMPO8kgXPfzej1pYRMx9.SDv0PkC7mQeVRK', NULL, 1, 13, 55, 8408.37, 11317.75, 51891.71, 2, 20, 1, 3, '2023-09-18 14:53:06', '2024-06-09 22:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `wallet` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `recipient` varchar(255) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_products`
--

CREATE TABLE `user_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_products`
--

INSERT INTO `user_products` (`id`, `user_id`, `product_id`, `price`, `created_at`, `updated_at`) VALUES
(16, 3, 32, 15000.00, '2023-11-19 10:53:13', '2023-11-19 10:53:13'),
(28, 3, 57, 5000.00, '2023-12-15 20:52:27', '2023-12-15 20:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `status` enum('approved','declined','pending') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposits_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_infos`
--
ALTER TABLE `payment_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tier_id_foreign` (`tier_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiers`
--
ALTER TABLE `tiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_user_id_foreign` (`user_id`),
  ADD KEY `users_tier_id_foreign` (`tier_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_products`
--
ALTER TABLE `user_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_products_user_id_foreign` (`user_id`),
  ADD KEY `user_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrawals_user_id_foreign` (`user_id`),
  ADD KEY `withdrawals_wallet_id_foreign` (`wallet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `payment_infos`
--
ALTER TABLE `payment_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tiers`
--
ALTER TABLE `tiers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_products`
--
ALTER TABLE `user_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `product_tier_id_foreign` FOREIGN KEY (`tier_id`) REFERENCES `tiers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_tier_id_foreign` FOREIGN KEY (`tier_id`) REFERENCES `tiers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD CONSTRAINT `user_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_products`
--
ALTER TABLE `user_products`
  ADD CONSTRAINT `user_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD CONSTRAINT `withdrawals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `withdrawals_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `user_payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
