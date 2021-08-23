-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2021 at 06:55 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Department', 7, 'add_department'),
(26, 'Can change Department', 7, 'change_department'),
(27, 'Can delete Department', 7, 'delete_department'),
(28, 'Can view Department', 7, 'view_department'),
(29, 'Can add Role', 8, 'add_role'),
(30, 'Can change Role', 8, 'change_role'),
(31, 'Can delete Role', 8, 'delete_role'),
(32, 'Can view Role', 8, 'view_role'),
(33, 'Can add Employee', 9, 'add_employee'),
(34, 'Can change Employee', 9, 'change_employee'),
(35, 'Can delete Employee', 9, 'delete_employee'),
(36, 'Can view Employee', 9, 'view_employee'),
(37, 'Can add Leave', 10, 'add_leave'),
(38, 'Can change Leave', 10, 'change_leave'),
(39, 'Can delete Leave', 10, 'delete_leave'),
(40, 'Can view Leave', 10, 'view_leave'),
(41, 'Can add features', 11, 'add_features'),
(42, 'Can change features', 11, 'change_features'),
(43, 'Can delete features', 11, 'delete_features'),
(44, 'Can view features', 11, 'view_features');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
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
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$a68DaVngx24E$4isZaGyJ29b/wsJTOss/ZN/AFneiH2y0dYnRGErV6pU=', '2021-08-23 03:31:47.818211', 1, 'admin98', '', '', '', 1, 1, '2021-07-20 05:13:47.270560'),
(2, 'pbkdf2_sha256$120000$Naf0YIWoA2BK$8e5SUJdeRPUyKJAW5xoXNcE09fXAzk2TTK5n4DqotOM=', '2021-08-23 03:29:30.681215', 0, 'Kakeru', '', '', '', 0, 1, '2021-07-20 06:01:50.299388'),
(3, 'pbkdf2_sha256$260000$hL09ben0iufXG8ZEnpO1MM$4lNkuYsL4PqHM1AR4m4o5Hxf2P7C0UdLcauXfcDUWcQ=', '2021-07-20 12:20:35.065137', 0, 'Shoyo', '', '', '', 0, 1, '2021-07-20 06:03:05.108235'),
(4, 'pbkdf2_sha256$120000$1alGDFMfrjBn$Eocf4EGXxl2A8X5L5/ylMn1bw5VFenxgZX/ca2q1+ts=', '2021-08-23 03:30:52.773447', 0, 'Pravesh', '', '', 'praveshgg@gmail.com', 0, 1, '2021-08-23 03:30:22.478864');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-07-20 05:59:06.468183', '1', 'Finance', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-07-20 05:59:24.979348', '2', 'HR', 1, '[{\"added\": {}}]', 7, 1),
(3, '2021-07-20 05:59:46.815977', '3', 'Managing Director', 1, '[{\"added\": {}}]', 7, 1),
(4, '2021-07-20 06:00:10.942343', '3', 'Managing Director', 3, '', 7, 1),
(5, '2021-07-20 06:00:26.097344', '4', 'Engineering', 1, '[{\"added\": {}}]', 7, 1),
(6, '2021-07-20 06:00:46.639396', '1', 'Accountant', 1, '[{\"added\": {}}]', 8, 1),
(7, '2021-07-20 06:01:08.352283', '2', 'Peon', 1, '[{\"added\": {}}]', 8, 1),
(8, '2021-07-20 06:01:50.594206', '2', 'Kakeru', 1, '[{\"added\": {}}]', 4, 1),
(9, '2021-07-20 06:02:35.744267', '1', 'Itadori Yuji', 1, '[{\"added\": {}}]', 9, 1),
(10, '2021-07-20 06:03:05.629912', '3', 'Shoyo', 1, '[{\"added\": {}}]', 4, 1),
(11, '2021-07-20 06:03:40.251339', '2', 'Shoyo Kun', 1, '[{\"added\": {}}]', 9, 1),
(12, '2021-07-20 06:06:57.840330', '2', 'Shoyo Kun', 2, '[{\"changed\": {\"fields\": [\"Profile Image\"]}}]', 9, 1),
(13, '2021-07-20 12:17:28.878295', '3', 'Itadori Yuji', 2, '[]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'employee', 'department'),
(9, 'employee', 'employee'),
(8, 'employee', 'role'),
(10, 'leave', 'leave'),
(11, 'myapp', 'features'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-07-20 05:06:42.467483'),
(2, 'auth', '0001_initial', '2021-07-20 05:06:43.193031'),
(3, 'admin', '0001_initial', '2021-07-20 05:06:43.358534'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-07-20 05:06:43.372526'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-07-20 05:06:43.384894'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-07-20 05:06:43.463863'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-07-20 05:06:43.508856'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-07-20 05:06:43.532842'),
(9, 'auth', '0004_alter_user_username_opts', '2021-07-20 05:06:43.543835'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-07-20 05:06:43.594523'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-07-20 05:06:43.598520'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-07-20 05:06:43.609516'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-07-20 05:06:43.634500'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-07-20 05:06:43.656486'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-07-20 05:06:43.678473'),
(16, 'auth', '0011_update_proxy_permissions', '2021-07-20 05:06:43.690467'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-07-20 05:06:43.711451'),
(18, 'employee', '0001_initial', '2021-07-20 05:06:43.959174'),
(19, 'employee', '0002_auto_20200904_1545', '2021-07-20 05:06:44.032827'),
(20, 'leave', '0001_initial', '2021-07-20 05:06:44.129748'),
(21, 'leave', '0002_alter_leave_leavetype', '2021-07-20 05:06:44.143737'),
(22, 'sessions', '0001_initial', '2021-07-20 05:06:44.197706'),
(23, 'employee', '0003_auto_20210720_1722', '2021-07-20 11:37:34.024760'),
(24, 'leave', '0003_alter_leave_id', '2021-07-20 11:37:34.096714'),
(25, 'myapp', '0001_initial', '2021-07-20 11:37:34.152678');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3j189utq2b4cv49q54ji11q5wrq41ett', 'e30:1m5oXq:l9acCXehUWHY4m0lz138gdDRzyBB1pxT44-_iat0wRI', '2021-08-03 12:08:18.890165'),
('4lgxrgeq90fipungoz2xxerjhquvujex', '.eJxVjMEOwiAQRP-FsyF0l1Lw6L3fQFgWpGpoUtqT8d9tkx70OPPezFv4sK3Fby0tfmJxFZ24_HYU4jPVA_Aj1Pss41zXZSJ5KPKkTY4zp9ftdP8OSmhlXztkZoPagmNOyTrEgbVV2SnApLmPlgiyMpb2AJhNAAswOOwy6J7E5wvcNzdW:1m5jc4:A8knRhxzLfLdSb_BDA4eWxGaINlRIHG0bs469xjQ8RU', '2021-08-03 06:52:20.752919'),
('eanlv6lyas0rn7tbqkvr0ehk5bsdt3yi', '.eJxVjMEOwiAQRP-FsyF0l1Lw6L3fQFgWpGpoUtqT8d9tkx70OPPezFv4sK3Fby0tfmJxFZ24_HYU4jPVA_Aj1Pss41zXZSJ5KPKkTY4zp9ftdP8OSmhlXztkZoPagmNOyTrEgbVV2SnApLmPlgiyMpb2AJhNAAswOOwy6J7E5wvcNzdW:1m5iu2:CqQIKnhMyeWJ5ZjXlt2G3r46aQ9Lvhl1J9DAT2GpyJE', '2021-08-03 06:06:50.300140'),
('toxigw2t5sftovvzy8338wrqhi6envjt', 'e30:1m5oRA:f8E7RCfkP5-LCXKkpE-1btdL9Dr-_q-Wq-dNQSqDmEc', '2021-08-03 12:01:24.642170'),
('yqg9wd5wdbmgzu90yxe5v85c23vbploq', 'MGJjZTQ1MjEzODQxNTVkODc0YTI4ZDA5MDYyMjRjN2EzM2ZjM2I1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NTY5ODBmMDI0NmU3YjNhMzI0MDA4ZWZkZDk4YmQ3Yjg5MzI3YzM2In0=', '2021-09-06 03:31:47.833200'),
('z9c98we077dzqip0uvqvalyp4a1vtral', '.eJxVjDsOwjAQBe_iGln24h-U9JwhWu9ucADZUpxUiLtDpBTQvpl5LzXgupRh7TIPE6uzsurwu2Wkh9QN8B3rrWlqdZmnrDdF77Tra2N5Xnb376BgL9_6GG1gx5kRzYkwRQ-UyENKFMQYCUBZXHAEgcfIIgDiwNlEZvQOjXp_APFkOCY:1m5own:VmSMvxtN_7syUKJnuGFVz7YIGhRThA0PYlQFHlsWNDA', '2021-08-03 12:34:05.088032');

-- --------------------------------------------------------

--
-- Table structure for table `employee_department`
--

CREATE TABLE `employee_department` (
  `id` bigint(20) NOT NULL,
  `name` varchar(125) NOT NULL,
  `description` varchar(125) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_department`
--

INSERT INTO `employee_department` (`id`, `name`, `description`, `created`, `updated`) VALUES
(1, 'Finance', 'To take care of all the financial works', '2021-07-20 05:59:06.466185', '2021-07-20 05:59:06.466185'),
(2, 'HR', 'To take care of the new employees and to give them salary', '2021-07-20 05:59:24.977347', '2021-07-20 05:59:24.977347'),
(4, 'Engineering', 'To learn how to analyze and deisgn', '2021-07-20 06:00:26.095349', '2021-07-20 06:00:26.095349'),
(5, 'Doctor', 'To take care of the patients in the world.', '2021-07-07 11:54:27.000000', '2021-07-21 11:54:27.000000');

-- --------------------------------------------------------

--
-- Table structure for table `employee_employee`
--

CREATE TABLE `employee_employee` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `firstname` varchar(125) NOT NULL,
  `lastname` varchar(125) NOT NULL,
  `othername` varchar(125) DEFAULT NULL,
  `birthday` date NOT NULL,
  `startdate` date DEFAULT NULL,
  `employeetype` varchar(15) DEFAULT NULL,
  `employeeid` varchar(10) DEFAULT NULL,
  `dateissued` date DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `is_blocked` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_employee`
--

INSERT INTO `employee_employee` (`id`, `image`, `firstname`, `lastname`, `othername`, `birthday`, `startdate`, `employeetype`, `employeeid`, `dateissued`, `created`, `updated`, `department_id`, `role_id`, `user_id`, `is_blocked`, `is_deleted`) VALUES
(1, 'profiles/sidebar.jpg', 'Itadori', 'Yuji', NULL, '2000-02-12', '2021-06-09', 'Full-Time', NULL, '2021-06-30', '2021-07-20 06:02:35.742271', '2021-07-20 06:02:35.742271', 4, 1, 2, 0, 0),
(2, 'profiles/new_logo.png', 'Shoyo', 'Kun', NULL, '2000-05-01', '2021-06-07', 'Part-Time', NULL, '2021-06-28', '2021-07-20 06:03:40.249339', '2021-07-20 06:06:57.837333', 1, 2, 3, 0, 0),
(3, 'profiles/sidebar.jpg', 'Itadori', 'Yuji', 'Hero', '2000-02-12', '2021-06-09', 'Full-Time', 'RGL/12/345', '2021-06-30', '2021-07-20 12:14:51.398059', '2021-07-20 12:17:28.876296', 4, 1, 2, 0, 0),
(4, 'profiles/pravesh.jpeg', 'Pravesh', 'Khanal', 'richkid', '2018-12-04', '2021-08-22', 'Part-Time', NULL, '2021-08-23', '2021-08-23 03:54:22.675565', '2021-08-23 03:54:22.675565', 4, 3, 4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_role`
--

CREATE TABLE `employee_role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(125) NOT NULL,
  `description` varchar(125) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_role`
--

INSERT INTO `employee_role` (`id`, `name`, `description`, `created`, `updated`) VALUES
(1, 'Accountant', 'To account for all the financial transactions in the company', '2021-07-20 06:00:46.637399', '2021-07-20 06:00:46.637399'),
(2, 'Peon', 'To wash every corner of the office so that spark is default', '2021-07-20 06:01:08.351286', '2021-07-20 06:01:08.351286'),
(3, 'Technical Officer', 'The one who analyses and supervises all the technical stuff that happens in the organization.', '2021-08-23 09:19:30.297000', '2021-08-23 09:21:30.000000');

-- --------------------------------------------------------

--
-- Table structure for table `leave_leave`
--

CREATE TABLE `leave_leave` (
  `id` bigint(20) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `leavetype` varchar(25) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `defaultdays` int(10) UNSIGNED DEFAULT NULL CHECK (`defaultdays` >= 0),
  `status` varchar(12) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_leave`
--

INSERT INTO `leave_leave` (`id`, `startdate`, `enddate`, `leavetype`, `reason`, `defaultdays`, `status`, `is_approved`, `updated`, `created`, `user_id`) VALUES
(1, '2021-07-21', '2021-07-23', 'emergency', 'I maa be a daddy now.', 30, 'approved', 1, '2021-07-20 06:06:23.179341', '2021-07-20 06:05:56.873290', 3),
(2, '2021-07-21', '2021-07-26', 'maternity', 'I have to kill some Gooses and reinstate the white energy.', 30, 'rejected', 0, '2021-07-20 12:23:56.941317', '2021-07-20 12:22:53.146349', 2),
(3, '2021-08-23', '2021-08-25', 'sick', 'please admin sensei. I will buy you a chocolate.', 30, 'approved', 1, '2021-08-22 17:27:22.805428', '2021-08-22 17:26:54.548494', 2),
(4, '2021-08-23', '2021-08-25', 'sick', 'GAijatra aayo, so , bhaktapur ghumauna laanu paryo saathi ahru lai.', 30, 'pending', 0, '2021-08-23 03:31:32.756417', '2021-08-23 03:31:32.756417', 4);

-- --------------------------------------------------------

--
-- Table structure for table `myapp_features`
--

CREATE TABLE `myapp_features` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `employee_department`
--
ALTER TABLE `employee_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_employee`
--
ALTER TABLE `employee_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_employee_user_id_2dd26fdc_fk_auth_user_id` (`user_id`),
  ADD KEY `employee_employee_department_id_8fce1a05_fk` (`department_id`),
  ADD KEY `employee_employee_role_id_a4c099f1_fk` (`role_id`);

--
-- Indexes for table `employee_role`
--
ALTER TABLE `employee_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_leave`
--
ALTER TABLE `leave_leave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_leave_user_id_b4b01ea9_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `myapp_features`
--
ALTER TABLE `myapp_features`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employee_department`
--
ALTER TABLE `employee_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee_employee`
--
ALTER TABLE `employee_employee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_role`
--
ALTER TABLE `employee_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leave_leave`
--
ALTER TABLE `leave_leave`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `myapp_features`
--
ALTER TABLE `myapp_features`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `employee_employee`
--
ALTER TABLE `employee_employee`
  ADD CONSTRAINT `employee_employee_department_id_8fce1a05_fk` FOREIGN KEY (`department_id`) REFERENCES `employee_department` (`id`),
  ADD CONSTRAINT `employee_employee_role_id_a4c099f1_fk` FOREIGN KEY (`role_id`) REFERENCES `employee_role` (`id`),
  ADD CONSTRAINT `employee_employee_user_id_2dd26fdc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `leave_leave`
--
ALTER TABLE `leave_leave`
  ADD CONSTRAINT `leave_leave_user_id_b4b01ea9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
