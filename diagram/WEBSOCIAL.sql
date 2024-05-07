-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 07, 2024 lúc 07:54 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `WEBSOCIAL`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `follow`
--

CREATE TABLE `follow` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `following` int(11) NOT NULL,
  `follower` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `follow`
--

INSERT INTO `follow` (`id`, `following`, `follower`, `created_at`, `updated_at`, `version`) VALUES
(18, 1, 4, '2023-07-29 19:45:17', '2023-07-29 19:45:17', 1),
(19, 1, 5, '2023-07-29 20:12:20', '2023-07-29 20:12:20', 1),
(24, 5, 1, '2023-08-09 01:12:07', '2023-08-09 01:12:07', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `created_at`, `updated_at`) VALUES
(44, 1, 1, 'huy', '2023-08-08 21:23:45', '2023-08-08 21:23:45'),
(45, 1, 2, 'Alo Toan', '2023-08-08 21:24:19', '2023-08-08 21:24:19'),
(46, 1, 5, 'Alo v toan', '2023-08-08 21:24:29', '2023-08-08 21:24:29'),
(47, 5, 1, 'Hả', '2023-08-08 21:25:31', '2023-08-08 21:25:31'),
(48, 5, 2, 'Hello', '2023-08-08 21:47:54', '2023-08-08 21:47:54'),
(49, 5, 2, 'Hello', '2023-08-08 21:47:58', '2023-08-08 21:47:58'),
(50, 5, 6, 'Hello', '2023-08-08 21:48:03', '2023-08-08 21:48:03'),
(51, 5, 1, 'Hello Huy', '2023-08-08 23:11:35', '2023-08-08 23:11:35'),
(52, 1, 5, 'Gì mày', '2023-08-08 23:11:50', '2023-08-08 23:11:50'),
(53, 5, 1, 'Hello', '2023-08-08 23:16:29', '2023-08-08 23:16:29'),
(54, 1, 5, 'Allooo', '2023-08-08 23:26:23', '2023-08-08 23:26:23'),
(55, 5, 1, 'Gì vậy', '2023-08-08 23:26:50', '2023-08-08 23:26:50'),
(56, 5, 1, 'Alo', '2023-08-08 23:27:35', '2023-08-08 23:27:35'),
(57, 1, 5, 'Gì vậy', '2023-08-08 23:27:47', '2023-08-08 23:27:47'),
(58, 1, 2, 'helo', '2023-08-08 23:41:10', '2023-08-08 23:41:10'),
(59, 2, 1, 'Gì vâyj fen', '2023-08-08 23:41:27', '2023-08-08 23:41:27'),
(60, 1, 2, 'Không có gì hết', '2023-08-08 23:41:43', '2023-08-08 23:41:43'),
(61, 1, 1, 'Hello Huy', '2023-08-08 23:43:47', '2023-08-08 23:43:47'),
(62, 1, 2, 'Hello Đức Toàn', '2023-08-08 23:44:14', '2023-08-08 23:44:14'),
(63, 2, 5, 'Cái gì vậy', '2023-08-08 23:44:24', '2023-08-08 23:44:24'),
(64, 1, 2, 'hello huy', '2023-08-09 03:21:25', '2023-08-09 03:21:25'),
(65, 1, 2, 'Huy', '2023-08-11 01:29:55', '2023-08-11 01:29:55'),
(66, 2, 1, 'Huy', '2023-08-11 01:30:22', '2023-08-11 01:30:22'),
(67, 1, 2, 'Toan', '2023-08-11 01:30:48', '2023-08-11 01:30:48'),
(68, 2, 1, 'Hello', '2023-08-11 01:31:03', '2023-08-11 01:31:03'),
(69, 1, 2, 'huy', '2023-08-11 01:51:35', '2023-08-11 01:51:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_19_023304_create_posts_talbe', 2),
(6, '2023_07_19_025432_update-post-table', 3),
(7, '2023_07_19_025900_update_post_table', 4),
(8, '2023_07_19_030625_create_post_files_table', 5),
(9, '2023_07_24_020240_add_field_version_posts', 6),
(13, '2023_07_24_023249_create_follow_table', 7),
(14, '2023_07_24_023859_create_post_comments', 8),
(15, '2023_07_26_034726_delete_post_likes_table', 9),
(16, '2023_08_04_023028_messages_table', 10),
(17, '2023_08_06_125548_update_user_table', 11),
(18, '2023_08_10_042109_update_comment_post', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('huyhn2.21it@vku.udn.vn', '$2y$10$cirXT8c43Pwd5Cp63aWrp.G3I.oxmp8HCRGFPSgG4EQLhfv5zIAE6', '2023-07-29 21:27:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `privacy_mode` varchar(255) NOT NULL DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `content`, `created_at`, `updated_at`, `user_id`, `version`, `privacy_mode`) VALUES
(42, 'Imag 1', '2023-07-11 08:06:30', NULL, 2, 1, ''),
(43, 'Image 2', '2023-07-11 08:06:46', NULL, 2, 1, ''),
(44, 'Image 4', '2023-07-11 08:06:55', NULL, 4, 1, ''),
(45, 'Image 5', '2023-07-11 08:07:09', NULL, 2, 1, ''),
(46, 'Image 1', '2023-07-11 08:08:09', NULL, 2, 1, ''),
(48, 'Image 3', '2023-07-11 08:08:32', NULL, 4, 1, ''),
(50, 'Image 1', '2023-07-11 08:09:19', NULL, 4, 1, ''),
(52, 'Image 5', '2023-07-11 08:09:37', NULL, 48, 1, ''),
(53, 'Image 7', '2023-07-11 08:09:52', NULL, 48, 1, ''),
(54, 'Image 1', '2023-07-11 08:10:43', NULL, 50, 1, ''),
(55, 'Image 2', '2023-07-11 08:10:51', NULL, 50, 1, ''),
(56, 'Image 4', '2023-07-11 08:10:58', NULL, 50, 1, ''),
(57, 'Image 5', '2023-07-11 08:11:08', NULL, 50, 1, ''),
(58, 'Image 4', '2023-07-11 08:11:21', NULL, 50, 1, ''),
(94, 'Anh dau tien', '2023-08-03 23:41:01', '2023-08-03 23:41:01', 2, 1, ''),
(95, 'Hello', '2023-08-03 23:44:35', '2023-08-03 23:44:35', 2, 1, ''),
(96, '', '2023-08-03 23:44:50', '2023-08-03 23:44:50', 2, 1, ''),
(97, '', '2023-08-03 23:45:03', '2023-08-03 23:45:03', 2, 1, ''),
(98, '', '2023-08-03 23:45:15', '2023-08-03 23:45:15', 2, 1, ''),
(100, 'Hello', '2023-08-03 23:46:53', '2023-08-06 06:05:27', 1, 2, ''),
(101, 'dsadsadas', '2023-08-03 23:47:00', '2023-08-03 23:47:00', 1, 1, ''),
(102, 'dadasd', '2023-08-03 23:47:08', '2023-08-03 23:47:08', 1, 1, ''),
(103, 'asdsadasd', '2023-08-03 23:47:14', '2023-08-03 23:47:14', 1, 1, ''),
(104, 'asdsadasd', '2023-08-03 23:47:28', '2023-08-03 23:47:28', 5, 1, ''),
(105, 'asdsadsadsadsa', '2023-08-03 23:47:38', '2023-08-03 23:47:38', 5, 1, ''),
(106, 'dadasdsadad', '2023-08-03 23:47:47', '2023-08-03 23:47:47', 5, 1, ''),
(107, 'dsadsad', '2023-08-03 23:47:56', '2023-08-03 23:47:56', 5, 1, ''),
(108, 'Hello mọi người', '2023-08-06 03:06:39', '2023-08-06 03:06:39', 2, 1, ''),
(109, '', '2023-08-06 06:38:32', '2023-08-06 06:38:32', 1, 1, 'public'),
(111, 'đasad', '2023-08-06 06:43:54', '2023-08-06 06:43:54', 1, 1, 'public'),
(112, 'đasaddassad', '2023-08-06 06:45:36', '2023-08-09 01:46:43', 1, 2, 'public'),
(113, 'Day la private', '2023-08-06 06:46:26', '2023-08-06 06:46:26', 1, 1, 'public'),
(114, 'day la bai viet private', '2023-08-06 06:48:44', '2023-08-06 06:48:44', 1, 1, 'private'),
(115, 'Day la bai viet friend', '2023-08-07 19:49:47', '2023-08-07 20:50:30', 1, 6, 'friend'),
(116, 'Huynh Ngoc Huy', '2023-08-08 01:24:21', '2023-08-08 01:24:21', 1, 1, 'friend'),
(117, 'Hello', '2023-08-08 19:53:33', '2023-08-08 19:53:33', 1, 1, 'public'),
(125, 'Huy 1', '2023-08-09 02:09:14', '2023-08-09 02:10:09', 1, 2, 'public'),
(126, 'Helapsdjassdas', '2023-08-09 02:38:46', '2023-08-09 02:38:46', 1, 1, 'public');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `level_comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_comments`
--

INSERT INTO `post_comments` (`id`, `content`, `user_id`, `post_id`, `created_at`, `updated_at`, `version`, `level_comment`) VALUES
(1, 'sadasdasd', 1, 82, '2023-07-26 02:20:58', '2023-07-26 02:20:58', 1, ''),
(2, 'dasdasdasdasd', 1, 82, '2023-07-26 02:22:03', '2023-07-26 02:22:03', 1, ''),
(5, 'adsadsadsadsa', 1, 82, '2023-07-26 02:24:41', '2023-07-26 02:24:41', 1, ''),
(6, 'HUynh Ngọc Huy', 1, 77, '2023-07-26 02:28:01', '2023-07-26 02:28:01', 1, ''),
(8, 'Anh dep qua', 1, 71, '2023-07-26 02:35:05', '2023-07-26 02:35:05', 1, ''),
(11, 'đâsdasdasdasdasd', 4, 83, '2023-07-26 03:03:26', '2023-07-26 03:03:26', 1, ''),
(13, 'dsadasdasdas', 1, 82, '2023-07-26 03:03:37', '2023-07-26 03:03:37', 1, ''),
(14, 'sadasdasdasd', 1, 82, '2023-07-26 03:03:39', '2023-07-26 03:03:39', 1, ''),
(15, 'dsadasdasdasdsa', 1, 82, '2023-07-26 03:03:41', '2023-07-26 03:03:41', 1, ''),
(16, 'đâsdasdasdasd', 1, 82, '2023-07-26 03:03:42', '2023-07-26 03:03:42', 1, ''),
(17, 'sấdasdsadasdasd', 1, 82, '2023-07-26 03:03:44', '2023-07-26 03:03:44', 1, ''),
(18, 'sadasdsadasdsd', 1, 82, '2023-07-26 03:03:46', '2023-07-26 03:03:46', 1, ''),
(19, 'ádhasdhaosihoahcsacasca', 1, 82, '2023-07-26 03:25:03', '2023-07-26 03:25:03', 1, ''),
(30, 'jksdjkhasdsa', 1, 81, '2023-07-27 06:05:42', '2023-07-27 06:05:42', 1, ''),
(31, 'afsadsdsadas', 1, 81, '2023-07-27 06:07:12', '2023-07-27 06:07:12', 1, ''),
(32, 'dasdasdsad', 1, 81, '2023-07-27 06:08:29', '2023-07-27 06:08:29', 1, ''),
(33, 'sadsadsa', 1, 81, '2023-07-27 06:08:38', '2023-07-27 06:08:38', 1, ''),
(34, 'sads', 1, 81, '2023-07-27 06:08:45', '2023-07-27 06:08:45', 1, ''),
(35, 'sadsdsad', 1, 81, '2023-07-27 06:09:38', '2023-07-27 06:09:38', 1, ''),
(36, 'sadsadasds', 1, 81, '2023-07-27 06:09:53', '2023-07-27 06:09:53', 1, ''),
(37, 'adadasd', 1, 81, '2023-07-27 06:09:58', '2023-07-27 06:09:58', 1, ''),
(38, 'sadasdsd', 1, 81, '2023-07-27 06:10:00', '2023-07-27 06:10:00', 1, ''),
(39, 'sdadasdsadsad', 1, 81, '2023-07-27 06:12:53', '2023-07-27 06:12:53', 1, ''),
(40, 'asdasdsad', 1, 81, '2023-07-27 06:13:06', '2023-07-27 06:13:06', 1, ''),
(41, 'adsdsad', 1, 81, '2023-07-27 06:13:41', '2023-07-27 06:13:41', 1, ''),
(42, 'sdasdas', 1, 81, '2023-07-27 06:13:55', '2023-07-27 06:13:55', 1, ''),
(44, 'Huynh Ngoc Huy', 1, 91, '2023-07-27 18:39:18', '2023-07-27 18:39:18', 1, ''),
(45, 'Huy', 1, 77, '2023-07-27 20:34:07', '2023-07-27 20:34:07', 1, ''),
(47, 'Anh dep qua', 5, 106, '2023-08-03 23:50:17', '2023-08-03 23:50:17', 1, ''),
(49, 'Huy', 1, 99, '2023-08-04 01:52:58', '2023-08-04 01:52:58', 1, ''),
(50, 'huynh goc huy', 1, 99, '2023-08-04 01:53:38', '2023-08-04 01:53:38', 1, ''),
(51, 'huynh ngoc huy', 1, 99, '2023-08-04 01:53:56', '2023-08-04 01:53:56', 1, ''),
(52, 'dsydahds]]\nsahudiahsdasidu', 1, 99, '2023-08-04 01:54:15', '2023-08-04 01:54:15', 1, ''),
(54, 'hello', 1, 107, '2023-08-06 04:02:23', '2023-08-06 04:02:23', 1, ''),
(55, 'dd', 1, 107, '2023-08-06 04:02:55', '2023-08-06 04:02:55', 1, ''),
(56, 'dd', 1, 107, '2023-08-06 04:03:15', '2023-08-06 04:03:15', 1, ''),
(57, 'asdasdhuy', 1, 107, '2023-08-06 04:06:07', '2023-08-06 04:06:07', 1, ''),
(60, 'sdadasdas', 1, 106, '2023-08-06 04:07:24', '2023-08-06 04:07:24', 1, ''),
(61, 'sadsada', 1, 106, '2023-08-06 04:07:53', '2023-08-06 04:07:53', 1, ''),
(63, 'Hello', 1, 126, '2023-08-09 19:30:48', '2023-08-09 19:30:48', 1, '63'),
(64, 'Hello', 1, 126, '2023-08-09 19:30:51', '2023-08-09 19:30:51', 1, '63.64'),
(65, 'Hello', 1, 126, '2023-08-09 19:30:57', '2023-08-09 19:30:57', 1, '63.65'),
(67, 'Hello', 1, 126, '2023-08-09 20:09:56', '2023-08-09 20:09:56', 1, '67'),
(68, 'Hello', 1, 126, '2023-08-09 20:29:35', '2023-08-09 20:29:35', 1, '68'),
(69, 'hello level 2', 1, 126, NULL, NULL, 1, '68.69'),
(70, 'hello level 2', 1, 126, NULL, NULL, 1, '67.70'),
(71, 'hello level 3', 1, 126, NULL, NULL, 1, '68.69.71'),
(72, 'hello level 4', 1, 126, NULL, NULL, 1, '68.69.71.72'),
(73, '[value-1]', 1, 126, NULL, NULL, 1, '73'),
(75, 'hello 5', 1, 126, NULL, NULL, 1, '68.69.71.75'),
(76, 'hello 6', 1, 126, NULL, NULL, 1, '68.69.71.75.76'),
(77, 'hello 7', 1, 126, NULL, NULL, 1, '68.69.71.77');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_files`
--

CREATE TABLE `post_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_files`
--

INSERT INTO `post_files` (`id`, `post_id`, `post_file`) VALUES
(12, 41, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(13, 42, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(14, 43, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(15, 44, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(16, 45, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(17, 46, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(18, 47, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(19, 48, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(20, 49, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(21, 50, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(22, 51, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(23, 52, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(24, 53, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(25, 54, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(26, 55, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(27, 56, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(28, 57, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(29, 58, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
(41, 75, '1690278936_cat_avatar.jpg'),
(42, 76, '1690279166_cat_avatar.jpg'),
(43, 77, '1690280451_cat_avatar.jpg'),
(44, 78, '1690281009_cat_avatar.jpg'),
(45, 79, '1690281041_cat_avatar.jpg'),
(46, 80, '1690281244_cat_avatar.jpg'),
(47, 81, '1690293265_cat_avatar.jpg'),
(48, 82, '1690293301_cat_avatar.jpg'),
(49, 83, '1690363716_intro.png'),
(50, 84, '1690430512_cat_avatar.jpg'),
(51, 85, '1690461402_cat_avatar.jpg'),
(52, 86, '1690468695_cat_avatar.jpg'),
(53, 87, '1690468802_cat_avatar.jpg'),
(54, 88, '1690468856_cat_avatar.jpg'),
(55, 89, '1690468964_cat_avatar.jpg'),
(56, 90, '1690469101_cat_avatar.jpg'),
(57, 91, '1690508344_intro.png'),
(58, 92, '1690533427_cat_avatar.jpg'),
(59, 93, '1690946214_james-wheeler-InOgamK2cuY-unsplash.jpg'),
(60, 94, '1691131261_nobitaAvatar.jpeg'),
(61, 95, '1691131475_doremon_avatar.jpeg'),
(62, 96, '1691131490_images.jpeg'),
(63, 97, '1691131503_james-wheeler-InOgamK2cuY-unsplash.jpg'),
(64, 98, '1691131515_Unknown.jpeg'),
(65, 99, '1691131606_anh-dep-hinh-nen-001-1.jpg'),
(66, 100, '1691131613_images-7.jpeg'),
(67, 101, '1691131620_images.jpeg'),
(68, 102, '1691131628_Unknown.jpeg'),
(69, 103, '1691131634_7cb5492889809cb8303b76b80759f0df.jpg'),
(70, 104, '1691131648_images-5.jpeg'),
(71, 105, '1691131658_images-9.jpeg'),
(72, 106, '1691131667_james-wheeler-InOgamK2cuY-unsplash.jpg'),
(73, 107, '1691131675_nobitaAvatar.jpeg'),
(74, 108, '1691316399_clement-fusil-Fpqx6GGXfXs-unsplash.jpg'),
(75, 109, '1691329112_7cb5492889809cb8303b76b80759f0df.jpg'),
(76, 110, '1691329394_7cb5492889809cb8303b76b80759f0df.jpg'),
(77, 111, '1691329434_7cb5492889809cb8303b76b80759f0df.jpg'),
(78, 112, '1691329536_7cb5492889809cb8303b76b80759f0df.jpg'),
(79, 113, '1691329586_7cb5492889809cb8303b76b80759f0df.jpg'),
(80, 114, '1691329724_clement-fusil-Fpqx6GGXfXs-unsplash.jpg'),
(81, 115, '1691462987_7cb5492889809cb8303b76b80759f0df.jpg'),
(82, 116, '1691483061_7cb5492889809cb8303b76b80759f0df.jpg'),
(83, 117, '1691549613_7cb5492889809cb8303b76b80759f0df.jpg'),
(84, 118, '1691571626_7cb5492889809cb8303b76b80759f0df.jpg'),
(85, 119, '1691571655_7cb5492889809cb8303b76b80759f0df.jpg'),
(86, 120, '1691571695_7cb5492889809cb8303b76b80759f0df.jpg'),
(87, 121, '1691571715_7cb5492889809cb8303b76b80759f0df.jpg'),
(88, 122, '1691571758_7cb5492889809cb8303b76b80759f0df.jpg'),
(89, 123, '1691571796_7cb5492889809cb8303b76b80759f0df.jpg'),
(90, 124, '1691571883_7cb5492889809cb8303b76b80759f0df.jpg'),
(91, 125, '1691572154_7cb5492889809cb8303b76b80759f0df.jpg'),
(92, 126, '1691573926_7cb5492889809cb8303b76b80759f0df.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_likes`
--

CREATE TABLE `post_likes` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `post_likes`
--

INSERT INTO `post_likes` (`created_at`, `updated_at`, `post_id`, `user_id`) VALUES
('2023-08-04 01:33:27', '2023-08-04 01:33:27', 106, 1),
('2023-08-04 01:33:21', '2023-08-04 01:33:21', 107, 1),
('2023-08-07 20:01:27', '2023-08-07 20:01:27', 115, 1),
('2023-08-10 23:24:50', '2023-08-10 23:24:50', 117, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` text DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `version`) VALUES
(1, 'Huynh Ngoc Huy', 'data:image/jpeg;base64,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', 'huyhn2.21it@vku.udn.vn', NULL, '$2y$10$UBPU5n8gQMsc3jENRUP1XuyTmJAc3mYOrb2/4HyDO3m07GJEYsVti', 'vMNlcARmD2p2HuPbl8aoOplErMWJoGouxDOf2fQfKKtWayROiDtvZAUGpfxn', '2023-07-18 18:24:45', '2023-07-29 21:25:08', 1),
(2, 'Phan Đức Toàn', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRYWFBUZGRYWGhoaHRwZGBwaGhgYGR4cHBkZHBodIC4lHB8rHxgcJjgoKy8xNTZDHCQ7QDs0PzA0NTEBDAwMEA8QHxISHzQsJSsxMT8/PzU0NjQ0NT80NDQ0NDE0NjQ0NDQ0NDY2NDQxNj0xMT81NDQ0NDQ2MTQ2NDE0NP/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABQIDBAYHAQj/xABGEAACAQMCAgYHBAkACAcAAAABAgADBBESIQUxBkFRYXGBBxMiMkKRoRQjUnIzYoKSorHB0fBDk7KzwtLh8RUkNERjc6T/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAQIDBAUG/8QAKxEBAQACAQMCBgIBBQAAAAAAAAECEQMSITEEQQUiUWFx0ROxgTNCkaHB/9oADAMBAAIRAxEAPwDs0REBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREDyUVKgUEsQANyScADtJPKQPSnpTSs0GfbqsDopg4J72Pwr3/IGcc470guLts13JXOQi7U18F6z3nJ75S5SLTG11fifpBsqWQrtVYdVIah++SFPkTNduPSqc/d2ox2tV3/AHQv9ZzYAdZA8c/2lTJtnP8Ab5/3mdzrSYRv6+lOtne3p4/Ow+uJIWXpTpnatbunfTdX88MF/rOW6seUK4bceY/qI68joj6E4Nx63ulLUKgbHMbq6+KnBHjykrPm22u3pOr03ZHXkynB7/EHrHIzpPQz0hGo60LsrqYhUqAacseSuvIEnkRgchjrl8c9+VMsNeHSoiJooREQEREBERAREQEREBERAREQEREBERAShjscDPdK54TA+buIcQq1a9R7glaxdtQPwFTjQB1Bcacd0xmrr1bGTnBejf264rPTJS2FRzrO7FSxZVXPNtJByeWd89fQLToTZJjFDWe2ozPnxBOn5Cc2WUldOONscdat/n+dUs+sxuDjz2ndD0VtD/7Wj/q1+vbMm14LQp707ekh7VpqD8wMyvV9luj7uJW3B7msNVO3qMPxBG0nwYjHyMtXnDa9HerRqIO1kYLv+tjB+c7+wlDqCCCMgjBB5Hxkdaf4/u+eXckymb90y6KIqNcW66NG7oPdK9bqPhxzIG2M+ehBZpLLGeWNxuq7L6MelrXKG3rnNakoKsTvVpjbJ7WUkAnryDzzOhT5p4FxBra4pV1z924LAfEp2dfNSw+U+k0YEAg5BGQe0GbY3cY5TVVxESypERAREQEREBERAREQEREBERAREQPJB9M7s0rG6dThhScKexmGlT82EnJqnpNQtw6uq82aiv71amP6yL4TPLG6HWYpWlBAMewGP5nGpvqTJ8LInhlZURdTBQp05YgDkMc5LUayN7rq35WB/lOSd3Zl8t0qxKSJcMxL29p0l11HVF5ZY437O+TpWVVUltuU1LiPpEtVOmmlSoeogBVPhqOr+GYVt0qvnbIsjoIOwSpnuOrHPylbKvLGyOAwKtuGBBHaDsZx02hUkHqOPltOr21wXGSjoetXUqwPgf5zVuOcFCNrTJRyefNWO+M9YMY3S/Jj1SWNTFvO+9FapaztiefqkB7yqgH6icbW2nXuhf8A6Kh3Bh8mYTbjvdy8uOonoiJuwIiICIiAiIgIiICIiAiIgIiICIiB5InpPaNUtayqNT6dSr+J6ZDovmygSWmFxG/Wiut8nJChVBZndjhVUDmT8huSQATIvhM8ub3vRW3qJ9prVnfWqspyAgVgCioo35EdZznM1hOHWyv91UrIyrr1Gm2FTIXXq0qQmogauW/OdC4fZmtbBCrIFesgVgupUSq6qpxkA6ABtkRxLonTuKq1aq4KqFwmAp053OQTnBxseoTldl76uop6O62TS7+sI3D4wSpG2dznlz75h9KOGJVZFdm0pk4BABJxz2mzW1kqOxUYJGWxyyewch5ASyFBc5APPGRn/OUzvZrLL/w0peHNTSq9nRpn1KFmYhmY4BOkHmTtyz/ae9HuOXDtjIKgU9WlGUKzhiVILt7IKEasb5HLM36lYpzCICSeSjn2wlgi4AUADkAAAPADaX128M+r5vPb6Md11pyweruMguIU9VN18/kczaisgbxMMw8fr/3lL2a43fZrNtw9nOEXJ/ztm3cK4yLalTp1qToikguTTKrqYkMwDlwu+7aduZwATMfg1MLqJ2A/mdh/WZ4p03pMXAKurFieoYOR5DaXwysu4z5cJZqtpiRfRssbS2NTPrDQpa889WhdWe/OZKTscBERAREQEREBERAREQEREBERAREQEhuk9matrVVRlwpen3VUGumf3gM9oyOuTE8J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', 'toan123@gmail.com', NULL, '$2y$10$tnpGSzYY3SexvnZtCmSa0eb.zJkdD/I3Fil5D1Y.SPxUr1TJBpNJS', NULL, NULL, NULL, 1),
(5, 'Việt Toàn', 'data:image/png;base64,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', 'vtoan123@gmail.com', NULL, '$2y$10$UBPU5n8gQMsc3jENRUP1XuyTmJAc3mYOrb2/4HyDO3m07GJEYsVti', NULL, NULL, NULL, 1),
(6, 'Nguyễn Lê Khánh Trâm', 'data:image/png;base64,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', 'tram123@gmail.com', NULL, '$2y$10$ghdsIgZRUzmNQ7kQ8Bg2iOJOGrF/uQhsAsCjqAOyzyaFG6bKiImsm', NULL, '2023-07-29 20:17:47', '2023-07-29 20:17:47', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`),
  ADD KEY `messages_receiver_id_foreign` (`receiver_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_files`
--
ALTER TABLE `post_files`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`post_id`,`user_id`),
  ADD KEY `post_likes_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `follow`
--
ALTER TABLE `follow`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT cho bảng `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `post_files`
--
ALTER TABLE `post_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
