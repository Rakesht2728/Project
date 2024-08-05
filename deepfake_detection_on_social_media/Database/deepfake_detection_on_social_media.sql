-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 20, 2023 at 07:01 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `deepfake_detection_on_social_media`
--
CREATE DATABASE IF NOT EXISTS `deepfake_detection_on_social_media` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `deepfake_detection_on_social_media`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add client register_ model', 7, 'add_clientregister_model'),
(20, 'Can change client register_ model', 7, 'change_clientregister_model'),
(21, 'Can delete client register_ model', 7, 'delete_clientregister_model'),
(22, 'Can add client posts_ model', 8, 'add_clientposts_model'),
(23, 'Can change client posts_ model', 8, 'change_clientposts_model'),
(24, 'Can delete client posts_ model', 8, 'delete_clientposts_model'),
(25, 'Can add feedbacks_ model', 9, 'add_feedbacks_model'),
(26, 'Can change feedbacks_ model', 9, 'change_feedbacks_model'),
(27, 'Can delete feedbacks_ model', 9, 'delete_feedbacks_model');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'Client_Site', 'clientposts_model'),
(7, 'Client_Site', 'clientregister_model'),
(9, 'Client_Site', 'feedbacks_model'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Remote_User', '0001_initial', '2019-04-23 07:01:48.050781'),
(2, 'contenttypes', '0001_initial', '2019-04-23 07:01:49.494140'),
(3, 'auth', '0001_initial', '2019-04-23 07:02:03.837890'),
(4, 'admin', '0001_initial', '2019-04-23 07:02:05.832031'),
(5, 'admin', '0002_logentry_remove_auto_add', '2019-04-23 07:02:05.863281'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-04-23 07:02:07.041015'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-04-23 07:02:07.839843'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-04-23 07:02:08.330078'),
(9, 'auth', '0004_alter_user_username_opts', '2019-04-23 07:02:08.361328'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-04-23 07:02:08.921875'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-04-23 07:02:08.953125'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-23 07:02:08.989257'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-04-23 07:02:09.785156'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-23 07:02:10.580078'),
(15, 'sessions', '0001_initial', '2019-04-23 07:02:11.764648'),
(16, 'Remote_User', '0002_clientposts_model', '2019-04-25 05:53:57.702132'),
(17, 'Remote_User', '0003_clientposts_model_usefulcounts', '2019-04-25 10:00:02.521468'),
(18, 'Remote_User', '0004_auto_20190429_1027', '2019-04-29 04:57:32.672296'),
(19, 'Remote_User', '0005_clientposts_model_dislikes', '2019-04-29 05:15:16.668390'),
(20, 'Remote_User', '0006_Review_model', '2019-04-29 05:19:26.382257'),
(21, 'Remote_User', '0007_clientposts_model_names', '2019-04-30 04:45:46.472656');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0jpcgnd1gmwbp3e8tw54e6nxjylsogyo', 'YmM4NjE0MDQ2MzBmYWIxNzIzNTkxZjBiN2I5M2MxMzQyYTE0YmMxODp7InVzZXJpZCI6Mn0=', '2020-02-21 08:52:28.687500'),
('14z63ouq423azof04qzl2cl91ytthlfv', 'eyJ1c2VyaWQiOjF9:1oE6b8:3caV9rQf0v24gXfvozY2K6zz4lTjty52oqgRHzLhpyw', '2022-08-03 10:06:30.268797'),
('1ejvkirpm7393inxp6uf1a508oikhj57', 'eyJ1c2VyaWQiOjV9:1oE9H0:QVd_yVIuOIdaeHkWo0CMd53O_s5B5euyq1e3LiWaVH8', '2022-08-03 12:57:54.686733'),
('1xjz27rwgvs42tk5n2orhya2ldkf1g6t', 'eyJ1c2VyaWQiOjV9:1mxOMK:l85z54bTor61HOnj7pdZjPhbnbt7ikf5Nm258dN2DTc', '2021-12-29 07:05:52.784561'),
('49qo7iki5uxczhyymi8ka7dnh6a2wva5', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-08 09:19:45.486328'),
('4df7s82pddaszour6twx23d86058ppjq', 'ZmNkODA5MmI1ZGQ0Yjk5MmZlNzEyNTcwNTcxNjk2ZWYxZTE3NThkMjp7InVzZXJpZCI6NX0=', '2020-11-23 11:49:21.396484'),
('4io28d085qjfib7a5s2qbhc8qp4wfiva', 'eyJ1c2VyaWQiOjE2fQ:1mAtmi:oIUbcN3WzJiaWnxMBZ6eIGMTo8NS2y701JlpwqvzBUk', '2021-08-17 12:44:40.453750'),
('4x6b78w9rfcn34v650kd2j7oij6atr8p', 'Zjk0Y2RlYjc4OTJhNWMyZjQyNmM4ZGRhYTVjNmVlNDFhZGE4ZmU3NTp7InVzZXJpZCI6Nn0=', '2019-12-27 12:07:42.082031'),
('5y97pqoww8mp6uea9671pdkzka2qantt', 'eyJ1c2VyaWQiOjJ9:1oeFf3:esCWcmLwNAX25uOIzIxUsmI5nal6A8Q8Nk1MTI657xI', '2022-10-14 13:02:37.276867'),
('6235pjzaab4rkdpf7z473pl7jcnaglfk', 'eyJ1c2VyaWQiOjF9:1oDk63:-6bic4A3ThrswjtGZVXTnXx2dpiFpK_FtFDDtpAsCEw', '2022-08-02 10:04:55.563356'),
('6mizyqlykom1hx0e8a29bxksdry4vjmy', 'eyJ1c2VyaWQiOjR9:1mxNx3:w_8CPNB2edZIGdqb1qOMty5QV64ojOuzomD7t4d5bBY', '2021-12-29 06:39:45.556870'),
('7ixdamflp4fqyjecn17bd7xfbsi7eowq', 'eyJ1c2VyaWQiOjEwfQ:1mBzQr:5DfHs08xtygiklJxfW3kZFCrxnrA_igxR5gbDcKt2e8', '2021-08-20 12:58:37.947486'),
('9eqxsh2vnry12u2z9t4sl6amij2te9jt', 'eyJ1c2VyaWQiOjJ9:1oE8nk:cDDqaEZRW7Nf6SKwUt6tIvJEdEy2qvTQzIrG8zvVQgQ', '2022-08-03 12:27:40.202847'),
('9vom7mmn5muyoiy8nytc9mxown1q1g2b', 'eyJ1c2VyaWQiOjE5fQ:1mDRHr:QCoJ_gmMMx_cxknA5j_5NlcTLnENHFouosRuxYZlYbI', '2021-08-24 12:55:19.038051'),
('b9cu6cjsfqfm5mame5dy1ikpiiy7yn3w', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:00:08.480453'),
('bhfid9lacfwlfi5yu3rgdg1uo5fp2bq8', 'eyJ1c2VyaWQiOjE4fQ:1mBH4F:2wUorkPET_MGY07bWd-Zp-9HZUsjS3bGCHCu1j6BN-s', '2021-08-18 13:36:19.192796'),
('ct13q5fpn94zvnij8ekixwzcky2imc5e', 'YWUzM2IzMWJiYmQ3YmY2YzlkMGFlNTM1YmU5ZGM4YjQ0MmY1YTc0NTp7InVzZXJpZCI6NH0=', '2019-05-14 11:44:10.978515'),
('e07j4duysh402dedtomm8icctvs9ljgy', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:08:12.306625'),
('fuirwtsxsfxeojownr7tm1lymoapsath', 'eyJ1c2VyaWQiOjR9:1mb0uA:DWlnrgNFE2I8DeVkRQmZU1y_F_U4e0WgMqypgwqdUQ0', '2021-10-28 13:36:18.858332'),
('hbv74sg6w6e4wp89vq807vw0xhkh5s1h', 'MzU0ZWYzNTQ3MjM4MWZlOTVjM2M1MWQ4MmE5ODE0OTlkNDRkNDkwMDp7InVzZXJpZCI6MX0=', '2020-01-10 07:40:38.067382'),
('hhng09zqax1cp3cmlx5np2pbc4fcbtw1', 'eyJ1c2VyaWQiOjExfQ:1mauzr:WoxSa_ktUEv37bMIXB5udKc6qLwi2Xgdg61oSSMEPgo', '2021-10-28 07:17:47.091519'),
('hhtt48je70l9nzw6dee4ocuxxm9blqej', 'NGRhY2JkNmQ4ZTM4OTU0Y2UzMzFlZmZmOTgzYmE0MWVkOThiNjc2NTp7Im5hbWUiOjEsInVzZXJpZCI6MX0=', '2019-05-09 10:12:38.380843'),
('hj1muto4ffqaex29c3dz409vpv04say1', 'eyJ1c2VyaWQiOjIyfQ:1mavzk:CaUXoPZsk_YT0c367vmF36p-YAOYuclPwJBiS1ZGbtw', '2021-10-28 08:21:44.154458'),
('hsb5814on7cph0wvy0yls67ca94ngcq3', 'eyJ1c2VyaWQiOjE5fQ:1mBzgz:cug3sAkQKH-bQBkB9O5l0UsDJL-37eDV8mR9Qau3elA', '2021-08-20 13:15:17.195464'),
('i77fui9jgj9yk7ncx7u4ph5d6kg0nl6c', 'eyJ1c2VyaWQiOjE5fQ:1mDPJC:kqt800XGsVGRjHS3TmeLFrJbrpIK4-GbH4ZirwIc7S4', '2021-08-24 10:48:34.860638'),
('ic3hqykgws5iy6fz5ns6h6f921jbjzmt', 'eyJ1c2VyaWQiOjExfQ:1kywHL:I_tahJ0VJb7myAbMbXpWZu9XrSaAMmduNxGd2x5gtmY', '2021-01-25 12:26:35.043761'),
('iz6wcyx97x1w6mpfc51g1tj72z2xghfn', 'eyJ1c2VyaWQiOjl9:1kwlIp:YKOKMwJARe6w057AKTGY1-GCuRcZAeAbJ0bdQao23wY', '2021-01-19 12:19:07.663490'),
('jiqsf7wcjkeflnrveo04dcvo9uzu7cj5', 'eyJ1c2VyaWQiOjIyfQ:1maymY:2zgrkbwuf5-70r47-IcbfFKsYD5fnN-ja0Ol9zN-93Y', '2021-10-28 11:20:18.484981'),
('jpkxxiej4bdjin5tpdjm0xqhdooexz9o', 'eyJ1c2VyaWQiOjExfQ:1mBEdk:YOk6fHHfBMmtt5ZvSyzgy13Az8JS59iXbU4LO1Ps1RI', '2021-08-18 11:00:48.423036'),
('k7dyn4irgrj5wb4jucb4po527iw724dp', 'eyJ1c2VyaWQiOjEzfQ:1l0JrY:2_TJ4L_XoHdOW51Zdp0MOdyBEZEzntk5pdXZFDmX9x4', '2021-01-29 07:49:40.202848'),
('ls4hidrykce7ox7vvd8k5gqgmqg4xgfw', 'eyJ1c2VyaWQiOjF9:1pIqnU:2ieYXl2LZZGVUJw5n3iyoqnRRs6BEuc2rdKBq-Acgqo', '2023-02-03 12:47:08.073029'),
('o7x1vhluuypdfmgv7fmv6nohgfn5ub55', 'NzMyZjlhNzFhZjk2ZGUzZmFiMmIzYjMwNTJkYTg5MDUzNmNlMDk4Mjp7InVzZXJpZCI6MTZ9', '2020-01-02 12:51:55.659179'),
('oobw9j79x0rsrfs1p5x4ah404kpmb0n1', 'eyJ1c2VyaWQiOjJ9:1pIrdT:fgE_AKbvK5aa_I_2chSdNSbGj624jyW2pWChLIrsGNY', '2023-02-03 13:40:51.420996'),
('os18h41un322wchse9u209dxhtqorakj', 'eyJ1c2VyaWQiOjF9:1oeEjr:ydW4ycYYYvPnN--vYGJfZ4p8xyz-vWDM6xht_kvgKYc', '2022-10-14 12:03:31.027189'),
('psdjoq42u7lfqwfodftic5x6z9ij34nk', 'eyJ1c2VyaWQiOjExfQ:1mAXDq:a8YYY1YJU3jPv03qo9-VcrjRHnDWRSqGseiR93n0GVM', '2021-08-16 12:39:10.518259'),
('pso2lwh3bixhhywcs87wgncb6efg6brn', 'eyJ1c2VyaWQiOjJ9:1qh85x:YCYehqE5jM_RHtwJXn1DX50w55621p5jW4gpIniMkOA', '2023-09-29 12:38:49.907401'),
('qnaolidvfx6bu9ra3uyqvkgva7bv92f1', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-14 05:34:50.069335'),
('qorsfjf8ub7601ehr291ro3n4zzw5v3e', 'eyJ1c2VyaWQiOjEwfQ:1mFxUi:mMQom1btf6GfJPfFt2WuX_hLtfJbWwVROmb-AlhxjHw', '2021-08-31 11:43:00.556244'),
('r9qk0kd407g591hugz99fhps8zofh69s', 'eyJ1c2VyaWQiOjE4fQ:1mBxnG:qkd9MTM_FhhghUpV90qngEkwkoSKYdLbfwRKBLhK7Qg', '2021-08-20 11:13:38.356475'),
('sdcvtwp7s5yj8q1lb0mdvlg8nj5wujqo', 'eyJ1c2VyaWQiOjEyfQ:1kzJ3p:0g6nRuJv3TXWVpANqNgbJcrUv96ZU5UQwv3bgqBbL1I', '2021-01-26 12:46:09.538596'),
('tejgl09oettnyva23kqdbns5nfz5g8ug', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:19:24.387679'),
('u5icgvq3qt5nthdlv99go3r804ccghbo', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:00:13.573226'),
('vfofeqf70uwf4jrhib6xsetde58lny3f', 'eyJ1c2VyaWQiOjIxfQ:1mFyou:QX_iGY3-VB7aToxcER8lL5h0PrRrYCaY5Hf2pQrqePo', '2021-08-31 13:07:56.275870'),
('waywhblndrlpkv1us9nlyfv96bla75gg', 'eyJ1c2VyaWQiOjF9:1qh7KT:CcZj0rakUbotVgZBxMeWwLUwqCYWDXqTQbwfvtEWW_k', '2023-09-29 11:49:45.487895'),
('ws2o4cq1jbqepe0e9s9v7n4erxatq9ic', 'eyJ1c2VyaWQiOjE1fQ:1l2CgI:SmlpAnZzplZhPTFJ_rkEJstnZRl2CYWyTcah7PHPv-M', '2021-02-03 12:33:50.352453'),
('zak6z5x81xrpe7i51cmt7915z9k4u9dr', 'eyJ1c2VyaWQiOjJ9:1oE8wD:IeKP_1qUF_y8Q45zkh2iCL19BYap1vlukPPO2L08s3Q', '2022-08-03 12:36:25.292286'),
('zega5sz46ivu1tb1o1mtmg3v2ysxog1w', 'eyJ1c2VyaWQiOjh9:1kuVm4:L7RizVvw4EC0IyYCYAIhGjC8lvZol_Z1abqVwdkdKkY', '2021-01-13 07:20:00.767751');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_clientregister_model`
--

CREATE TABLE IF NOT EXISTS `remote_user_clientregister_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phoneno` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `remote_user_clientregister_model`
--

INSERT INTO `remote_user_clientregister_model` (`id`, `username`, `email`, `password`, `phoneno`, `country`, `state`, `city`, `address`, `gender`) VALUES
(1, 'Ashok', 'Ashok123@gmail.com', 'Ashok', '9535866270', 'India', 'Karnataka', 'Bangalore', '#7873,4th Cross,Rajajinagar', 'Male'),
(2, 'Manjunath', 'tmksmanju14@gmail.com', 'Manjunath', '9535866270', 'India', 'Karnataka', 'Bangalore', '#8928,4th Cross,Rajajinagar', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_accuracy`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_accuracy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `remote_user_detection_accuracy`
--

INSERT INTO `remote_user_detection_accuracy` (`id`, `names`, `ratio`) VALUES
(16, 'Convolutional Neural Network--CNN', '93.53932584269663'),
(17, 'SVM', '87.35955056179775'),
(18, 'Logistic Regression', '91.85393258426966'),
(19, 'KNeighborsClassifier', '94.10112359550563'),
(20, 'Random Forest Classifier', '94.3820224719101');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_ratio`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_ratio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `remote_user_detection_ratio`
--

INSERT INTO `remote_user_detection_ratio` (`id`, `names`, `ratio`) VALUES
(12, 'Deefake', '20.0'),
(13, 'Real', '80.0');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_fake_detection`
--

CREATE TABLE IF NOT EXISTS `remote_user_fake_detection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tid` varchar(300) NOT NULL,
  `published` varchar(300) NOT NULL,
  `title` varchar(3000) NOT NULL,
  `tweet` varchar(3000) NOT NULL,
  `type` varchar(300) NOT NULL,
  `Prediction` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `remote_user_fake_detection`
--

INSERT INTO `remote_user_fake_detection` (`id`, `Tid`, `published`, `title`, `tweet`, `type`, `Prediction`) VALUES
(1, '415279', '2020-11-06T23:54:00.000+02:00', '(VIDEO) COLLEGE STUDENTS REACT TO NEW BIZARRE GENDER NAMES THEYâ€™RE TOLD TO USE ON CAMPUS', 'Young Americans for Freedom at the University of Tennessee, where administrators have suggested students use a new set of gender neutral pronouns, asked their peers to react to the news. How do you think they responded? \r\n', 'bias', 'Real'),
(2, '412162', '2020-11-12T19:55:23.883+02:00', 'BREAKING UPDATE: [Video] ROOKIE COP IS TERMINATED AFTER FABRICATING STORY ABOUT BEING HIT BY GUNFIRE NEAR BOSTON', 'A rookie police officer in Millis who said Wednesday that someone shot his cruiser before it crashed and burst into flames fabricated the story, police said.The officer, 24, said he was traveling on Forest Road when he saw a red or maroon pickup truck traveling in the opposite direction. He said when the two vehicles met, the driver opened fire on the police cruiser, police say. My cruiser s been shot at. I m at Forest Road. It s going to be a dark maroon pickup,  the officer radioed to dispatch at 2:17 p.m.The officer said he spun around, and in an attempt to avoid the gunfire and seek shelter, he slammed into a tree and the cruiser burst into flames. We have determined that the officer s story was fabricated. Specifically, that he fired shots at his own cruiser as a plan to concoct a story that he was fired upon,  Millis Police Sgt. William Dwyer said.  The evidence indicates the shots were not fired by a suspect, and there is no gunman at large in or around the town. A massive manhunt for the alleged gunman was launched. The neighborhood was immediately locked down while police units, including a SWAT team, K-9 officers and a Massachusetts State Police helicopter combed the area.Residents who were told to stay indoors or couldn t get home because of the lockdown said they were dumbfounded that the story may have been made up. With all these police officers actually getting hurt in this world, why he is doing that I don t know,  Nancy Haney said.Dwyer said the officer is new to the force and has not yet attended the police academy. He said the officer will be terminated, and his name will not be released until the investigation is complete. Via: WCBV TVHERE IS THE ORIGINAL STORY:A Massachusetts police cruiser crashed and caught fire after it was struck by gunfire Wednesday afternoon, and now police are looking for the gunman.The incident occurred at approximately 3:00 p.m. in the town of Millis, about 20 miles southwest of Boston, according to Massachusetts State Police.Shepard Smith reported that police have confirmed that an officer was in the vehicle when it was struck by at least one bullet. The officer then ran his car off the road and crashed it, causing the vehicle to catch fire.Police have said they are not aware of any injuries at this time.Shep reported that witnesses say they saw a white man fire a gun from a dark-colored, possibly maroon, pickup truck.State and local police, along with fire investigators, are taking part in the investigation and search for the gunman.Via: FOX News\r\n', 'bias', 'Deefake'),
(3, '411842', '2020-11-14T08:35:23.027+02:00', 'BREAKING DISCOVERY: CLINTON FOUNDATION SHARED EMAIL SERVER LOCATION WITH HILLARYâ€™S SECRET SERVER', 'The news gets worse every day for the Clinton Crime Syndicate Breitbart News Exclusive: Hillary Clinton s private email server was housed at the same physical location and on the same network as an email server used and operated by the Clinton Foundation, Breitbart News has exclusively learned.Records reveal that Hillary Clinton s private clintonemail.com server shared an IP address with her husband Bill Clinton s email server, presidentclinton.com, and both servers were housed in New York City, not in the basement of the Clintons  Chappaqua, New York home.Web archives show that the Presidentclinton.com Web address was being operated by the Clinton Foundation as of 2009, when Hillary Clinton registered her own clintonemail.com server.Numerous Clinton Foundation employees used the presidentclinton.com server for their own email addresses, which means that they were using email accounts that, if hacked, would have given any hacker complete access to Hillary Clinton s State Department emails, as well.The bombshell revelation raises new concerns about the possible illegality of Hillary Clinton s private email use. The former Secretary of State is under federal investigation for potentially violating the Espionage Act by allowing people without a security clearance to access classified information. The fact that Hillary was sharing an email network with a private foundation means that people without a security clearance almost certainly had physical access to her server while she was working at the State Department.Here s what we know:The Servers Have The SAME IP AddressHillary s clintonemail.com server and the Foundation-run presidentclinton.com email server have exactly the same IP address, and the same SSL certificate (which an organization purchases for an email server to verify its trustworthiness).mail.clintonemail.com and mail.presidentclinton.com both have an IP address of 64.94.172.146, according to an SSL Certificate Checker.The two servers both have that same IP address, 64.94.172.146, according to DNS records. (Here are records for Hillary s server, and here are records for Bill s server).Both servers have the same IP address, according to another independent Internet records database, robtex.net.The fact that both of these email servers have the same IP address means that they were operating on the same network, and sharing physical space. A computer expert tells Breitbart News that the servers were probably operating on the same machine. It is also possible that they were operating on different machines on the same network, which still means that the machines would have to be close enough to exist in the same physical location.President Clinton s server was created in 2002, while Hillary s was created in 2009, which means that Hillary s server was simply added to Bill s Foundation-run server network.They Had The SAME IP Address When She Was Secretary of StateHillary s server and Bill s Foundation-run server also shared a different IP add', 'bias', 'Real'),
(4, '399080', '2020-11-24T03:37:00.000+02:00', 'MUST SEE RESULTS OF NEW POLL Asking Americans One Word They Associate With Hillary', 'Somehow we don t think this is what the Queen of the Clinton Crime Syndicate expected at this stage of her campaign The latest Q-poll numbers have dropped and there aren t really a lot of surprises in the top lines. (Well  there are a couple of exceptions but we ll get to those in a minute.) What was really startling, though, was the results of the  open ended  questions about several of the candidates. Most specifically, the massively leading, top of the list responses for Hillary Clinton have to be giving her team nightmares. (Connecticut Post  emphasis added)Clinton leads the Democratic field with 45 percent, down from 55 percent July 30, with U.S. Sen. Bernie Sanders of Vermont at 22 percent and Biden at 18 percent. No other candidate tops 1 percent with 11 percent undecided. This is Sanders  highest tally and closest margin.Clinton tops the Democrats   no way  list with 11 percent. Liar  is the first word that comes to mind more than others in an open-ended question when voters think of Clinton.  Arrogant  is the word for Trump and voters say  Bush  when they think of Bush. Here s the high end of the list.Holy cow. You get 394 responses just by combining the top three results of  Liar, Dishonest and Untrustworthy.  You pretty much have to add up all of the other words on the list to catch up with those three. And this isn t just a list of responses by Republicans  that s everyone. What s truly amazing is that this is clearly the prevailing American perception at this point and yet, Clinton is still the Democrat frontrunner. I m not sure if that says more about her or the party. Via: HotAir \r\n', 'conspiracy', 'Real'),
(5, '391730', '2020-10-26T22:48:00.000+03:00', 'PASS THE POPCORN: BILL CLINTON â€œINCENSEDâ€ BY NEWS OF BIDEN RUN FOR PRESIDENT', ' Pass the popcorn and watch this explode the thought of Biden jumping into the race is priceless! Unreal!The potential first First Gentleman is reportedly  very agitated  by the possibility Vice President Joe Biden may challenge Hillary Clinton for the Democratic presidential nomination.Politico detailed President Bill Clinton s frustration with the state of his wife s campaign in a piece out Wednesday:Clinton s camp, hands full with the email controversy and a surprisingly stout challenge from independent Vermont Sen. Bernie Sanders, isn t in a patient mood. Bill Clinton, according to a person who has spoken with the former president in the last couple of weeks, is  very agitated  by the possibility of a Biden candidacy and incensed at the press hype around a possible bid.The Clinton campaign has suffered from a dragging private email story that rather than go away, only grows. Her honesty and trustworthy numbers are underwater, and even a majority of Democrats who support her believe she will be hurt by the email scandal in a general election. Multiple polls have shown Clinton, once a 50-point frontrunner, now trails Sen. Bernie Sanders (I., Vt.) in New Hampshire. Via: WFB\r\n', 'bs', 'Real'),
(6, '427835', '2020-10-29T04:39:09.817+03:00', 'OBAMAâ€™S REVEALING LETTER TO BROTHER TELLS WHY BARACK GOT INTO POLITICS', 'Well, it s not like we didn t know this but it s very revealing to know why Obama says he got into politics. Hope and Change was for just some folks and not for others Please note what Malik is quoted as saying about Barack recently Ouch!President Obama s half-brother, Malik Abongo  Roy  Obama, has sold a handwritten letter from the president, penned 20 years ago, that reveals Obama s reasoning for getting into politics   including  to deal with some serious issues blacks face here.   Some colleagues of mine here have talked me into running for the Illinois State Senate (like being an MP for a province),  the future world leader wrote his kin in July 1995, before his political career began.  I have agreed, since I have an interest in politics to deal with some serious  issues blacks face here,  Obama wrote. The letter also reveals Obama s disdain for meetings, saying,  Of course, it involves a lot of campaigning, going to meetings and so on, which I don t find so attractive.  He adds,  Anyway, if I win it will only be a part-time post, and I will  continue my work as a lawyer.  The letter   which we hear Malik sold as a package with a copy of a manuscript of Obama s first book,  Dreams From My Father,  with handwritten notes   also gives an update on First Lady Michelle and his late mother, who died later that year. Modal Trigger Photo: momentsintime.com  Michelle is fine, also busy with her work,  Obama wrote.  My mom s health has been stabilized for now, but she is by no means cured and continues to undergo extensive treatment.  In the letter, signed  Much love   Barack,  the future president adds news that his brother s  found a new wife,   Man, I must say you don t fool around! The letter was offered up to parties such as  LA-based memorabilia dealer Moments in Time before it was snapped up by a collector. Malik, who lives in Kenya, also sold two other handwritten letters from Obama for nearly $15,000 each in 2013. Malik, who shares the same father with the president, has said they were best men at each other s weddings. But earlier this year, he called Obama a  schemer  and said,  He s not been an honest man . . . in who he is and what he says and how he treats people.  The amount paid for the letter was not disclosed. The White House did not comment.Via: NYP\r\n', 'bs', 'Real');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
