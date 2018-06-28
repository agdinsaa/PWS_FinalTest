# Host: localhost  (Version 5.5.5-10.1.30-MariaDB)
# Date: 2018-06-28 09:39:45
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "mhs"
#

DROP TABLE IF EXISTS `mhs`;
CREATE TABLE `mhs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fakultas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "mhs"
#

INSERT INTO `mhs` VALUES (1,'1512500339','Sisca Agdinsa Ramadhan','0896xxxxxx','Graha Raya Bintaro','siscagdinsaa@gmail.com','FTI','Sistem Informasi','2018-06-28 09:06:39','2018-06-28 09:06:39',NULL),(2,'1512502400','Widya Pramesti','0812xxxxxx','Pamulang','widyapram04@gmail.com','FTI','Sistem Informasi','2018-06-28 09:14:46','2018-06-28 09:35:46','2018-06-28 09:35:46'),(3,'1512500867','Andy Chahyono','0856xxxxxx','Cipadu','andybalbal@gmail.com','FTI','Sistem Informasi','2018-06-28 09:34:39','2018-06-28 09:34:39',NULL);

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES (1,'2018_06_27_232100_create_mahasiswa',1);
