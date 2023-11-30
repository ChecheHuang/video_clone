-- --------------------------------------------------------
-- 主機:                           127.0.0.1
-- 伺服器版本:                        10.4.28-MariaDB - mariadb.org binary distribution
-- 伺服器作業系統:                      Win64
-- HeidiSQL 版本:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 傾印 quill 的資料庫結構
CREATE DATABASE IF NOT EXISTS `quill` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `quill`;

-- 傾印  資料表 quill.file 結構
CREATE TABLE IF NOT EXISTS `file` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `uploadStatus` enum('PENDING','PROCESSING','FAILED','SUCCESS') NOT NULL DEFAULT 'PENDING',
  `url` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `userId` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  quill.file 的資料：~1 rows (近似值)
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` (`id`, `name`, `uploadStatus`, `url`, `key`, `createdAt`, `updatedAt`, `userId`) VALUES
	('clpc5o9mt0001udg0lny5anjo', 'invoice_b2b.pdf', 'SUCCESS', 'https://uploadthing-prod.s3.us-west-2.amazonaws.com/78342bd0-d432-486b-a692-9c4a611b8ac5-e9160w.pdf', '78342bd0-d432-486b-a692-9c4a611b8ac5-e9160w.pdf', '2023-11-24 05:02:08.824', '2023-11-24 05:02:11.228', 'kp_8d99073c8e384e568c0254ebaed37002');
/*!40000 ALTER TABLE `file` ENABLE KEYS */;

-- 傾印  資料表 quill.message 結構
CREATE TABLE IF NOT EXISTS `message` (
  `id` varchar(191) NOT NULL,
  `text` text NOT NULL,
  `isUserMessage` tinyint(1) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `userId` varchar(191) DEFAULT NULL,
  `fileId` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  quill.message 的資料：~13 rows (近似值)
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` (`id`, `text`, `isUserMessage`, `createdAt`, `updatedAt`, `userId`, `fileId`) VALUES
	('clpkg5zxo0001ud1w5t8m5qh8', '這是測試1', 1, '2023-11-30 00:18:01.643', '2023-11-30 00:18:01.643', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkg66cd0003ud1wzsnrgqs4', '這是測試2', 1, '2023-11-30 00:18:09.950', '2023-11-30 00:18:09.950', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkg6hv20005ud1wlec9hmz9', '這是測試3', 0, '2023-11-30 00:18:24.879', '2023-11-30 00:18:24.879', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkg6xtk0007ud1wr8lb5uxb', '這是測試4', 1, '2023-11-30 00:18:45.560', '2023-11-30 00:18:45.560', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkg6zdn0009ud1wjbcgdfdh', '這是測試5', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkg70oo000bud1ws8s0q9yz', '這是測試6', 0, '2023-11-30 00:18:49.272', '2023-11-30 00:18:49.272', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkg71q0000dud1wanqrnuo4', '這是測試7', 1, '2023-11-30 00:18:50.617', '2023-11-30 00:18:50.617', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkg72uq000fud1wwvlrbr7b', '這是測試8', 0, '2023-11-30 00:18:52.082', '2023-11-30 00:18:52.082', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkg74j3000hud1wyu6me1pw', '這是測試95', 1, '2023-11-30 00:18:54.255', '2023-11-30 00:18:54.255', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkg76j8000jud1woijzojnc', '這是測試10', 1, '2023-11-30 00:18:56.852', '2023-11-30 00:18:56.852', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkg77dt000lud1w1wnrc76d', '這是測試11', 1, '2023-11-30 00:18:57.954', '2023-11-30 00:18:57.954', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkg78by000nud1wx88ztqqh', '這是測試12', 0, '2023-11-30 00:18:59.183', '2023-11-30 00:18:59.183', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkg79ap000pud1w8q0pipit', '這是測試13', 1, '2023-11-30 00:19:00.434', '2023-11-30 00:19:00.434', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgi65l0001udaovcslzoos', '這是測試14', 1, '2023-11-30 00:27:29.571', '2023-11-30 00:27:29.571', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgi8ug0003udaodeqmvnfk', '這是測試15', 1, '2023-11-30 00:27:33.064', '2023-11-30 00:27:33.064', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgib090005udao1kl6ylwu', '這是測試16', 0, '2023-11-30 00:27:35.865', '2023-11-30 00:27:35.865', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgic9v0007udaogvrq9w7p', '這是測試17', 1, '2023-11-30 00:27:37.508', '2023-11-30 00:27:37.508', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgidgx0009udao97wa4dq7', '這是測試18', 1, '2023-11-30 00:27:39.057', '2023-11-30 00:27:39.057', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgifi7000budaok79lxw1b', '這是測試19', 0, '2023-11-30 00:27:41.695', '2023-11-30 00:27:41.695', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgigy5000dudao2ywlsk6u', '這是測試20', 1, '2023-11-30 00:27:43.565', '2023-11-30 00:27:43.565', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgii7r000fudaonuvvij86', '這是測試21', 1, '2023-11-30 00:27:45.208', '2023-11-30 00:27:45.208', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgijbv000hudao6q6uy75m', '這是測試22', 1, '2023-11-30 00:27:46.652', '2023-11-30 00:27:46.652', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgilos000judaohz0sxov3', '這是測試23', 0, '2023-11-30 00:27:49.708', '2023-11-30 00:27:49.708', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgimux000ludao5yr1vqsd', '這是測試24', 1, '2023-11-30 00:27:51.225', '2023-11-30 00:27:51.225', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgiodo000nudaomwj6uhmr', '這是測試25', 1, '2023-11-30 00:27:53.197', '2023-11-30 00:27:53.197', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgip88000pudaol2cd34tw', '這是測試26', 0, '2023-11-30 00:27:54.296', '2023-11-30 00:27:54.296', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgiq7k000rudaojf5kh3cp', '這是測試27', 1, '2023-11-30 00:27:55.569', '2023-11-30 00:27:55.569', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgir9g000tudaomkuxmrh1', '這是測試28', 1, '2023-11-30 00:27:56.932', '2023-11-30 00:27:56.932', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgisle000vudaoahdlafiz', '這是測試29', 0, '2023-11-30 00:27:58.658', '2023-11-30 00:27:58.658', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgiur7000xudaoc496jto2', '這是測試30', 1, '2023-11-30 00:28:01.460', '2023-11-30 00:28:01.460', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgix9n000zudaodrh6qhuh', '這是測試31', 0, '2023-11-30 00:28:04.715', '2023-11-30 00:28:04.715', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgiyjs0011udaoizbkfve6', '這是測試32', 1, '2023-11-30 00:28:06.377', '2023-11-30 00:28:06.377', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgizu00013udaoqbe8rl9w', '這是測試33', 0, '2023-11-30 00:28:08.041', '2023-11-30 00:28:08.041', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgj1260015udaodemxega8', '這是測試34', 1, '2023-11-30 00:28:09.631', '2023-11-30 00:28:09.631', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgj20z0017udaozg94vwpr', '這是測試35', 0, '2023-11-30 00:28:10.883', '2023-11-30 00:28:10.883', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgj3150019udaoqjvf5k7a', '這是測試36', 0, '2023-11-30 00:28:12.185', '2023-11-30 00:28:12.185', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgj46c001budao0wv9wnf9', '這是測試37', 1, '2023-11-30 00:28:13.669', '2023-11-30 00:28:13.669', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgj57b001dudaohnxo456t', '這是測試38', 0, '2023-11-30 00:28:15.000', '2023-11-30 00:28:15.000', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgj7lo001fudaoy5mjeb99', '這是測試39', 0, '2023-11-30 00:28:18.108', '2023-11-30 00:28:18.108', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('clpkgj92c001hudaoes9oft6p', '這是測試40', 1, '2023-11-30 00:28:20.004', '2023-11-30 00:28:20.004', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;

-- 傾印  資料表 quill.user 結構
CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `stripe_customer_id` varchar(191) DEFAULT NULL,
  `stripe_subscription_id` varchar(191) DEFAULT NULL,
  `stripe_price_id` varchar(191) DEFAULT NULL,
  `stripe_current_period_end` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `User_id_key` (`id`),
  UNIQUE KEY `User_email_key` (`email`),
  UNIQUE KEY `User_stripe_customer_id_key` (`stripe_customer_id`),
  UNIQUE KEY `User_stripe_subscription_id_key` (`stripe_subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  quill.user 的資料：~1 rows (近似值)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `email`, `stripe_customer_id`, `stripe_subscription_id`, `stripe_price_id`, `stripe_current_period_end`) VALUES
	('kp_8d99073c8e384e568c0254ebaed37002', 'qwerfcxzas1@gmail.com', 'cus_P6ADt7fqrDcpbD', 'sub_1OHxtMBctgly9tN2aeGcFKH5', 'price_1OGWUPBctgly9tN2ifat36RI', '2023-12-30 00:14:08.000');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
