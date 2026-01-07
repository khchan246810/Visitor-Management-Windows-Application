-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2025 at 10:45 AM
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
-- Database: `cvmspythondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add department', 6, 'add_department'),
(22, 'Can change department', 6, 'change_department'),
(23, 'Can delete department', 6, 'delete_department'),
(24, 'Can view department', 6, 'view_department'),
(25, 'Can add add visitor', 7, 'add_addvisitor'),
(26, 'Can change add visitor', 7, 'change_addvisitor'),
(27, 'Can delete add visitor', 7, 'delete_addvisitor'),
(28, 'Can view add visitor', 7, 'view_addvisitor'),
(29, 'Can add user', 8, 'add_customuser'),
(30, 'Can change user', 8, 'change_customuser'),
(31, 'Can delete user', 8, 'delete_customuser'),
(32, 'Can view user', 8, 'view_customuser');

-- --------------------------------------------------------

--
-- Table structure for table `cvmsapp_addvisitor`
--

CREATE TABLE `cvmsapp_addvisitor` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mobilenumber` varchar(15) NOT NULL,
  `address` varchar(250) NOT NULL,
  `whomtomeet` varchar(250) NOT NULL,
  `reasontomeet` varchar(250) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `status` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` date NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cvmsapp_addvisitor`
--

INSERT INTO `cvmsapp_addvisitor` (`id`, `fullname`, `email`, `mobilenumber`, `address`, `whomtomeet`, `reasontomeet`, `remark`, `status`, `created_at`, `updated_at`, `department_id`) VALUES
(1, 'Rakesh Mishra', 'rakesh@gmail.com', '4654654654', 'O-908, GHU, Block-7', 'Mr. Gagan', 'Interview', 'Visitor Out', 'Out', '2025-03-24 14:15:53.193059', '2025-03-24', 3),
(3, 'Abir Singh', 'abir@gmail.com', '8979778797', 'P-901, GHU, Block-6, New Delhi', 'Mr. Tipendra', 'For daily work', '0', '0', '2025-03-24 14:17:37.761588', '2025-03-24', 1),
(4, 'Manish Kumar', 'manish@gmail.com', '8979778797', 'O-908, GHU, Block-7', 'Renu Sharma', 'Personal', '0', '0', '2025-03-25 03:38:56.400735', '2025-03-25', 5),
(5, 'Amit Kumar', 'amit12@gmail.com', '1231230', 'NA ', 'HR Tech', 'Interview', 'Interviw Done', 'Out', '2025-05-03 08:31:24.898478', '2025-05-03', 5);

-- --------------------------------------------------------

--
-- Table structure for table `cvmsapp_customuser`
--

CREATE TABLE `cvmsapp_customuser` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `mobilenumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cvmsapp_customuser`
--

INSERT INTO `cvmsapp_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `profile_pic`, `mobilenumber`) VALUES
(1, 'pbkdf2_sha256$390000$g4ytZnMrY3z0LY9qIhNxkD$is1x4S9imjz7sI3XrxQxczld0T5JlAJqolbIULB7dFQ=', '2025-05-03 08:32:54.487842', 1, 'admin', 'Admin', 'Sample', 'admin@gmail.com', 1, 1, '2025-03-24 14:14:30.841792', 'media/profile_pic/avatar-01.jpg', '9865239632');

-- --------------------------------------------------------

--
-- Table structure for table `cvmsapp_customuser_groups`
--

CREATE TABLE `cvmsapp_customuser_groups` (
  `id` int(11) NOT NULL,
  `customuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvmsapp_customuser_user_permissions`
--

CREATE TABLE `cvmsapp_customuser_user_permissions` (
  `id` int(11) NOT NULL,
  `customuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvmsapp_department`
--

CREATE TABLE `cvmsapp_department` (
  `id` int(11) NOT NULL,
  `deptname` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cvmsapp_department`
--

INSERT INTO `cvmsapp_department` (`id`, `deptname`, `created_at`) VALUES
(1, 'Sales', '2025-03-24 14:14:59.057025'),
(2, 'Account', '2025-03-24 14:15:02.839717'),
(3, 'Technical', '2025-03-24 14:15:05.958653'),
(4, 'Digital Marketing', '2025-03-24 14:15:10.739315'),
(5, 'HR', '2025-03-24 14:15:18.774081');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(7, 'cvmsapp', 'addvisitor'),
(8, 'cvmsapp', 'customuser'),
(6, 'cvmsapp', 'department'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-03-24 14:13:47.682499'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-03-24 14:13:47.745021'),
(3, 'auth', '0001_initial', '2025-03-24 14:13:47.910137'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-03-24 14:13:48.119028'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-03-24 14:13:48.130998'),
(6, 'auth', '0004_alter_user_username_opts', '2025-03-24 14:13:48.138977'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-03-24 14:13:48.148951'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-03-24 14:13:48.152937'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-03-24 14:13:48.163909'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-03-24 14:13:48.175876'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-03-24 14:13:48.186846'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-03-24 14:13:48.202016'),
(13, 'auth', '0011_update_proxy_permissions', '2025-03-24 14:13:48.212985'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-03-24 14:13:48.222958'),
(15, 'cvmsapp', '0001_initial', '2025-03-24 14:13:48.667199'),
(16, 'admin', '0001_initial', '2025-03-24 14:13:48.992564'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-03-24 14:13:49.102474'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-03-24 14:13:49.114181'),
(19, 'sessions', '0001_initial', '2025-03-24 14:13:49.157006');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ra6pf1khguxvhwf0o078zrmzjg165972', '.eJxVjEEOwiAQRe_C2pAZ2gq4dO8ZyDAMUjU0Ke3KeHfbpAvd_vfef6tA61LC2mQOY1IXher0u0Xip9QdpAfV-6R5qss8Rr0r-qBN36Ykr-vh_h0UamWrrZyjy5QQsxgxZGWA1PseLBuIMQo69tgxOCeUPfDGGMR17NCkwarPF_0_OC4:1twv7A:bVGYx1v-aLDXL6v_PiAPwbymTzSdp-o8zPVmv33fSGc', '2025-04-08 03:38:08.646607');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `cvmsapp_addvisitor`
--
ALTER TABLE `cvmsapp_addvisitor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cvmsapp_addvisitor_department_id_4760af71_fk_cvmsapp_d` (`department_id`);

--
-- Indexes for table `cvmsapp_customuser`
--
ALTER TABLE `cvmsapp_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `mobilenumber` (`mobilenumber`);

--
-- Indexes for table `cvmsapp_customuser_groups`
--
ALTER TABLE `cvmsapp_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cvmsapp_customuser_groups_customuser_id_group_id_485b26e2_uniq` (`customuser_id`,`group_id`),
  ADD KEY `cvmsapp_customuser_groups_group_id_46299f4a_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `cvmsapp_customuser_user_permissions`
--
ALTER TABLE `cvmsapp_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cvmsapp_customuser_user__customuser_id_permission_b235aef5_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `cvmsapp_customuser_u_permission_id_cf6e84ee_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cvmsapp_department`
--
ALTER TABLE `cvmsapp_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_cvmsapp_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `cvmsapp_addvisitor`
--
ALTER TABLE `cvmsapp_addvisitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cvmsapp_customuser`
--
ALTER TABLE `cvmsapp_customuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cvmsapp_customuser_groups`
--
ALTER TABLE `cvmsapp_customuser_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cvmsapp_customuser_user_permissions`
--
ALTER TABLE `cvmsapp_customuser_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cvmsapp_department`
--
ALTER TABLE `cvmsapp_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `cvmsapp_addvisitor`
--
ALTER TABLE `cvmsapp_addvisitor`
  ADD CONSTRAINT `cvmsapp_addvisitor_department_id_4760af71_fk_cvmsapp_d` FOREIGN KEY (`department_id`) REFERENCES `cvmsapp_department` (`id`);

--
-- Constraints for table `cvmsapp_customuser_groups`
--
ALTER TABLE `cvmsapp_customuser_groups`
  ADD CONSTRAINT `cvmsapp_customuser_g_customuser_id_5a2fc176_fk_cvmsapp_c` FOREIGN KEY (`customuser_id`) REFERENCES `cvmsapp_customuser` (`id`),
  ADD CONSTRAINT `cvmsapp_customuser_groups_group_id_46299f4a_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `cvmsapp_customuser_user_permissions`
--
ALTER TABLE `cvmsapp_customuser_user_permissions`
  ADD CONSTRAINT `cvmsapp_customuser_u_customuser_id_162f058f_fk_cvmsapp_c` FOREIGN KEY (`customuser_id`) REFERENCES `cvmsapp_customuser` (`id`),
  ADD CONSTRAINT `cvmsapp_customuser_u_permission_id_cf6e84ee_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_cvmsapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `cvmsapp_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
