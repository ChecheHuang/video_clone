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

-- 傾印 next13-discord-clone 的資料庫結構
CREATE DATABASE IF NOT EXISTS `next13-discord-clone` /*!40100 DEFAULT CHARACTER SET armscii8 COLLATE armscii8_bin */;

USE `next13-discord-clone`;

-- 傾印  資料表 next13-discord-clone.channel 結構
CREATE TABLE
  IF NOT EXISTS `channel` (
    `id` varchar(191) NOT NULL,
    `name` varchar(191) NOT NULL,
    `type` enum ('TEXT', 'AUDIO', 'VIDEO') NOT NULL DEFAULT 'TEXT',
    `profileId` varchar(191) NOT NULL,
    `serverId` varchar(191) NOT NULL,
    `createdAt` datetime (3) NOT NULL DEFAULT current_timestamp(3),
    `updatedAt` datetime (3) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `Channel_profileId_idx` (`profileId`),
    KEY `Channel_serverId_idx` (`serverId`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- 正在傾印表格  next13-discord-clone.channel 的資料：~2 rows (近似值)
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;

INSERT INTO
  `channel` (
    `id`,
    `name`,
    `type`,
    `profileId`,
    `serverId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    'general',
    'TEXT',
    '0100f364-0c42-430e-b2b6-795756071d85',
    '1b2abba3-bf95-4386-bc0b-ffbdc855a65b',
    '2023-12-05 23:57:15.887',
    '2023-12-05 23:57:15.887'
  ),
  (
    '6a89c202-16ff-4e32-9bd5-30bc2fc8aee8',
    'general',
    'TEXT',
    'ce598b3e-c65e-4996-9a44-daad7173bdf1',
    '75ed51e9-b761-4716-ab79-8e9de3e0e078',
    '2023-12-05 23:58:21.016',
    '2023-12-05 23:58:21.016'
  );

/*!40000 ALTER TABLE `channel` ENABLE KEYS */;

-- 傾印  資料表 next13-discord-clone.conversation 結構
CREATE TABLE
  IF NOT EXISTS `conversation` (
    `id` varchar(191) NOT NULL,
    `memberOneId` varchar(191) NOT NULL,
    `memberTwoId` varchar(191) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `Conversation_memberOneId_memberTwoId_key` (`memberOneId`, `memberTwoId`),
    KEY `Conversation_memberTwoId_idx` (`memberTwoId`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- 正在傾印表格  next13-discord-clone.conversation 的資料：~0 rows (近似值)
/*!40000 ALTER TABLE `conversation` DISABLE KEYS */;

/*!40000 ALTER TABLE `conversation` ENABLE KEYS */;

-- 傾印  資料表 next13-discord-clone.directmessage 結構
CREATE TABLE
  IF NOT EXISTS `directmessage` (
    `id` varchar(191) NOT NULL,
    `content` text NOT NULL,
    `fileUrl` text DEFAULT NULL,
    `memberId` varchar(191) NOT NULL,
    `conversationId` varchar(191) NOT NULL,
    `deleted` tinyint (1) NOT NULL DEFAULT 0,
    `createdAt` datetime (3) NOT NULL DEFAULT current_timestamp(3),
    `updatedAt` datetime (3) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `DirectMessage_memberId_idx` (`memberId`),
    KEY `DirectMessage_conversationId_idx` (`conversationId`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- 正在傾印表格  next13-discord-clone.directmessage 的資料：~0 rows (近似值)
/*!40000 ALTER TABLE `directmessage` DISABLE KEYS */;

/*!40000 ALTER TABLE `directmessage` ENABLE KEYS */;

-- 傾印  資料表 next13-discord-clone.member 結構
CREATE TABLE
  IF NOT EXISTS `member` (
    `id` varchar(191) NOT NULL,
    `role` enum ('ADMIN', 'MODERATOR', 'GUEST') NOT NULL DEFAULT 'GUEST',
    `profileId` varchar(191) NOT NULL,
    `serverId` varchar(191) NOT NULL,
    `createdAt` datetime (3) NOT NULL DEFAULT current_timestamp(3),
    `updatedAt` datetime (3) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `Member_profileId_idx` (`profileId`),
    KEY `Member_serverId_idx` (`serverId`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- 正在傾印表格  next13-discord-clone.member 的資料：~3 rows (近似值)
/*!40000 ALTER TABLE `member` DISABLE KEYS */;

INSERT INTO
  `member` (
    `id`,
    `role`,
    `profileId`,
    `serverId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '5638d6ad-56e6-44cd-8153-d002cb83e1d0',
    'ADMIN',
    'ce598b3e-c65e-4996-9a44-daad7173bdf1',
    '75ed51e9-b761-4716-ab79-8e9de3e0e078',
    '2023-12-05 23:58:21.016',
    '2023-12-05 23:58:21.016'
  ),
  (
    'baa4cd57-e98f-4dc3-a386-f7ade904b2c7',
    'GUEST',
    'ce598b3e-c65e-4996-9a44-daad7173bdf1',
    '1b2abba3-bf95-4386-bc0b-ffbdc855a65b',
    '2023-12-05 23:59:30.707',
    '2023-12-05 23:59:30.707'
  ),
  (
    'f72e1b35-13b5-4c90-ad4a-a6c38cfce2a1',
    'ADMIN',
    '0100f364-0c42-430e-b2b6-795756071d85',
    '1b2abba3-bf95-4386-bc0b-ffbdc855a65b',
    '2023-12-05 23:57:15.887',
    '2023-12-05 23:57:15.887'
  );

/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- 傾印  資料表 next13-discord-clone.message 結構
CREATE TABLE
  IF NOT EXISTS `message` (
    `id` varchar(191) NOT NULL,
    `content` text NOT NULL,
    `fileUrl` text DEFAULT NULL,
    `memberId` varchar(191) NOT NULL,
    `channelId` varchar(191) NOT NULL,
    `deleted` tinyint (1) NOT NULL DEFAULT 0,
    `createdAt` datetime (3) NOT NULL DEFAULT current_timestamp(3),
    `updatedAt` datetime (3) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `Message_channelId_idx` (`channelId`),
    KEY `Message_memberId_idx` (`memberId`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- 正在傾印表格  next13-discord-clone.message 的資料：~17 rows (近似值)
/*!40000 ALTER TABLE `message` DISABLE KEYS */;

INSERT INTO
  `message` (
    `id`,
    `content`,
    `fileUrl`,
    `memberId`,
    `channelId`,
    `deleted`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '04449744-44f9-4da3-9d2d-90d9e81d30c9',
    '12d12d12d',
    NULL,
    'f72e1b35-13b5-4c90-ad4a-a6c38cfce2a1',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-06 00:00:07.991',
    '2023-12-06 00:00:07.991'
  ),
  (
    '1da2a78b-2f73-4313-a6d4-5b7afca1aaf0',
    '1231212e12',
    NULL,
    'f72e1b35-13b5-4c90-ad4a-a6c38cfce2a1',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-06 00:00:04.941',
    '2023-12-06 00:00:04.941'
  ),
  (
    '24fce9ee-9313-4db1-91eb-2f90ae4da57b',
    '哈囉',
    NULL,
    '5638d6ad-56e6-44cd-8153-d002cb83e1d0',
    '6a89c202-16ff-4e32-9bd5-30bc2fc8aee8',
    0,
    '2023-12-05 23:58:37.730',
    '2023-12-05 23:58:37.730'
  ),
  (
    '2bd77855-2318-47a7-b3d5-54dff6ab1a3e',
    '12e1ed21',
    NULL,
    'f72e1b35-13b5-4c90-ad4a-a6c38cfce2a1',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-06 00:00:06.435',
    '2023-12-06 00:00:06.435'
  ),
  (
    '36cd25fb-6b85-482a-bd31-2366b609078d',
    '測試',
    NULL,
    'f72e1b35-13b5-4c90-ad4a-a6c38cfce2a1',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-05 23:59:56.471',
    '2023-12-05 23:59:56.471'
  ),
  (
    '5736396e-9361-45f0-93a2-4b7c1a354113',
    'd12dd12d',
    NULL,
    'baa4cd57-e98f-4dc3-a386-f7ade904b2c7',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-06 00:00:13.605',
    '2023-12-06 00:00:13.605'
  ),
  (
    '6504db24-bc69-4326-951c-c1ead66ac240',
    'dd',
    NULL,
    'f72e1b35-13b5-4c90-ad4a-a6c38cfce2a1',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-06 00:00:10.340',
    '2023-12-06 00:00:10.340'
  ),
  (
    '7dcd83c6-c3b2-47ea-802b-74853d757744',
    '你好啊 ',
    NULL,
    'f72e1b35-13b5-4c90-ad4a-a6c38cfce2a1',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-05 23:59:46.835',
    '2023-12-05 23:59:46.835'
  ),
  (
    '97bc7509-6a51-48bb-aa92-34bf33cd922a',
    '123123',
    NULL,
    'f72e1b35-13b5-4c90-ad4a-a6c38cfce2a1',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-06 00:00:03.349',
    '2023-12-06 00:00:03.349'
  ),
  (
    'a844f66d-8586-44f8-ad5b-b0926398827a',
    '12dd',
    NULL,
    'f72e1b35-13b5-4c90-ad4a-a6c38cfce2a1',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-06 00:00:16.669',
    '2023-12-06 00:00:16.669'
  ),
  (
    'bb24ef91-ed24-4aea-9d58-3ae5eb2b7235',
    '132f23f23f',
    NULL,
    'baa4cd57-e98f-4dc3-a386-f7ade904b2c7',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-06 00:00:19.803',
    '2023-12-06 00:00:19.803'
  ),
  (
    'c2eb3a5d-1713-4348-b2fb-1ac8f407d2f2',
    '123123',
    NULL,
    'baa4cd57-e98f-4dc3-a386-f7ade904b2c7',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-05 23:59:59.960',
    '2023-12-05 23:59:59.960'
  ),
  (
    'c4eac9b7-3d67-49bf-9156-cc20f7e78b96',
    'fefwef',
    NULL,
    'baa4cd57-e98f-4dc3-a386-f7ade904b2c7',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-06 00:00:23.451',
    '2023-12-06 00:00:23.451'
  ),
  (
    'c57f9f4e-40aa-4d2b-a889-3293c92661fb',
    'e21e',
    NULL,
    'baa4cd57-e98f-4dc3-a386-f7ade904b2c7',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-06 00:00:21.902',
    '2023-12-06 00:00:21.902'
  ),
  (
    'd142c66a-53d7-4e9d-8520-6080659fa9d4',
    '12d12d12',
    NULL,
    'f72e1b35-13b5-4c90-ad4a-a6c38cfce2a1',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-06 00:00:09.475',
    '2023-12-06 00:00:09.475'
  ),
  (
    'da1cb625-e743-42c3-a4d9-f6e3ebd67418',
    '哈囉阿',
    NULL,
    'baa4cd57-e98f-4dc3-a386-f7ade904b2c7',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-05 23:59:41.219',
    '2023-12-05 23:59:41.219'
  ),
  (
    'ef4d901e-3ccd-46fe-8a8e-67ea894eacf0',
    '這是測試',
    NULL,
    'baa4cd57-e98f-4dc3-a386-f7ade904b2c7',
    '57860ece-b4a5-4051-a4dd-2c7398b48ccc',
    0,
    '2023-12-05 23:59:51.134',
    '2023-12-05 23:59:51.134'
  );

/*!40000 ALTER TABLE `message` ENABLE KEYS */;

-- 傾印  資料表 next13-discord-clone.profile 結構
CREATE TABLE
  IF NOT EXISTS `profile` (
    `id` varchar(191) NOT NULL,
    `userId` varchar(191) NOT NULL,
    `name` varchar(191) NOT NULL,
    `imageUrl` text NOT NULL,
    `email` text NOT NULL,
    `createdAt` datetime (3) NOT NULL DEFAULT current_timestamp(3),
    `updatedAt` datetime (3) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `Profile_userId_key` (`userId`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- 正在傾印表格  next13-discord-clone.profile 的資料：~2 rows (近似值)
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;

INSERT INTO
  `profile` (
    `id`,
    `userId`,
    `name`,
    `imageUrl`,
    `email`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '0100f364-0c42-430e-b2b6-795756071d85',
    'user_2Tx8KUVUzhoakdIHChS0kO0qYPI',
    '聖崴 黃',
    'https://img.clerk.com/eyJ0eXBlIjoicHJveHkiLCJzcmMiOiJodHRwczovL2ltYWdlcy5jbGVyay5kZXYvb2F1dGhfZ29vZ2xlL2ltZ18yVHg4S2ZER3VUTzhreVJ4YTBpMnlBeHMzZGIuanBlZyJ9',
    'qwerfcxzas1@gmail.com',
    '2023-12-05 23:56:26.664',
    '2023-12-05 23:56:26.664'
  ),
  (
    'ce598b3e-c65e-4996-9a44-daad7173bdf1',
    'user_2Z0m4PyYF2sfyr0TFMZMQtdnGju',
    '阿飄 黃',
    'https://img.clerk.com/eyJ0eXBlIjoicHJveHkiLCJzcmMiOiJodHRwczovL2ltYWdlcy5jbGVyay5kZXYvb2F1dGhfZ29vZ2xlL2ltZ18yWjBtNFFKcEVtTE05ZVVwZUtuMzZicVlScnQifQ',
    'a82k7as4466@gmail.com',
    '2023-12-05 23:58:03.997',
    '2023-12-05 23:58:03.997'
  );

/*!40000 ALTER TABLE `profile` ENABLE KEYS */;

-- 傾印  資料表 next13-discord-clone.server 結構
CREATE TABLE
  IF NOT EXISTS `server` (
    `id` varchar(191) NOT NULL,
    `name` varchar(191) NOT NULL,
    `imageUrl` text NOT NULL,
    `inviteCode` varchar(191) NOT NULL,
    `profileId` varchar(191) NOT NULL,
    `createdAt` datetime (3) NOT NULL DEFAULT current_timestamp(3),
    `updatedAt` datetime (3) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `Server_inviteCode_key` (`inviteCode`),
    KEY `Server_profileId_idx` (`profileId`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- 正在傾印表格  next13-discord-clone.server 的資料：~2 rows (近似值)
/*!40000 ALTER TABLE `server` DISABLE KEYS */;

INSERT INTO
  `server` (
    `id`,
    `name`,
    `imageUrl`,
    `inviteCode`,
    `profileId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1b2abba3-bf95-4386-bc0b-ffbdc855a65b',
    'Carl',
    'https://utfs.io/f/e0198cf8-51f4-4b78-a73d-d244bd3872ef-1d.jpeg',
    '03fecad7-2977-4804-a05b-74668fc332a5',
    '0100f364-0c42-430e-b2b6-795756071d85',
    '2023-12-05 23:57:15.887',
    '2023-12-05 23:57:15.887'
  ),
  (
    '75ed51e9-b761-4716-ab79-8e9de3e0e078',
    'test2',
    'https://utfs.io/f/767a1286-bda0-44dc-bc7a-0d5b2d580868-1f.jpeg',
    '7866469c-1dff-4931-9f1f-850ee292e9fc',
    'ce598b3e-c65e-4996-9a44-daad7173bdf1',
    '2023-12-05 23:58:21.016',
    '2023-12-05 23:58:21.016'
  );

/*!40000 ALTER TABLE `server` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;

/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;