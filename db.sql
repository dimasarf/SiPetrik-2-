-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: sipetrik
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'adminnn','admin@gamil.com',NULL,'$2y$10$MJj4s6PX5IHKWkcDEDNnRumvwc8c4Z7EExI0fSkpx1kXeE5U/mOhm','KvCinfHsYjZzZougbIE77SEBRVBM4SMQQ7aEnOnGlCmu10CDDl6GEIgCbTjS','2018-12-03 20:46:18','2018-12-03 20:46:18');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keahlian`
--

DROP TABLE IF EXISTS `keahlian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keahlian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namaKeahlian` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keahlian`
--

LOCK TABLES `keahlian` WRITE;
/*!40000 ALTER TABLE `keahlian` DISABLE KEYS */;
/*!40000 ALTER TABLE `keahlian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kejadians`
--

DROP TABLE IF EXISTS `kejadians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kejadians` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nik` bigint(40) NOT NULL,
  `lokasi` text NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `jumlahKorban` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_kejadians_1_idx` (`nik`),
  CONSTRAINT `fk_kejadians_1` FOREIGN KEY (`nik`) REFERENCES `pelapors` (`nik`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kejadians`
--

LOCK TABLES `kejadians` WRITE;
/*!40000 ALTER TABLE `kejadians` DISABLE KEYS */;
INSERT INTO `kejadians` VALUES (0,0,'Anda sedang tidak bertugas','','2018-12-14 00:47:58','2018-12-14 00:49:06','-0.9173192068570728','119.86341476440427','Laporan Diterima',100),(9,1234,'Bandarlampung, ID','1221','2018-12-05 16:28:44','2018-12-15 23:06:23','-5.430085376999315','105.25417327880861','Sedang dalam penanganan tim kesehatan',100),(10,1234,'Karangparwa, ID','222dashboardDinasdashboardDinasdashboardDinas','2018-12-05 16:34:53','2018-12-13 08:39:07','-8.597315884206012','116.1060905456543','Laporan Diterima',100),(11,1235,'Mamara, ID','2222laporanlaporan','2018-12-05 16:35:49','2018-12-16 01:04:34','-0.8953492997435717','119.89637374877928','Sudah ditangani',100),(12,23456,'Pangkalpinang, ID','Terjadi gempa','2018-12-10 19:15:05','2018-12-15 23:28:26','-2.164435388442797','106.09767436981201','Sudah ditangani',100),(13,2323,'Provinsi Jambi, ID','Ada banjir','2018-12-11 19:50:55','2018-12-13 07:44:30','-1.8344033244935218','102.5954818725586','Laporan Diterima',100),(14,1234,'Palangkaraya, ID','Penemuan korban tsunami dalam keadaan luka-luka berat','2018-12-13 19:37:16','2018-12-13 19:37:59','-2.2022163588447228','113.93079757690428','Laporan Diterima',100),(15,1222,'Denpasar, ID','Penemuan korban banjir dalam keadaan tewas','2018-12-13 21:07:33','2018-12-13 21:14:33','-8.662487539644005','115.22718429565431','Laporan Diterima',100),(16,123,'Jambi, ID','bla blalal','2018-12-13 22:50:33','2018-12-13 22:50:57','-1.6477220517969187','103.58940124511719','Laporan Diterima',100),(17,1223948,'Bumiayu, ID','2112','2018-12-13 22:51:49','2018-12-13 22:52:16','-7.999397185649997','112.64539718627928','Laporan Diterima',100),(18,2222,'Pecenongan, ID','Telah terjadi gempa bumi yang memakan korban 100 jiwa korbanformLaporan','2018-12-14 00:28:59','2018-12-14 00:30:42','-6.180832901977666','106.83274984359741','Laporan Diterima',100),(19,1234,'Sepinggang-besar, ID','tsunami korban 1000','2018-12-14 00:31:58','2018-12-14 00:36:09','-1.2715630876314634','116.90131187438963','Laporan Diterima',100),(20,1234,'Palangkaraya, ID','korban tsunami 10000','2018-12-14 00:35:01','2018-12-14 00:35:44','-2.246128563278319','113.94178390502928','Laporan Diterima',100),(21,9898981432,'Sorong, ID','korban tsunami 100 korban sakit parah 50 luka ringan','2018-12-14 00:45:21','2018-12-14 19:16:37','-0.8702897138977619','131.24764323234558','Laporan Diterima',100),(22,77777,'Ujuna, ID','hhhhhh','2018-12-14 00:47:58','2018-12-14 00:49:06','-0.9173192068570728','119.86341476440427','Laporan Diterima',100),(23,1234,'Kangboi, ID','Korban mengalami pendarahan kepala','2018-12-17 02:29:22','2018-12-17 02:30:10','1.0971924571309586','104.03018474578859','Laporan Diterima',10);
/*!40000 ALTER TABLE `kejadians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `korban`
--

DROP TABLE IF EXISTS `korban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `korban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idKejadian` int(11) NOT NULL,
  `idTriase` int(11) NOT NULL,
  `gender` text NOT NULL,
  `identitas` text NOT NULL,
  `ciriCiri` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idKejadian` (`idKejadian`),
  CONSTRAINT `kejadian` FOREIGN KEY (`idKejadian`) REFERENCES `kejadians` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korban`
--

LOCK TABLES `korban` WRITE;
/*!40000 ALTER TABLE `korban` DISABLE KEYS */;
/*!40000 ALTER TABLE `korban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memiliki`
--

DROP TABLE IF EXISTS `memiliki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memiliki` (
  `idKeahlian` int(11) NOT NULL,
  `idTimMedis` int(11) NOT NULL,
  PRIMARY KEY (`idKeahlian`,`idTimMedis`),
  KEY `idTimMed` (`idTimMedis`),
  CONSTRAINT `idKeahli` FOREIGN KEY (`idKeahlian`) REFERENCES `keahlian` (`id`),
  CONSTRAINT `idTimMed` FOREIGN KEY (`idTimMedis`) REFERENCES `tim_medis` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memiliki`
--

LOCK TABLES `memiliki` WRITE;
/*!40000 ALTER TABLE `memiliki` DISABLE KEYS */;
/*!40000 ALTER TABLE `memiliki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_12_04_033157_create_admin_table',2),(4,'2018_12_04_041245_create_admin_table',3),(5,'2018_12_04_041735_create_admin_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelapors`
--

DROP TABLE IF EXISTS `pelapors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelapors` (
  `nik` bigint(40) NOT NULL,
  `nama` text NOT NULL,
  `telepon` bigint(40) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelapors`
--

LOCK TABLES `pelapors` WRITE;
/*!40000 ALTER TABLE `pelapors` DISABLE KEYS */;
INSERT INTO `pelapors` VALUES (0,'tes',0,'2018-12-14 00:45:20','2018-12-14 00:45:20'),(22,'tes',22,'2018-12-11 20:05:07','2018-12-11 20:05:07'),(123,'Rahmat',22,'2018-12-11 20:08:58','2018-12-11 20:08:58'),(222,'Raisa',22,'2018-12-11 20:11:21','2018-12-11 20:11:21'),(1222,'Nurul',122,'2018-12-13 21:07:33','2018-12-13 21:07:33'),(1234,'Dimas arifin',222,'2018-12-05 06:29:01','2018-12-05 06:29:01'),(1235,'Dimastyo arifin',222,'2018-12-05 06:29:01','2018-12-05 06:29:01'),(2222,'Aldi',22,'2018-12-14 00:28:58','2018-12-14 00:28:58'),(2323,'Febri',2323,'2018-12-11 19:50:54','2018-12-11 19:50:54'),(4445,'Doni',222,'2018-12-11 20:01:03','2018-12-11 20:01:03'),(12345,'Raka',22,'2018-12-11 20:07:41','2018-12-11 20:07:41'),(23456,'Zaki',12345,'2018-12-10 19:15:05','2018-12-10 19:15:05'),(77777,'Zaki',77777,'2018-12-14 00:47:58','2018-12-14 00:47:58'),(1223948,'Abdul',9942039432,'2018-12-11 05:49:04','2018-12-11 05:49:04'),(9898981432,'Zaki',87878787,'2018-12-14 00:45:20','2018-12-14 00:45:20');
/*!40000 ALTER TABLE `pelapors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penugasans`
--

DROP TABLE IF EXISTS `penugasans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penugasans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idKejadian` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `triase` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`idKejadian`),
  UNIQUE KEY `idKejadian_UNIQUE` (`idKejadian`),
  KEY `fk_penugasan_1_idx` (`idKejadian`),
  CONSTRAINT `fk_penugasan_1` FOREIGN KEY (`idKejadian`) REFERENCES `kejadians` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penugasans`
--

LOCK TABLES `penugasans` WRITE;
/*!40000 ALTER TABLE `penugasans` DISABLE KEYS */;
INSERT INTO `penugasans` VALUES (0,0,'2018-12-14 19:16:35','2018-12-14 19:16:35','hijau'),(1,11,'2018-12-03 20:46:18','2018-12-03 20:46:18','merah'),(2,9,'2018-12-10 02:39:49','2018-12-10 02:39:49','hijau'),(16,13,'2018-12-11 19:53:34','2018-12-11 19:53:34','kuning'),(31,12,'2018-12-13 08:18:58','2018-12-13 08:18:58','hitam'),(33,10,'2018-12-13 08:39:07','2018-12-13 08:39:07','hitam'),(34,14,'2018-12-13 19:37:59','2018-12-13 19:37:59','putih'),(35,15,'2018-12-13 21:14:32','2018-12-13 21:14:32','merah'),(36,16,'2018-12-13 22:50:56','2018-12-13 22:50:56','merah'),(37,17,'2018-12-13 22:52:16','2018-12-13 22:52:16','hitam'),(38,18,'2018-12-14 00:30:42','2018-12-14 00:30:42','hijau'),(39,20,'2018-12-14 00:35:44','2018-12-14 00:35:44','kuning'),(40,19,'2018-12-14 00:36:09','2018-12-14 00:36:09','merah'),(41,22,'2018-12-14 00:49:06','2018-12-14 00:49:06','merah'),(42,21,'2018-12-14 19:16:35','2018-12-14 19:16:35','hijau'),(43,23,'2018-12-17 02:30:10','2018-12-17 02:30:10','kuning');
/*!40000 ALTER TABLE `penugasans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tim_medis`
--

DROP TABLE IF EXISTS `tim_medis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tim_medis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpenugasan` int(11) NOT NULL,
  `password` varchar(24) NOT NULL,
  `nama` text NOT NULL,
  `kontak` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tim_medis`
--

LOCK TABLES `tim_medis` WRITE;
/*!40000 ALTER TABLE `tim_medis` DISABLE KEYS */;
/*!40000 ALTER TABLE `tim_medis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triases`
--

DROP TABLE IF EXISTS `triases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `triases` (
  `warna` varchar(45) NOT NULL,
  `cara` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triases`
--

LOCK TABLES `triases` WRITE;
/*!40000 ALTER TABLE `triases` DISABLE KEYS */;
INSERT INTO `triases` VALUES ('hijau','Hijau, sebagai penanda kelompok korban yang tidak memerlukan pengobatan atau pemberian pengobatan dapat ditunda, mencakup korban yang mengalami:\n Fraktur minor \nLuka minor, luka bakar minor \nKorban dalam kategori ini, setelah pembalutan luka dan atau pemasangan bidai dapat dipindahkan pada akhir operasi lapangan. \nKorban dengan prognosis infaust, jika masih hidup pada akhir operasi lapangan, juga akan dipindahkan ke fasilitas kesehatan.\nCara Mengatasi :\nPenanganan patah tulang yang paling utama adalah pembidaian. Pembidaian adalah berbagai tindakan dan upaya untuk menghindari pergerakan, untuk melindungi serta menstabilkan bagian tubuh yang cedera. Hal ini penting dilakukan sebelum tenaga ahli (dokter atau paramedis) dapat membantu Anda.\nPembidaian bertujuan untuk:\nMencegah pergerakan atau pergeseran dari ujung tulang yang patah\nMengurangi terjadinya cedera baru di sekitar bagian tulang yang patah\nMengistirahatkan anggota badan yang patah\nMengurangi rasa nyeri\nMengurangi perdarahan\nMempercepat penyembuhan\nPanduan pembidaian\nMeskipun bidai yang dipakai seadanya, tetap saja ada beberapa pedoman yang harus diikuti untuk meminimalisir kecelakaan saat pembidaian.\nSebisa mungkin beri tahu rencana yang akan Anda lakukan pada penderita.\nPastikan bagian yang cedera dapat dilihat, dan hentikan perdarahan (bila ada) sebelum melakukan pembidaian.\nSiapkan alat seperlunya seperti bidai dan kain segitiga (mitella).\nJangan mengubah posisi yang cedera.\nJangan memasukkan bagian tulang yang patah.\nBidai harus meliputi dua sendi dari tulang yang patah (sebelum dipasang, bidai harus diukur terlebih dahulu pada anggoda badan penderita yang tidak mengalami patah tulang).\nJika ada tulang yang keluar, Anda dapat menggunakan mitella dan membentuknya seperti donat atau menggunakan benda apapun yang lunak dan memiliki lubang, lalu masukkan tulang di dalam lingkaran donat tersebut agar tulang tidak tersenggol (sesuaikan lingkaran dengan diameter tulang yang keluar).\nLapisi bidai dengan bahan yang lunak bila memungkinkan.\nGunakan beberapa mitella untuk mengikat bidai (jika di bagian kaki, masukkan mitella melalui celah di bawah lutut dan di bawah pergelangan kaki).\nIkat juga “donat” yang telah Anda pakai pada tulang yang keluar dengan mitella.\nIkatan jangan terlalu keras dan terlalu longgar.\nIkatan harus cukup jumlahnya, dimulai dari sendi yang banyak melakukan gerakan, kemudian sendi atas dari tulang yang patah.\nJangan membidai berlebihan, jika anggota tubuh penderita yang mengalami patah tulang sudah tidak dapat melakukan gerakan itu berarti Anda sudah melakukan pembidaian dengan baik.\nBawa penderita ke rumah sakit untuk tindakan lebih lanjut.\n','2018-12-03 20:46:18','2018-12-03 20:46:18',1),('hitam','Hitam, sebagai penanda korban yang telah meninggal dunia.\n','2018-12-03 20:46:18','2018-12-03 20:46:18',2),('kuning','Kuning, sebagai penanda korban yang memerlukan pengawasan ketat, tetapi perawatan dapat ditunda sementara. Termasuk dalam kategori ini:\n Korban dengan risiko syok (korban dengan gangguan jantung, trauma abdomen) \nFraktur multipel \nFraktur femur / pelvis \nLuka bakar luas \n Gangguan kesadaran / trauma kepala \n Korban dengan status yang tidak jelas\nCara Mengatasi :\nAlirkan air biasa ke daerah yang luka. Bila ada bahan kimia alirkan air terus menerus selama 20 menit atau lebih.\nLepaskan pakaian dan perhiasan. Jika pakaian melekat pada luka bakar, gunting pakaian di sekitarnya yang tidak menempel, dan jangan memaksa untuk melepasnya.\nTutup luka bakar, gunakan penutup luka steril, dan jangan memecahkan gelembung.\nJangan menggunakan mentega, odol, kecap, kopi, air es.\nSegera rujuk ke fasilitas kesehatan.\n','2018-12-03 20:46:18','2018-12-03 20:46:18',3),('merah','Merah, sebagai penanda korban yang membutuhkan stabilisasi segera dan korban yang mengalami: \nSyok oleh berbagai kausa\n Gangguan pernapasan \nTrauma kepala dengan pupil anisokor \nPerdarahan eksternal massif \nPemberian perawatan lapangan intensif ditujukan bagi korban yang mempunyai kemungkinan hidup lebih besar, sehingga setelah perawatan di lapangan ini penderita lebih dapat mentoleransi proses pemindahan ke Rumah Sakit, dan lebih siap untuk menerima perawatan yang lebih invasif. Triase ini korban dapat dikategorisasikan kembali dari status “merah” menjadi “kuning” (misalnya korban dengan tension pneumothorax yang telah dipasang drain thoraks (WSD).\nCara Mengatasi:\nebagian orang mengalami sesak napas atau kesulitan bernapas hanya dalam waktu singkat, namun sebagian orang lagi mengalaminya dalam jangka panjang, hingga berminggu-minggu. Jika sesak napas yang Anda alami bukan karena kondisi darurat medis, Anda bisa mencoba beberapa langkah berikut ini sebagai cara mengatasi sesak napas tanpa menggunakan obat-obatan.\nPursed-lip Breathing\nIni merupakan teknik bernapas sebagai cara mengatasi sesak napas yang sederhana dan mudah dilakukan. Teknik ini membantu memperlambat laju pernapasan Anda, yang membuat setiap napas lebih dalam dan lebih efektif. Anda bisa melakukannya kapan saja ketika mengalami sesak napas, terutama saat membungkuk, mengangkat benda, atau menaiki tangga. Caranya dengan merelaksasikan otot leher dan bahu Anda. Tutup mulut Anda saat menghirup, dan ambil napas pelan-pelan melalui hidung dalam dua hitungan, dan buang napas perlahan melalui celah bibir atau mulut sampai hitungan keempat.\nDuduk dengan Posisi ke Depan dan Sedikit Membungkuk\nIstirahat sambil duduk bisa membantu merilekskan tubuh Anda dan membuat pernapasan lebih mudah. Duduklah di kursi dengan telapak kaki menapak lantai, condongkan dada sedikit ke depan. Perlahan letakkan siku di lutut atau menahan dagu dengan tangan. Otot leher dan bahu Anda harus tetap rileks. Posisi duduk ini juga bisa Anda lakukan dengan bertumpu pada meja, istirahatkan lengan dan kepala Anda di meja, jangan lupa gunakan bantal untuk menyangga kepala Anda agar posisi lebih nyaman.\nBerdiri Menyandar Dinding\nBerdiri menyandar pada tembok atau lainnya bisa turut membantu merilekskan tubuh dan saluran pernapasan Anda. Berdiri dan bersandarlah pada dinding dengan menempelkan pinggul. Jaga agar kaki Anda terbuka selebar bahu dan tangan berada di samping kedua paha Anda. Santailah dan condongkan badan sedikit ke depan. Anda juga bisa berdiri sambil telapak tangan Anda bertumpu pada meja dan merilekskan otot leher dan bahu Anda.\nBerbaring Santai\nCobalah bernapas sambil berbaring miring dengan bantal di antara kedua kaki dan kepala ditinggikan bertumpu pada bantal. Usahakan punggung tetap lurus. Atau berbaring telentang dengan kepala ditinggikan beralaskan bantal dan lutut ditekuk dengan meletakkan bantal di bawah lutut. Kedua posisi ini membantu tubuh dan saluran udara Anda rileks, membuat pernapasan menjadi lebih mudah.\nPernapasan Diafragma\nPernapasan diafragma juga dapat menjadi cara mengatasi sesak napas. Caranya, Anda cukup duduk di kursi, lalu rilekskan lutut, bahu, kepala, dan leher. Letakan satu tangan Anda di depan perut, dan satu lagi di depan dada. Bernapaslah dengan perlahan melalui hidung, hingga tangan Anda merasakan perut Anda bergerak saat bernapas. Saat Anda mengembuskan napas, kencangkan otot perut. Buanglah napas perlahan melalui mulut dengan bibir mengerucut. Beri penekanan lebih pada embusan napas dibandingkan saat menghirupnya. Jaga agar mengembuskan napas lebih lama dari biasanya, sebelum perlahan menghirup napas lagi. Ulangi sekitar lima menit.','2018-12-03 20:46:18','2018-12-03 20:46:18',4);
/*!40000 ALTER TABLE `triases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kontak` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idPenugasan` int(11) DEFAULT NULL,
  `jabatan` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `fk_users_1_idx` (`idPenugasan`),
  CONSTRAINT `fk_users_1` FOREIGN KEY (`idPenugasan`) REFERENCES `penugasans` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Dimastyo Arifin','admin@gamil.com',NULL,'$2y$10$MJj4s6PX5IHKWkcDEDNnRumvwc8c4Z7EExI0fSkpx1kXeE5U/mOhm','Xr1fxiyiXOQhWaO93LRwvFr2mIjXpRGgSq6jSjFXNle5Sr6oHcNFUn29rjsT','2018-12-03 20:46:18','2018-12-16 03:01:17','2222',36,'Dokter'),(2,'Dimastyo Muhaimin','dimas@gamil.com',NULL,'$2y$10$MJj4s6PX5IHKWkcDEDNnRumvwc8c4Z7EExI0fSkpx1kXeE5U/mOhm','e5BVWcpxskQs8SqJfHiiVBLlBpMHlZftY9NgSFk7d3KZjFlxaMF1pQOjA9ol','2018-12-03 20:46:18','2018-12-16 03:21:35','2222',31,'Suster'),(3,'Rahmat','Rahmat@gamil.com',NULL,'$2y$10$MJj4s6PX5IHKWkcDEDNnRumvwc8c4Z7EExI0fSkpx1kXeE5U/mOhm','sytNpmXhhEqZFFQDxpsHTQZ4UbVi6R2APnlBuWBUp3AWLVsNCHLKcKEBk4Wb','2018-12-03 20:46:18','2018-12-16 03:21:33','2222',31,'Suster'),(4,'Zaki','zaki@gamil.com',NULL,'$2y$10$MJj4s6PX5IHKWkcDEDNnRumvwc8c4Z7EExI0fSkpx1kXeE5U/mOhm','Ug4F6MkUClaVLBB1Q1FjJBbEEtJQzqErPCYAKlzD8xLeZHQ2qwWsfklQ5bFo','2018-12-03 20:46:18','2018-12-17 02:31:03','2222',43,'Suster'),(5,'Febri','febri@gamil.com',NULL,'$2y$10$MJj4s6PX5IHKWkcDEDNnRumvwc8c4Z7EExI0fSkpx1kXeE5U/mOhm','r8BypnMHNEGAHkI2lvhGhnhDhHZOj7l859fiH0AP6LjO7ieG4s7OcdxHNYby','2018-12-03 20:46:18','2018-12-17 02:31:27','2222',0,'Suster'),(6,'Nurul','nurul@gamil.com',NULL,'$2y$10$MJj4s6PX5IHKWkcDEDNnRumvwc8c4Z7EExI0fSkpx1kXeE5U/mOhm','FNQC0f5YxucrkLpjRessidwdtIyzUngDZ7saMmXHxTNG42kXmBZPBprCYglm','2018-12-03 20:46:18','2018-12-17 02:31:04','2222',43,'Suster'),(7,'Adi','adi@gmail.com',NULL,'$2y$10$MXZXniQM5UNhQw7iEV.o0OREhpEDYBGyMkGYEHCybJ13Ig4XK7T.S','oZ4r8Lulz9b1NXUEZIxkG1KyPYkz6rs7lp52I9WrnIXt8CtrOTcCOArBR5sv','2018-12-17 02:21:37','2018-12-17 02:31:05','085374111802',43,'Epidermologi');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-18 14:43:54
