
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


INSERT INTO `file` (`id`, `name`, `uploadStatus`, `url`, `key`, `createdAt`, `updatedAt`, `userId`) VALUES
	('clpc5o9mt0001udg0lny5anjo', 'invoice_b2b.pdf', 'SUCCESS', 'https://uploadthing-prod.s3.us-west-2.amazonaws.com/78342bd0-d432-486b-a692-9c4a611b8ac5-e9160w.pdf', '78342bd0-d432-486b-a692-9c4a611b8ac5-e9160w.pdf', '2023-11-24 05:02:08.824', '2023-11-24 05:02:11.228', 'kp_8d99073c8e384e568c0254ebaed37002');

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


INSERT INTO `message` (`id`, `text`, `isUserMessage`, `createdAt`, `updatedAt`, `userId`, `fileId`) VALUES
	('101', '這是測試1', 1, '2023-11-30 00:18:01.643', '2023-11-30 00:18:01.643', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('102', '這是測試2', 1, '2023-11-30 00:18:09.950', '2023-11-30 00:18:09.950', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('103', '這是測試3', 0, '2023-11-30 00:18:24.879', '2023-11-30 00:18:24.879', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('104', '這是測試4', 1, '2023-11-30 00:18:45.560', '2023-11-30 00:18:45.560', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('105', '這是測試5', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('106', '這是測試6', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('107', '這是測試7', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('108', '這是測試8', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('109', '這是測試9', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('110', '這是測試10', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('111', '這是測試11', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('112', '這是測試12', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('113', '這是測試13', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('114', '這是測試14', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('115', '這是測試15', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('116', '這是測試16', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('117', '這是測試17', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('118', '這是測試18', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('119', '這是測試19', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('120', '這是測試20', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('121', '這是測試21', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('122', '這是測試22', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('123', '這是測試23', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('124', '這是測試24', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('125', '這是測試25', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('126', '這是測試26', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('127', '這是測試27', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('128', '這是測試28', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('129', '這是測試29', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('130', '這是測試30', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('131', '這是測試31', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('132', '這是測試32', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('133', '這是測試33', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('134', '這是測試34', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('135', '這是測試35', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('136', '這是測試36', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('137', '這是測試37', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('138', '這是測試38', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('139', '這是測試39', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo'),
	('140', '這是測試40', 1, '2023-11-30 00:18:47.579', '2023-11-30 00:18:47.579', 'kp_8d99073c8e384e568c0254ebaed37002', 'clpc5o9mt0001udg0lny5anjo');
	;

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


INSERT INTO `user` (`id`, `email`, `stripe_customer_id`, `stripe_subscription_id`, `stripe_price_id`, `stripe_current_period_end`) VALUES
	('kp_8d99073c8e384e568c0254ebaed37002', 'qwerfcxzas1@gmail.com', 'cus_P6ADt7fqrDcpbD', 'sub_1OHxtMBctgly9tN2aeGcFKH5', 'price_1OGWUPBctgly9tN2ifat36RI', '2023-12-30 00:14:08.000');

