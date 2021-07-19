-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Hazırlanma Vaxtı: 19 İyul, 2021 saat 18:36
-- Server versiyası: 10.4.11-MariaDB
-- PHP Versiyası: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Verilənlər Bazası: `mini_crm`
--

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sxemi çıxarılan cedvel `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `logo`, `website`, `created_at`, `updated_at`) VALUES
(4, 'Corkery, Funk and Considine', 'nherman@reichel.com', '99112b4fbc261c5da9f5ae541f1f177e.png', 'http://www.funk.com/qui-dolore-labore-ea-assumenda-debitis-corporis', '2021-07-17 12:13:06', '2021-07-17 12:13:21'),
(5, 'Schimmel, Frami and Mayer', 'billie.wunsch@wintheiser.com', 'bc53cb3dbcec280b94bbf9cfa364e31c.png', 'http://www.lind.com/ut-consequuntur-ab-hic-est-placeat-dolor-et', '2021-07-17 12:13:07', '2021-07-17 12:13:21'),
(6, 'Adams, Wyman and Okuneva', 'ruthe.krajcik@wiza.biz', '38861bfee68aed172bd3afa46a3bf83d.png', 'http://hirthe.net/animi-quis-ab-nam-nemo', '2021-07-17 12:13:07', '2021-07-17 12:13:21'),
(7, 'Murphy', 'schaefer.eliza@quigley.biz', '749243.jpg', 'http://www.windler.com/harum-sed-fuga-inventore-atque-aperiam.html', '2021-07-17 12:13:08', '2021-07-18 07:06:33'),
(8, 'Gleason, Hintz and Stokes', 'cruz45@bashirian.com', 'e8266bab76d0528fcd1cd57456bfa207.png', 'http://kessler.biz/assumenda-nihil-autem-occaecati-autem-consequatur', '2021-07-17 12:13:09', '2021-07-17 12:13:21'),
(9, 'Nienow-West', 'bauch.llewellyn@sporer.com', '6ee3bca3ad3f71f64e60aec27e273fa4.png', 'http://www.oconner.info/', '2021-07-17 12:13:10', '2021-07-17 12:13:21'),
(10, 'Daugherty, Oberbrunner and Bernier', 'laurine96@bergstrom.com', 'f462a707ec96ec6cd5f8171f6263e790.png', 'http://aufderhar.com/pariatur-dolorem-pariatur-in-laudantium-quam-sit', '2021-07-17 12:13:10', '2021-07-17 12:13:21'),
(11, 'Morar, Lueilwitz and Hegmann', 'aubree16@gottlieb.com', 'abb66545d6f05bae09166890d17e4043.png', 'http://www.parker.com/nobis-omnis-quis-explicabo-consequatur.html', '2021-07-17 12:13:11', '2021-07-17 12:13:21'),
(12, 'Senger PLC', 'xweissnat@eichmann.com', '26d35e51221d240e987206e3dc60add8.png', 'http://frami.net/autem-accusamus-omnis-velit-repellat-reiciendis-cum', '2021-07-17 12:13:11', '2021-07-17 12:13:21'),
(13, 'Jast, Schulist and Kuphal', 'rhiannon.turcotte@wehner.com', 'a59cdc3df845bb0258969c93964e88d6.png', 'http://www.nitzsche.com/non-aut-qui-at-expedita-esse-fuga-occaecati-deleniti', '2021-07-17 12:13:12', '2021-07-17 12:13:21'),
(14, 'Yundt Group', 'cummings.zena@grant.com', '9b1db48f19b28a4bb4089b5437c547de.png', 'http://www.mertz.com/id-non-deleniti-beatae-rerum', '2021-07-17 12:13:13', '2021-07-17 12:13:22'),
(15, 'Hahn PLC', 'hartmann.gay@howe.com', 'fb99d5258c6553033db4b3c11b765bc5.png', 'http://www.nolan.biz/', '2021-07-17 12:13:13', '2021-07-17 12:13:22'),
(16, 'Murazik Ltd', 'lavon04@ryan.info', '40206387d1541ea933480aec71f90d44.png', 'https://www.schulist.biz/commodi-ad-facilis-sit-molestiae', '2021-07-17 12:13:14', '2021-07-17 12:13:22'),
(17, 'Toy and Sons', 'deanna.eichmann@durgan.com', 'db25b3953ad0074bbb27136bc9224cbe.png', 'https://gutmann.com/minus-provident-deserunt-modi-sed-odit-sit-deserunt.html', '2021-07-17 12:13:14', '2021-07-17 12:13:22'),
(18, 'Breitenberg, Emmerich and Feest', 'millie93@steuber.biz', '146d4a46013b27720359ec2ace525274.png', 'http://www.hagenes.info/sunt-at-sunt-distinctio-vero-pariatur-ea', '2021-07-17 12:13:15', '2021-07-17 12:13:22'),
(19, 'Hoeger-Tromp', 'tremayne11@trantow.info', 'af65fe240c18ae7703299a7f50242e08.png', 'http://www.leannon.biz/dolorem-quam-sed-ullam-odio-amet-aliquam-repellat', '2021-07-17 12:13:15', '2021-07-17 12:13:22'),
(20, 'Wolf Group', 'heller.bernadine@legros.biz', 'fc900a08fb99cff3e5963ce089f5f14f.png', 'http://johnson.com/necessitatibus-neque-explicabo-cumque-fugiat-itaque-nihil.html', '2021-07-17 12:13:15', '2021-07-17 12:13:22'),
(21, 'Will-Schmeler', 'mbechtelar@kulas.com', '92ffed7a00b230f0220ca1dda139d908.png', 'http://www.mclaughlin.com/', '2021-07-17 12:13:16', '2021-07-17 12:13:22'),
(22, 'Grimes Inc', 'london.wehner@glover.com', 'bc95a6d8d2a4e707b849db48ec77a0b7.png', 'http://www.ankunding.com/excepturi-eaque-et-tenetur-magnam-non-suscipit-at-quae', '2021-07-17 12:13:16', '2021-07-17 12:13:22'),
(23, 'Ondricka-Windler', 'malcolm.yost@nitzsche.com', '7d3e4ce331bde85ff4c2feb0e2ba5231.png', 'https://kertzmann.com/et-aut-nisi-sint-numquam-et.html', '2021-07-17 12:13:17', '2021-07-17 12:13:22'),
(24, 'Collier, Feeney and Green', 'jkutch@wilkinson.net', '6a780f3e403a6bb96a1c9a16ef3b716a.png', 'http://green.com/ducimus-placeat-corporis-veniam-molestias-qui', '2021-07-17 12:13:17', '2021-07-17 12:13:22'),
(25, 'Kris-Hoppe', 'tremblay.stone@schroeder.com', '08325521966866db482f44af3af208a0.png', 'http://www.stamm.info/cum-accusantium-excepturi-debitis-possimus-doloribus', '2021-07-17 12:13:18', '2021-07-17 12:13:22'),
(26, 'Friesen-Ullrich', 'bbarton@streich.net', '77282966dba7c2e3dd8eafaf33ee131b.png', 'http://mcglynn.com/', '2021-07-17 12:13:18', '2021-07-17 12:13:22'),
(27, 'Gerlach, Wyman and Runolfsson', 'mueller.ronny@stokes.net', '7c5cb2b590e255705bd98167b8cf03c5.png', 'http://www.schuster.com/et-rem-aperiam-atque-illum-omnis-eum.html', '2021-07-17 12:13:19', '2021-07-17 12:13:22'),
(28, 'Bashirian-Braun', 'queen94@bednar.com', '566c13e13ddc4cf8cfdaf32adcd53d50.png', 'http://www.dietrich.com/', '2021-07-17 12:13:20', '2021-07-17 12:13:22'),
(29, 'Schuster, Cummerata and Reichert', 'gwen05@jerde.biz', '325a3e81f5104e3552eb3406d735b8d6.png', 'http://www.lebsack.com/nam-dignissimos-quas-accusamus-culpa-consectetur-sed.html', '2021-07-17 12:13:20', '2021-07-17 12:13:22'),
(30, 'Wolff Ltd', 'brekke.juanita@tremblay.com', 'd8a8e6f9838b9e41f2c5d1c23a1f056f.png', 'http://willms.com/explicabo-natus-quia-iste-laudantium', '2021-07-17 12:13:21', '2021-07-17 12:13:23'),
(31, 'mobilgroup', 'mobilgroup@gmail.com', '309131372c32f74da3c8b67640c00d9a.png', 'http://cv-yalcin.cf/', '2021-07-17 23:33:16', NULL),
(32, 'Gülməmmed', 'yalcin.09700@gmail.com', '695545.jpg', 'Test', '2021-07-18 04:54:05', '2021-07-18 04:54:05'),
(33, 'Gülməmmdov', 'gulmemmedovyalcin@gmail.com', '101199.jpg', NULL, '2021-07-18 05:00:10', '2021-07-18 05:00:10'),
(36, 'Developer Web', NULL, '210640.jpg', NULL, '2021-07-18 05:09:28', '2021-07-18 05:09:28');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companies_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sxemi çıxarılan cedvel `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `companies_id`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'Antonina', 'Romaguera', 21, 'adella.fahey@example.com', '(877) 724-6185', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(3, 'Merle', 'Wisozk', 13, 'josiane81@example.org', '866-584-2972', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(4, 'Ayden', 'Witting', 30, 'veum.deshawn@example.net', '800-920-5644', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(5, 'Marlon', 'Metz', 15, 'amy.reynolds@example.org', '1-844-935-4619', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(6, 'Alanna', 'Kreiger', 19, 'chesley.champlin@example.com', '844.953.1608', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(7, 'Icie', 'O\'Kon', 30, 'zachariah.paucek@example.net', '1-855-585-0041', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(8, 'Damaris', 'Miller', 6, 'bert60@example.net', '(855) 769-9828', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(9, 'Velma', 'Gutkowski', 21, 'okuneva.carmine@example.com', '1-877-653-7316', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(10, 'Candice', 'Beier', 9, 'raoul64@example.com', '877.295.7856', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(11, 'Lafayette', 'Nicolas', 23, 'vlockman@example.com', '1-866-759-7141', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(12, 'Rashawn', 'Schowalter', 19, 'dale71@example.com', '866-708-5772', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(13, 'Travon', 'Baumbach', 13, 'kwisozk@example.com', '1-866-264-1476', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(14, 'Elody', 'Stiedemann', 14, 'stacey.bernhard@example.net', '(855) 435-3734', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(15, 'Malika', 'Mertz', 26, 'kip.zemlak@example.com', '855-377-6501', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(16, 'Lucienne', 'Maggio', 7, 'shannon.altenwerth@example.org', '844-488-2570', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(17, 'Alex', 'Bartell', 6, 'ena.daugherty@example.com', '(866) 919-4210', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(18, 'Donald', 'Kunde', 6, 'sammy.lakin@example.org', '877.287.0905', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(19, 'Oliver', 'Conn', 11, 'hirthe.juvenal@example.com', '1-855-735-1843', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(20, 'Cordell', 'Stark', 17, 'msteuber@example.net', '800-309-8862', '2021-07-17 12:13:23', '2021-07-17 12:13:23'),
(21, 'Brain', 'Schaefer', 30, 'dietrich.cecilia@example.org', '(877) 699-0604', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(22, 'Haskell', 'Considine', 10, 'rjones@example.net', '1-877-951-6885', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(23, 'Deondre', 'O\'Kon', 4, 'mozell41@example.com', '888-426-4684', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(24, 'Chad', 'Dach', 27, 'walker.corbin@example.org', '866.926.0849', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(25, 'Amara', 'Howell', 20, 'oweissnat@example.net', '(877) 423-2729', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(26, 'Kiana', 'Hamill', 26, 'jensen55@example.org', '888.866.9976', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(27, 'Johathan', 'Mohr', 24, 'ansley06@example.org', '866.869.7997', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(29, 'Alessandro', 'Romaguera', 7, 'georgiana.lynch@example.net', '800-360-0619', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(30, 'Nickolas', 'Gorczany', 27, 'vandervort.kailee@example.net', '1-844-944-3448', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(31, 'Marvin', 'Heidenreich', 7, 'dante75@example.org', '800-619-3999', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(32, 'Floyd', 'Beahan', 6, 'tiara.fahey@example.org', '1-888-841-4246', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(33, 'Anya', 'Ullrich', 8, 'wintheiser.arlo@example.com', '888-624-2098', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(34, 'Gaylord', 'Trantow', 21, 'douglas.giovani@example.net', '(888) 822-7512', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(35, 'Jarvis', 'Friesen', 28, 'carole92@example.com', '888-203-8193', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(36, 'Shad', 'Bednar', 8, 'sarai.cremin@example.org', '(888) 415-9762', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(38, 'Pearl', 'Fritsch', 19, 'aryanna50@example.com', '1-844-248-2234', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(39, 'Ramon', 'Effertz', 5, 'thea.mcclure@example.org', '(888) 977-3408', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(40, 'Joshua', 'Rice', 30, 'myrna98@example.org', '(888) 221-6624', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(41, 'Johan', 'Hoeger', 16, 'judy.kuhic@example.org', '1-877-418-1425', '2021-07-17 12:13:23', '2021-07-17 12:13:24'),
(42, 'Robb', 'Carter', 14, 'cblock@example.org', '866.559.1842', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(43, 'Ashlynn', 'Marquardt', 6, 'elvera.runolfsdottir@example.org', '888.886.7727', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(44, 'Jameson', 'Murphy', 18, 'emelia02@example.com', '1-800-764-4417', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(45, 'Caleigh', 'Smith', 5, 'dvon@example.net', '866-475-5347', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(46, 'Hardy', 'Willms', 17, 'wdickinson@example.net', '866-761-7694', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(47, 'Wade', 'Feest', 17, 'llabadie@example.org', '877.298.5988', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(48, 'Heloise', 'Murazik', 11, 'bryon.cremin@example.org', '1-800-428-7988', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(49, 'Bernie', 'Hansen', 18, 'mattie.schroeder@example.com', '844.236.7024', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(50, 'Tatyana', 'Braun', 27, 'parisian.ada@example.com', '800.981.3758', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(51, 'Luz', 'Dickens', 7, 'shea08@example.org', '(855) 243-2006', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(53, 'Alessandro', 'Orn', 6, 'laney.erdman@example.org', '1-888-703-4871', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(54, 'Hermann', 'McLaughlin', 27, 'gschiller@example.net', '(888) 315-1479', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(55, 'Abelardo', 'Gusikowski', 26, 'lroob@example.net', '855.647.6795', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(56, 'Leone', 'Little', 9, 'emmitt.nitzsche@example.net', '844-208-7840', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(57, 'Adele', 'Dibbert', 23, 'roob.berry@example.net', '1-866-617-7214', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(58, 'Matilde', 'Lueilwitz', 7, 'veda.schmidt@example.net', '(844) 881-8250', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(59, 'Sister', 'Upton', 23, 'rudy.rippin@example.com', '1-855-775-5373', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(60, 'Jakayla', 'Hane', 8, 'green.emiliano@example.net', '855.977.4981', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(61, 'Khalid', 'Donnelly', 14, 'jerrod.parker@example.org', '888-723-5065', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(62, 'Catharine', 'Raynor', 15, 'wintheiser.astrid@example.com', '1-844-701-4744', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(63, 'Isabel', 'Jones', 19, 'bogan.jerald@example.com', '855.576.5147', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(64, 'Krista', 'Gottlieb', 26, 'lmccullough@example.com', '877.360.9456', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(65, 'Keira', 'Langworth', 12, 'walker.harmon@example.org', '877-696-6240', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(66, 'Dillon', 'Gaylord', 19, 'jaime.gleichner@example.com', '1-844-974-6093', '2021-07-17 12:13:23', '2021-07-17 12:13:25'),
(67, 'Edyth', 'Borer', 13, 'willard94@example.com', '888.696.2234', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(68, 'Domenica', 'Marvin', 8, 'dewitt.langosh@example.net', '1-866-318-1616', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(69, 'Jerrod', 'Walsh', 20, 'bschmeler@example.org', '(888) 640-9711', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(71, 'Eldred', 'Balistreri', 6, 'toconner@example.com', '1-877-983-8949', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(72, 'Retha', 'Ferry', 21, 'mraz.dasia@example.com', '(877) 840-3467', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(73, 'Emily', 'Gusikowski', 8, 'jordan14@example.net', '1-888-716-0060', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(74, 'Lelia', 'Nolan', 19, 'jerrod96@example.com', '844-363-7733', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(75, 'Rosalinda', 'Schmidt', 18, 'schmeler.gracie@example.org', '888-240-2557', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(76, 'Leatha', 'Crona', 25, 'botsford.gerard@example.net', '(877) 278-4480', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(77, 'Manuel', 'Ferry', 28, 'taurean92@example.com', '(800) 729-0857', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(78, 'Markus', 'Wisozk', 29, 'nlehner@example.com', '(877) 458-8808', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(79, 'Vivian', 'Conroy', 29, 'jwelch@example.net', '844-345-2199', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(80, 'Isabella', 'Schaden', 8, 'kling.emilia@example.com', '844.724.3717', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(81, 'Maria', 'Collins', 25, 'bashirian.gino@example.net', '855-246-1487', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(82, 'Colby', 'Collins', 26, 'fthiel@example.org', '(844) 514-8874', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(83, 'Schuyler', 'Lehner', 20, 'alison99@example.net', '1-877-991-8487', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(84, 'Alyson', 'Padberg', 9, 'bmcdermott@example.org', '800.568.0056', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(85, 'Paula', 'Lowe', 30, 'okon.alexandria@example.org', '1-855-586-2826', '2021-07-17 12:13:23', '2021-07-17 12:13:26'),
(86, 'Kellen', 'Schiller', 14, 'brekke.jaqueline@example.net', '(800) 777-6922', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(87, 'Asha', 'Cummerata', 24, 'rokon@example.com', '877-819-0137', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(88, 'Scottie', 'Batz', 26, 'lockman.estella@example.net', '866-288-2925', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(89, 'Marcos', 'Ferry', 13, 'makenna34@example.com', '844.274.7606', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(90, 'Bill', 'Konopelski', 16, 'klocko.connie@example.net', '844-604-5166', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(91, 'Emily', 'Bashirian', 25, 'eddie40@example.com', '(888) 983-6197', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(92, 'Lexus', 'Hagenes', 24, 'ilynch@example.net', '888-698-7243', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(93, 'Cary', 'Walker', 22, 'christiansen.yvonne@example.net', '888.461.0398', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(94, 'Keon', 'O\'Hara', 13, 'mills.tobin@example.net', '1-866-565-8676', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(95, 'Kenny', 'Toy', 11, 'switting@example.org', '(800) 312-7532', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(96, 'Verla', 'Smith', 27, 'lhansen@example.org', '866.428.4549', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(97, 'Dean', 'Wunsch', 21, 'april.kulas@example.net', '(866) 634-9596', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(98, 'Citlalli', 'Russel', 9, 'coy.flatley@example.com', '(844) 595-5235', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(99, 'Gwendolyn', 'Spinka', 25, 'cronin.hyman@example.com', '855-715-0094', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(100, 'Braden', 'Koelpin', 18, 'balistreri.amya@example.net', '(877) 384-7122', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(102, 'Theodora', 'Price', 7, 'raegan.runte@example.com', '877-987-9996', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(103, 'Xavier', 'Kreiger', 12, 'brigitte.powlowski@example.org', '855.757.9865', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(104, 'Kian', 'Kozey', 28, 'hackett.aron@example.com', '877-501-5068', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(105, 'Barrett', 'Cormier', 6, 'enrique.roob@example.org', '877-936-8500', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(106, 'Wellington', 'Prosacco', 24, 'reichel.rosario@example.com', '(866) 847-7183', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(107, 'Toney', 'Bashirian', 5, 'condricka@example.com', '1-888-780-5178', '2021-07-17 12:13:23', '2021-07-17 12:13:27'),
(108, 'Bernadine', 'Thiel', 30, 'martin.sauer@example.com', '844-971-1230', '2021-07-17 12:13:23', '2021-07-17 12:13:28'),
(109, 'Golden', 'Zboncak', 26, 'batz.noemie@example.net', '844.822.9222', '2021-07-17 12:13:23', '2021-07-17 12:13:28'),
(111, 'Jarod', 'Conn', 25, 'kemmer.gus@example.org', '888.491.0334', '2021-07-17 12:13:23', '2021-07-17 12:13:28'),
(113, 'Austyn', 'Macejkovic', 22, 'rupton@example.net', '844.493.4205', '2021-07-17 12:13:23', '2021-07-17 12:13:28'),
(114, 'Estell', 'Jaskolski', 14, 'norbert.windler@example.com', '888-621-9395', '2021-07-17 12:13:23', '2021-07-17 12:13:28'),
(115, 'Marge', 'Schoen', 13, 'kattie.schneider@example.org', '844-775-4651', '2021-07-17 12:13:23', '2021-07-17 12:13:28'),
(116, 'Aleen', 'Shanahan', 20, 'loren.rolfson@example.com', '888-705-5992', '2021-07-17 12:13:23', '2021-07-17 12:13:28'),
(117, 'Deondre', 'Spinka', 11, 'weston92@example.com', '844-890-4714', '2021-07-17 12:13:23', '2021-07-17 12:13:28'),
(118, 'Marlin', 'Kuvalis', 5, 'nweissnat@example.com', '1-800-818-6894', '2021-07-17 12:13:23', '2021-07-17 12:13:28'),
(119, 'Dane', 'Veum', 28, 'oswald.senger@example.net', '855-377-8235', '2021-07-17 12:13:23', '2021-07-17 12:13:28'),
(120, 'Iliana', 'Stiedemann', 20, 'walton56@example.com', '(844) 948-4102', '2021-07-17 12:13:23', '2021-07-17 12:13:28'),
(121, 'Vusal', 'Rehimov', 31, 'babek@mail.ru', '(+994)70-310-71-66', '2021-07-18 08:38:29', '2021-07-18 08:38:29'),
(122, 'Web', 'Developer', 28, NULL, NULL, '2021-07-18 08:59:55', '2021-07-18 10:06:29'),
(125, 'Orxan', 'yaqubov', 29, 'yalcin.09700@gmail.com', '055555555', '2021-07-18 09:08:26', '2021-07-18 10:07:05');

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sxemi çıxarılan cedvel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_17_145615_create_companies_table', 1),
(5, '2021_07_17_150030_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cədvəl üçün cədvəl strukturu `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sxemi çıxarılan cedvel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yalçın Gülməmmədov', 'admin@admin.com', '2021-07-17 12:13:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '3xVE5Wuw9annYHFQhQ9X7I1Lm6tufhhw4ybSZiYI5GuuxSEGtFUFjGh9tVRP', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Cədvəl üçün indekslər `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_companies_id_foreign` (`companies_id`);

--
-- Cədvəl üçün indekslər `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Cədvəl üçün indekslər `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Cədvəl üçün indekslər `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Cədvəl üçün indekslər `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- Cədvəl üçün AUTO_INCREMENT `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Cədvəl üçün AUTO_INCREMENT `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- Cədvəl üçün AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Cədvəl üçün AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Cədvəl üçün AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_companies_id_foreign` FOREIGN KEY (`companies_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
