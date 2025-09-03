# ************************************************************
# Antares - SQL Client
# Version 0.7.35
# 
# https://antares-sql.app/
# https://github.com/antares-sql/antares
# 
# Host: 192.168.0.21 ((Ubuntu) 8.0.43)
# Database: db_inventoryweb
# Generation time: 2025-08-19T03:44:16+07:00
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;





# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, "2019_08_19_000000_create_failed_jobs_table", 1),
	(2, "2019_12_14_000001_create_personal_access_tokens_table", 1),
	(3, "2022_10_31_061811_create_menu_table", 1),
	(4, "2022_11_01_041110_create_table_role", 1),
	(5, "2022_11_01_083314_create_table_user", 1),
	(6, "2022_11_03_023905_create_table_submenu", 1),
	(7, "2022_11_03_064417_create_tbl_akses", 1),
	(8, "2022_11_08_024215_create_tbl_web", 1),
	(9, "2022_11_15_131148_create_tbl_jenisbarang", 2),
	(10, "2022_11_15_173700_create_tbl_satuan", 3),
	(11, "2022_11_15_180434_create_tbl_merk", 4),
	(12, "2022_11_16_120018_create_tbl_appreance", 5),
	(13, "2022_11_25_141731_create_tbl_barang", 6),
	(14, "2022_11_26_011349_create_tbl_customer", 7),
	(16, "2022_11_28_151108_create_tbl_barangmasuk", 8),
	(17, "2022_11_30_115904_create_tbl_barangkeluar", 9);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table personal_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;





# Dump of table tbl_akses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_akses`;

CREATE TABLE `tbl_akses` (
  `akses_id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submenu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `othermenu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`akses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1085 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tbl_akses` WRITE;
/*!40000 ALTER TABLE `tbl_akses` DISABLE KEYS */;

INSERT INTO `tbl_akses` (`akses_id`, `menu_id`, `submenu_id`, `othermenu_id`, `role_id`, `akses_type`, `created_at`, `updated_at`) VALUES
	(368, "1667444041", NULL, NULL, "3", "view", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(369, "1667444041", NULL, NULL, "3", "create", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(370, "1667444041", NULL, NULL, "3", "update", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(371, "1667444041", NULL, NULL, "3", "delete", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(373, "1668509889", NULL, NULL, "3", "create", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(374, "1668509889", NULL, NULL, "3", "update", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(375, "1668509889", NULL, NULL, "3", "delete", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(376, "1668510437", NULL, NULL, "3", "view", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(377, "1668510437", NULL, NULL, "3", "create", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(378, "1668510437", NULL, NULL, "3", "update", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(379, "1668510437", NULL, NULL, "3", "delete", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(381, "1668510568", NULL, NULL, "3", "create", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(382, "1668510568", NULL, NULL, "3", "update", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(383, "1668510568", NULL, NULL, "3", "delete", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(384, NULL, "9", NULL, "3", "view", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(385, NULL, "9", NULL, "3", "create", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(386, NULL, "9", NULL, "3", "update", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(387, NULL, "9", NULL, "3", "delete", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(396, NULL, "10", NULL, "3", "view", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(397, NULL, "10", NULL, "3", "create", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(398, NULL, "10", NULL, "3", "update", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(399, NULL, "10", NULL, "3", "delete", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(417, NULL, NULL, "2", "3", "view", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(418, NULL, NULL, "3", "3", "view", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(419, NULL, NULL, "4", "3", "view", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(420, NULL, NULL, "5", "3", "view", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(421, NULL, NULL, "6", "3", "view", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(422, NULL, NULL, "1", "3", "create", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(423, NULL, NULL, "2", "3", "create", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(424, NULL, NULL, "3", "3", "create", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(425, NULL, NULL, "4", "3", "create", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(426, NULL, NULL, "5", "3", "create", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(427, NULL, NULL, "6", "3", "create", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(428, NULL, NULL, "1", "3", "update", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(429, NULL, NULL, "2", "3", "update", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(430, NULL, NULL, "3", "3", "update", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(431, NULL, NULL, "4", "3", "update", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(432, NULL, NULL, "5", "3", "update", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(433, NULL, NULL, "6", "3", "update", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(434, NULL, NULL, "1", "3", "delete", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(435, NULL, NULL, "2", "3", "delete", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(436, NULL, NULL, "3", "3", "delete", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(437, NULL, NULL, "4", "3", "delete", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(438, NULL, NULL, "5", "3", "delete", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(439, NULL, NULL, "6", "3", "delete", "2022-11-24 13:08:11", "2022-11-24 13:08:11"),
	(476, NULL, "21", NULL, "3", "view", "2022-11-30 12:59:47", "2022-11-30 12:59:47"),
	(477, NULL, "22", NULL, "3", "view", "2022-11-30 12:59:48", "2022-11-30 12:59:48"),
	(478, NULL, "23", NULL, "3", "view", "2022-11-30 12:59:48", "2022-11-30 12:59:48"),
	(479, NULL, "21", NULL, "3", "create", "2022-11-30 13:00:24", "2022-11-30 13:00:24"),
	(480, NULL, "21", NULL, "3", "update", "2022-11-30 13:00:25", "2022-11-30 13:00:25"),
	(481, NULL, "21", NULL, "3", "delete", "2022-11-30 13:00:26", "2022-11-30 13:00:26"),
	(482, NULL, "22", NULL, "3", "delete", "2022-11-30 13:00:27", "2022-11-30 13:00:27"),
	(483, NULL, "22", NULL, "3", "update", "2022-11-30 13:00:28", "2022-11-30 13:00:28"),
	(484, NULL, "22", NULL, "3", "create", "2022-11-30 13:00:29", "2022-11-30 13:00:29"),
	(485, NULL, "23", NULL, "3", "create", "2022-11-30 13:00:30", "2022-11-30 13:00:30"),
	(486, NULL, "23", NULL, "3", "update", "2022-11-30 13:00:30", "2022-11-30 13:00:30"),
	(487, NULL, "23", NULL, "3", "delete", "2022-11-30 13:00:31", "2022-11-30 13:00:31"),
	(488, "1667444041", NULL, NULL, "4", "view", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(489, "1667444041", NULL, NULL, "4", "create", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(490, "1667444041", NULL, NULL, "4", "update", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(491, "1667444041", NULL, NULL, "4", "delete", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(493, "1668509889", NULL, NULL, "4", "create", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(494, "1668509889", NULL, NULL, "4", "update", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(495, "1668509889", NULL, NULL, "4", "delete", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(501, "1668510437", NULL, NULL, "4", "create", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(502, "1668510437", NULL, NULL, "4", "update", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(503, "1668510437", NULL, NULL, "4", "delete", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(504, "1668510568", NULL, NULL, "4", "view", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(505, "1668510568", NULL, NULL, "4", "create", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(506, "1668510568", NULL, NULL, "4", "update", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(507, "1668510568", NULL, NULL, "4", "delete", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(508, NULL, "9", NULL, "4", "view", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(509, NULL, "9", NULL, "4", "create", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(510, NULL, "9", NULL, "4", "update", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(511, NULL, "9", NULL, "4", "delete", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(516, NULL, "21", NULL, "4", "view", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(517, NULL, "21", NULL, "4", "create", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(518, NULL, "21", NULL, "4", "update", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(519, NULL, "21", NULL, "4", "delete", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(520, NULL, "10", NULL, "4", "view", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(521, NULL, "10", NULL, "4", "create", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(522, NULL, "10", NULL, "4", "update", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(523, NULL, "10", NULL, "4", "delete", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(528, NULL, "22", NULL, "4", "view", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(529, NULL, "22", NULL, "4", "create", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(530, NULL, "22", NULL, "4", "update", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(531, NULL, "22", NULL, "4", "delete", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(536, NULL, "23", NULL, "4", "view", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(537, NULL, "23", NULL, "4", "create", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(538, NULL, "23", NULL, "4", "update", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(539, NULL, "23", NULL, "4", "delete", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(545, NULL, NULL, "2", "4", "view", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(546, NULL, NULL, "3", "4", "view", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(547, NULL, NULL, "4", "4", "view", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(548, NULL, NULL, "5", "4", "view", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(549, NULL, NULL, "6", "4", "view", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(550, NULL, NULL, "1", "4", "create", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(551, NULL, NULL, "2", "4", "create", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(552, NULL, NULL, "3", "4", "create", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(553, NULL, NULL, "4", "4", "create", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(554, NULL, NULL, "5", "4", "create", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(555, NULL, NULL, "6", "4", "create", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(556, NULL, NULL, "1", "4", "update", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(557, NULL, NULL, "2", "4", "update", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(558, NULL, NULL, "3", "4", "update", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(559, NULL, NULL, "4", "4", "update", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(560, NULL, NULL, "5", "4", "update", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(561, NULL, NULL, "6", "4", "update", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(562, NULL, NULL, "1", "4", "delete", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(563, NULL, NULL, "2", "4", "delete", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(564, NULL, NULL, "3", "4", "delete", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(565, NULL, NULL, "4", "4", "delete", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(566, NULL, NULL, "5", "4", "delete", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(567, NULL, NULL, "6", "4", "delete", "2022-12-06 09:34:31", "2022-12-06 09:34:31"),
	(904, "1667444041", NULL, NULL, "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(905, "1667444041", NULL, NULL, "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(906, "1667444041", NULL, NULL, "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(907, "1667444041", NULL, NULL, "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(908, "1668509889", NULL, NULL, "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(909, "1668509889", NULL, NULL, "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(910, "1668509889", NULL, NULL, "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(911, "1668509889", NULL, NULL, "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(912, "1754316593", NULL, NULL, "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(913, "1754316593", NULL, NULL, "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(914, "1754316593", NULL, NULL, "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(915, "1754316593", NULL, NULL, "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(920, "1668510437", NULL, NULL, "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(921, "1668510437", NULL, NULL, "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(922, "1668510437", NULL, NULL, "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(923, "1668510437", NULL, NULL, "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(924, "1668510568", NULL, NULL, "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(925, "1668510568", NULL, NULL, "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(926, "1668510568", NULL, NULL, "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(927, "1668510568", NULL, NULL, "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(928, NULL, "9", NULL, "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(929, NULL, "9", NULL, "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(930, NULL, "9", NULL, "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(931, NULL, "9", NULL, "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(932, NULL, "21", NULL, "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(933, NULL, "21", NULL, "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(934, NULL, "21", NULL, "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(935, NULL, "21", NULL, "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(940, NULL, "33", NULL, "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(941, NULL, "33", NULL, "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(942, NULL, "33", NULL, "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(943, NULL, "33", NULL, "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(944, NULL, "10", NULL, "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(945, NULL, "10", NULL, "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(946, NULL, "10", NULL, "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(947, NULL, "10", NULL, "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(948, NULL, "22", NULL, "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(949, NULL, "22", NULL, "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(950, NULL, "22", NULL, "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(951, NULL, "22", NULL, "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(956, NULL, "34", NULL, "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(957, NULL, "34", NULL, "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(958, NULL, "34", NULL, "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(959, NULL, "34", NULL, "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(960, NULL, "23", NULL, "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(961, NULL, "23", NULL, "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(962, NULL, "23", NULL, "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(963, NULL, "23", NULL, "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(968, NULL, NULL, "1", "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(969, NULL, NULL, "2", "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(970, NULL, NULL, "3", "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(971, NULL, NULL, "4", "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(973, NULL, NULL, "6", "2", "view", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(974, NULL, NULL, "1", "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(975, NULL, NULL, "2", "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(976, NULL, NULL, "3", "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(977, NULL, NULL, "4", "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(978, NULL, NULL, "5", "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(979, NULL, NULL, "6", "2", "create", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(980, NULL, NULL, "1", "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(981, NULL, NULL, "2", "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(982, NULL, NULL, "3", "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(983, NULL, NULL, "4", "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(984, NULL, NULL, "5", "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(985, NULL, NULL, "6", "2", "update", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(986, NULL, NULL, "1", "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(987, NULL, NULL, "2", "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(988, NULL, NULL, "3", "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(989, NULL, NULL, "4", "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(990, NULL, NULL, "5", "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(991, NULL, NULL, "6", "2", "delete", "2025-08-04 14:10:39", "2025-08-04 14:10:39"),
	(992, "1754316593", NULL, NULL, "3", "view", "2025-08-04 14:10:59", "2025-08-04 14:10:59"),
	(993, NULL, "34", NULL, "3", "view", "2025-08-04 14:11:05", "2025-08-04 14:11:05"),
	(994, NULL, "33", NULL, "3", "view", "2025-08-04 14:11:09", "2025-08-04 14:11:09"),
	(995, NULL, "33", NULL, "3", "create", "2025-08-04 14:11:14", "2025-08-04 14:11:14"),
	(996, NULL, "34", NULL, "3", "create", "2025-08-04 14:11:18", "2025-08-04 14:11:18"),
	(997, NULL, "33", NULL, "3", "update", "2025-08-04 14:11:21", "2025-08-04 14:11:21"),
	(998, NULL, "34", NULL, "3", "update", "2025-08-04 14:11:24", "2025-08-04 14:11:24"),
	(999, NULL, "33", NULL, "3", "delete", "2025-08-04 14:11:29", "2025-08-04 14:11:29"),
	(1000, NULL, "34", NULL, "3", "delete", "2025-08-04 14:11:29", "2025-08-04 14:11:29"),
	(1001, "1667444041", NULL, NULL, "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1002, "1667444041", NULL, NULL, "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1003, "1667444041", NULL, NULL, "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1004, "1667444041", NULL, NULL, "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1005, "1668509889", NULL, NULL, "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1006, "1668509889", NULL, NULL, "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1007, "1668509889", NULL, NULL, "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1008, "1668509889", NULL, NULL, "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1009, "1754316593", NULL, NULL, "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1010, "1754316593", NULL, NULL, "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1011, "1754316593", NULL, NULL, "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1012, "1754316593", NULL, NULL, "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1017, "1668510437", NULL, NULL, "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1018, "1668510437", NULL, NULL, "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1019, "1668510437", NULL, NULL, "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1020, "1668510437", NULL, NULL, "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1021, "1668510568", NULL, NULL, "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1022, "1668510568", NULL, NULL, "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1023, "1668510568", NULL, NULL, "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1024, "1668510568", NULL, NULL, "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1025, NULL, "9", NULL, "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1026, NULL, "9", NULL, "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1027, NULL, "9", NULL, "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1028, NULL, "9", NULL, "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1029, NULL, "21", NULL, "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1030, NULL, "21", NULL, "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1031, NULL, "21", NULL, "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1032, NULL, "21", NULL, "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1033, NULL, "33", NULL, "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1034, NULL, "33", NULL, "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1035, NULL, "33", NULL, "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1036, NULL, "33", NULL, "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1037, NULL, "35", NULL, "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1038, NULL, "35", NULL, "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1039, NULL, "35", NULL, "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1040, NULL, "35", NULL, "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1041, NULL, "10", NULL, "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1042, NULL, "10", NULL, "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1043, NULL, "10", NULL, "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1044, NULL, "10", NULL, "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1045, NULL, "22", NULL, "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1046, NULL, "22", NULL, "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1047, NULL, "22", NULL, "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1048, NULL, "22", NULL, "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1049, NULL, "34", NULL, "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1050, NULL, "34", NULL, "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1051, NULL, "34", NULL, "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1052, NULL, "34", NULL, "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1053, NULL, "23", NULL, "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1054, NULL, "23", NULL, "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1055, NULL, "23", NULL, "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1056, NULL, "23", NULL, "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1057, NULL, NULL, "1", "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1058, NULL, NULL, "2", "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1059, NULL, NULL, "3", "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1060, NULL, NULL, "4", "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1061, NULL, NULL, "5", "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1062, NULL, NULL, "6", "1", "view", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1063, NULL, NULL, "1", "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1064, NULL, NULL, "2", "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1065, NULL, NULL, "3", "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1066, NULL, NULL, "4", "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1067, NULL, NULL, "5", "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1068, NULL, NULL, "6", "1", "create", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1069, NULL, NULL, "1", "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1070, NULL, NULL, "2", "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1071, NULL, NULL, "3", "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1072, NULL, NULL, "4", "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1073, NULL, NULL, "5", "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1074, NULL, NULL, "6", "1", "update", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1075, NULL, NULL, "1", "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1076, NULL, NULL, "2", "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1077, NULL, NULL, "3", "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1078, NULL, NULL, "4", "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1079, NULL, NULL, "5", "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1080, NULL, NULL, "6", "1", "delete", "2025-08-13 08:00:45", "2025-08-13 08:00:45"),
	(1081, NULL, "35", NULL, "2", "view", "2025-08-13 08:01:05", "2025-08-13 08:01:05"),
	(1082, NULL, "35", NULL, "2", "update", "2025-08-13 08:01:13", "2025-08-13 08:01:13"),
	(1083, NULL, "35", NULL, "2", "delete", "2025-08-13 08:01:15", "2025-08-13 08:01:15"),
	(1084, NULL, "35", NULL, "2", "create", "2025-08-13 08:03:03", "2025-08-13 08:03:03");

/*!40000 ALTER TABLE `tbl_akses` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table tbl_appreance
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_appreance`;

CREATE TABLE `tbl_appreance` (
  `appreance_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appreance_layout` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_sidestyle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`appreance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tbl_appreance` WRITE;
/*!40000 ALTER TABLE `tbl_appreance` DISABLE KEYS */;

INSERT INTO `tbl_appreance` (`appreance_id`, `user_id`, `appreance_layout`, `appreance_theme`, `appreance_menu`, `appreance_header`, `appreance_sidestyle`, `created_at`, `updated_at`) VALUES
	(2, "1", "sidebar-mini", "light-mode", "light-menu", "header-light", "default-menu", "2022-11-22 09:45:47", "2022-11-24 13:00:20");

/*!40000 ALTER TABLE `tbl_appreance` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table tbl_barang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_barang`;

CREATE TABLE `tbl_barang` (
  `barang_id` int NOT NULL AUTO_INCREMENT,
  `kategori_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `barang_kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `barang_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `barang_slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `barang_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `barang_stok` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `barang_gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`barang_id`,`barang_kode`,`barang_nama`,`barang_stok`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

LOCK TABLES `tbl_barang` WRITE;
/*!40000 ALTER TABLE `tbl_barang` DISABLE KEYS */;

INSERT INTO `tbl_barang` (`barang_id`, `kategori_id`, `barang_kode`, `barang_nama`, `barang_slug`, `barang_type`, `barang_stok`, `barang_gambar`, `created_at`, `updated_at`) VALUES
	(13, "1", "BRG-1754402351047", "Produk Baru 1", "produk-baru-1", "baru", "0", "image.png", "2025-08-05 13:59:29", "2025-08-18 19:48:00"),
	(15, "1", "BRG-1754402702916", "Produk Lama 1", "produk-lama-1", "lama", "0", "image.png", "2025-08-05 14:05:15", "2025-08-05 14:05:37");

/*!40000 ALTER TABLE `tbl_barang` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table tbl_barangkeluar
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_barangkeluar`;

CREATE TABLE `tbl_barangkeluar` (
  `bk_id` int unsigned NOT NULL AUTO_INCREMENT,
  `bk_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bk_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bk_jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bk_keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`bk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tbl_barangkeluar` WRITE;
/*!40000 ALTER TABLE `tbl_barangkeluar` DISABLE KEYS */;

INSERT INTO `tbl_barangkeluar` (`bk_id`, `bk_kode`, `barang_kode`, `bk_tanggal`, `bk_jumlah`, `bk_keterangan`, `created_at`, `updated_at`) VALUES
	(4, "BK-1754622580775", "BRG-1754402351047", "2025-08-09", "5", "test", "2025-08-08 03:10:07", "2025-08-08 03:10:07");

/*!40000 ALTER TABLE `tbl_barangkeluar` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table tbl_barangmasuk
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_barangmasuk`;

CREATE TABLE `tbl_barangmasuk` (
  `bm_id` int unsigned NOT NULL AUTO_INCREMENT,
  `bm_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`bm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tbl_barangmasuk` WRITE;
/*!40000 ALTER TABLE `tbl_barangmasuk` DISABLE KEYS */;

INSERT INTO `tbl_barangmasuk` (`bm_id`, `bm_kode`, `barang_kode`, `bm_tanggal`, `bm_jumlah`, `bm_keterangan`, `created_at`, `updated_at`) VALUES
	(3, "BM-1754622364840", "BRG-1754402351047", "2025-08-08", "10", "test", "2025-08-08 03:06:38", "2025-08-13 08:33:26"),
	(4, "BM-1755073574072", "BRG-1754402351047", "2025-08-13", "100", "test", "2025-08-13 08:26:32", "2025-08-13 08:26:32"),
	(5, "BM-1755549307387", "BRG-1754402351047", "2025-08-19", "100", "test", "2025-08-18 20:35:30", "2025-08-18 20:35:30");

/*!40000 ALTER TABLE `tbl_barangmasuk` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table tbl_customer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_customer`;

CREATE TABLE `tbl_customer` (
  `customer_id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_alamat` text COLLATE utf8mb4_unicode_ci,
  `customer_notelp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tbl_customer` WRITE;
/*!40000 ALTER TABLE `tbl_customer` DISABLE KEYS */;

INSERT INTO `tbl_customer` (`customer_id`, `customer_nama`, `customer_slug`, `customer_alamat`, `customer_notelp`, `created_at`, `updated_at`) VALUES
	(2, "Radhian Sobarna", "radhian-sobarna", "Sumedang", "087817379229", "2022-11-26 01:36:34", "2022-11-26 01:43:58");

/*!40000 ALTER TABLE `tbl_customer` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table tbl_kategori
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_kategori`;

CREATE TABLE `tbl_kategori` (
  `kategori_id` int unsigned NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_ket` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tbl_kategori` WRITE;
/*!40000 ALTER TABLE `tbl_kategori` DISABLE KEYS */;

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_slug`, `kategori_ket`, `created_at`, `updated_at`) VALUES
	(1, "Kategori 1", "", "lorem ipsum", "2025-08-04 13:39:56", "2025-08-04 13:39:56");

/*!40000 ALTER TABLE `tbl_kategori` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table tbl_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_menu`;

CREATE TABLE `tbl_menu` (
  `menu_id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_redirect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1754316594 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tbl_menu` WRITE;
/*!40000 ALTER TABLE `tbl_menu` DISABLE KEYS */;

INSERT INTO `tbl_menu` (`menu_id`, `menu_judul`, `menu_slug`, `menu_icon`, `menu_redirect`, `menu_sort`, `menu_type`, `created_at`, `updated_at`) VALUES
	(1667444041, "Dashboard", "dashboard", "home", "/dashboard", "1", "1", "2022-11-15 10:51:04", "2025-08-13 08:16:27"),
	(1668509889, "Master Data", "master-data", "edit", "-", "2", "2", "2022-11-15 10:58:09", "2025-08-13 08:16:27"),
	(1668510437, "Transaksi", "transaksi", "repeat", "-", "4", "2", "2022-11-15 11:07:17", "2025-08-13 08:16:27"),
	(1668510568, "Laporan", "laporan", "printer", "-", "5", "2", "2022-11-15 11:09:28", "2025-08-13 08:16:27"),
	(1754316593, "Produk", "produk", "package", "-", "3", "2", "2025-08-04 14:09:53", "2025-08-13 08:16:27");

/*!40000 ALTER TABLE `tbl_menu` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table tbl_merk
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_merk`;

CREATE TABLE `tbl_merk` (
  `merk_id` int unsigned NOT NULL AUTO_INCREMENT,
  `merk_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`merk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tbl_merk` WRITE;
/*!40000 ALTER TABLE `tbl_merk` DISABLE KEYS */;

INSERT INTO `tbl_merk` (`merk_id`, `merk_nama`, `merk_slug`, `merk_keterangan`, `created_at`, `updated_at`) VALUES
	(1, "Huawei", "huawei", NULL, "2022-11-15 18:14:09", "2022-11-15 18:14:09"),
	(2, "Lenovo", "lenovo", NULL, "2022-11-15 18:14:33", "2022-11-15 18:14:45"),
	(7, "Steel", "steel", NULL, "2022-11-25 15:29:27", "2022-11-25 15:29:27");

/*!40000 ALTER TABLE `tbl_merk` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table tbl_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_role`;

CREATE TABLE `tbl_role` (
  `role_id` int unsigned NOT NULL AUTO_INCREMENT,
  `role_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_desc` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tbl_role` WRITE;
/*!40000 ALTER TABLE `tbl_role` DISABLE KEYS */;

INSERT INTO `tbl_role` (`role_id`, `role_title`, `role_slug`, `role_desc`, `created_at`, `updated_at`) VALUES
	(1, "Super Admin", "super-admin", "-", "2022-11-15 10:51:04", "2022-11-15 10:51:04"),
	(2, "Admin", "admin", "-", "2022-11-15 10:51:04", "2022-11-15 10:51:04"),
	(3, "Operator", "operator", "-", "2022-11-15 10:51:04", "2022-11-15 10:51:04"),
	(4, "Manajer", "manajer", NULL, "2022-12-06 09:33:27", "2022-12-06 09:33:27");

/*!40000 ALTER TABLE `tbl_role` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table tbl_satuan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_satuan`;

CREATE TABLE `tbl_satuan` (
  `satuan_id` int unsigned NOT NULL AUTO_INCREMENT,
  `satuan_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`satuan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tbl_satuan` WRITE;
/*!40000 ALTER TABLE `tbl_satuan` DISABLE KEYS */;

INSERT INTO `tbl_satuan` (`satuan_id`, `satuan_nama`, `satuan_slug`, `satuan_keterangan`, `created_at`, `updated_at`) VALUES
	(1, "Kg", "kg", NULL, "2022-11-15 17:50:38", "2022-11-24 12:39:04"),
	(5, "Pcs", "pcs", NULL, "2022-11-24 12:39:15", "2022-11-24 12:39:21"),
	(7, "Qty", "qty", NULL, "2022-11-24 12:39:59", "2022-11-24 12:39:59");

/*!40000 ALTER TABLE `tbl_satuan` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table tbl_submenu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_submenu`;

CREATE TABLE `tbl_submenu` (
  `submenu_id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_redirect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tbl_submenu` WRITE;
/*!40000 ALTER TABLE `tbl_submenu` DISABLE KEYS */;

INSERT INTO `tbl_submenu` (`submenu_id`, `menu_id`, `submenu_judul`, `submenu_slug`, `submenu_redirect`, `submenu_sort`, `created_at`, `updated_at`) VALUES
	(9, "1668510437", "Masuk", "masuk", "/masuk", "1", "2022-11-15 11:08:19", "2022-11-15 11:08:19"),
	(10, "1668510437", "Keluar", "keluar", "/keluar", "2", "2022-11-15 11:08:19", "2022-11-15 11:08:19"),
	(21, "1668510568", "Laporan Masuk", "laporan-masuk", "/laporan-masuk", "1", "2022-11-30 12:56:24", "2022-11-30 12:56:24"),
	(22, "1668510568", "Laporan Keluar", "laporan-keluar", "/laporan-keluar", "2", "2022-11-30 12:56:24", "2022-11-30 12:56:24"),
	(23, "1668510568", "Laporan Stok", "laporan-stok", "/laporan-stok", "3", "2022-11-30 12:56:24", "2022-11-30 12:56:24"),
	(33, "1754316593", "Produk Baru", "produk-baru", "/produk_baru", "1", "2025-08-04 14:10:06", "2025-08-04 14:10:06"),
	(34, "1754316593", "Produk Lama", "produk-lama", "/produk_lama", "2", "2025-08-04 14:10:06", "2025-08-04 14:10:06"),
	(35, "1668509889", "Kategori", "kategori", "/kategori", "1", "2025-08-13 08:00:01", "2025-08-13 08:00:01");

/*!40000 ALTER TABLE `tbl_submenu` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table tbl_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nmlengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;

INSERT INTO `tbl_user` (`user_id`, `role_id`, `user_nmlengkap`, `user_nama`, `user_email`, `user_foto`, `user_password`, `created_at`, `updated_at`) VALUES
	(1, "1", "Super Administrator", "superadmin", "superadmin@gmail.com", "undraw_profile.svg", "25d55ad283aa400af464c76d713c07ad", "2022-11-15 10:51:04", "2022-11-15 10:51:04"),
	(2, "2", "Administrator", "admin", "admin@gmail.com", "undraw_profile.svg", "25d55ad283aa400af464c76d713c07ad", "2022-11-15 10:51:04", "2022-11-15 10:51:04"),
	(3, "3", "Operator", "operator", "operator@gmail.com", "undraw_profile.svg", "25d55ad283aa400af464c76d713c07ad", "2022-11-15 10:51:04", "2022-11-15 10:51:04"),
	(4, "4", "Manajer", "manajer", "manajer@gmail.com", "undraw_profile.svg", "25d55ad283aa400af464c76d713c07ad", "2022-12-06 09:33:54", "2022-12-06 09:33:54");

/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table tbl_web
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_web`;

CREATE TABLE `tbl_web` (
  `web_id` int unsigned NOT NULL AUTO_INCREMENT,
  `web_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`web_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tbl_web` WRITE;
/*!40000 ALTER TABLE `tbl_web` DISABLE KEYS */;

INSERT INTO `tbl_web` (`web_id`, `web_nama`, `web_logo`, `web_deskripsi`, `created_at`, `updated_at`) VALUES
	(1, "Inventoryweb", "default.png", "Mengelola Data Barang Masuk & Barang Keluar", "2022-11-15 10:51:04", "2022-11-22 09:41:39");

/*!40000 ALTER TABLE `tbl_web` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

# Dump completed on 2025-08-19T03:44:17+07:00
