# ************************************************************
# Sequel Pro SQL dump
# Version 5126
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: rm-uf65og46sp40h34lqgo.mysql.rds.aliyuncs.com (MySQL 5.7.26-log)
# Database: plus_3c_dev
# Generation Time: 2021-06-06 04:37:19 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table account
# ------------------------------------------------------------

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(10) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `img` varchar(1024) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `account_no` varchar(20) DEFAULT NULL,
  `account_name` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;

INSERT INTO `account` (`id`, `merchant_id`, `type`, `status`, `img`, `bank_name`, `account_no`, `account_name`)
VALUES
	(1,14,2,2,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/4/e/604037602f02645c5af69e6ek6g27zrj.png',NULL,NULL,NULL),
	(2,14,3,1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/4/g/60408673bc2fb616fdb86d08g55xyh8m.png',NULL,NULL,NULL),
	(3,14,2,2,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/4/1/60408687bc2fb616fdb86d09yzcx3vib.png',NULL,NULL,NULL),
	(4,22,2,1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/15/2/604f00450909b63c4bc5558cxbdw9ok8.png',NULL,NULL,NULL),
	(5,23,1,1,NULL,'永远滴神的银行','61241271825971990000','宇哥永远滴神');

/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table address
# ------------------------------------------------------------

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `name` varchar(300) DEFAULT '',
  `created_at` bigint(30) NOT NULL,
  `update_at` bigint(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;

INSERT INTO `address` (`id`, `user_id`, `code`, `detail`, `is_default`, `mobile`, `name`, `created_at`, `update_at`)
VALUES
	(1,1,'110101','三里屯',2,'18336793750','张卫正',1614824001068,1614824068612),
	(2,8,'110101','是就是咯我问问',2,'15021129897','郭晶',1615011859569,1615011859569),
	(3,7,'110101','在',2,'18303800683','张卫正',1615167036926,1615207511081),
	(4,5,'410184','华南城',1,'15182245237','余晋',1615182995618,1615254537903),
	(5,6,'110101','sanlitun',2,'18437929292','hyt',1615184530976,1615189380738),
	(6,6,'120101','三里屯',1,'17703854720','胡永涛',1615187170916,1615255968106),
	(7,5,'210102','和平区33号',2,'15182245237','余晋',1615204020910,1615204076277),
	(8,7,'410105','北三环',1,'18303800683','王二娘',1615207576091,1615250427104),
	(9,5,'110101','11111',2,'15182245237','111',1615209068141,1615209068141),
	(10,11,'410184','迎宾大厦',1,'18538381813','sun',1615260742276,1615260742276),
	(11,4,'110101','龙湖镇',1,'18336793750','赵孟宇',1615292832330,1615292832330);

/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(16) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `img` varchar(1024) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `signin_at` bigint(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;

INSERT INTO `admin` (`id`, `mobile`, `name`, `password`, `role_id`, `img`, `status`, `created_at`, `signin_at`, `email`)
VALUES
	(2,'86-18303800683','张卫正','5ef559e547f203e01af788fb60693a3382513c1dbbcbeb83f3b02c6c1089ecc9',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/kugou.jpg',1,1608029997506,NULL,'2387098750@qq.com'),
	(3,'86-18336793750','赵孟宇','5ef559e547f203e01af788fb60693a3382513c1dbbcbeb83f3b02c6c1089ecc9',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/2/7/603dbb3e47318139a0d08fa3w7ln34w4.jpg',1,1614658371083,NULL,'1174213620@qq.com'),
	(4,'86-15182245237','余晋','5ef559e547f203e01af788fb60693a3382513c1dbbcbeb83f3b02c6c1089ecc9',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/2/1/603dd315b588f697ac2b339ckq1690bq.jpeg',1,1614664472562,NULL,'774265230@qq.com'),
	(5,'86-15021129897','测试','5ef559e547f203e01af788fb60693a3382513c1dbbcbeb83f3b02c6c1089ecc9',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/5/604324023dff57183c44ab693gohuzr6.png',1,1615012957970,NULL,'WQ@qq.com'),
	(6,'86-18437929292','胡永涛','5ef559e547f203e01af788fb60693a3382513c1dbbcbeb83f3b02c6c1089ecc9',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/4/1/7/606578004d011413d12c468azlmjl9h7.jpg',1,1617262598152,NULL,'2361622359@qq.com');

/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role`;

CREATE TABLE `admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `permissions` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `admin_role` WRITE;
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;

INSERT INTO `admin_role` (`id`, `name`, `permissions`)
VALUES
	(1,'超级管理员','[\"ADMIN_LIST\",\"USER_LIST\",\"ARTICLE_LIST\",\"ROLE_EDIT\",\"ROLE_LIST\",\"ADMIN_EDIT\",\"USER_EDIT\",\"MERCHANT_EDIT\",\"MERCHANT_LIST\",\"SCENE_LIST\",\"SCENE_EDIT\",\"SCENETYPE_LIST\",\"SCENETYPE_EDIT\",\"CATEGORY_EDIT\",\"CATEGORY_LIST\",\"TEMPLATE_EDIT\",\"TEMPLATE_LIST\",\"BRAND_EDIT\",\"BRAND_LIST\",\"ARTICL_EDIT\",\"ARTICL_LIST\",\"PRODUCT_EDIT\",\"PRODUCT_LIST\"]'),
	(2,'测试组','[\"ROLE_LIST\",\"MERCHANT_LIST\",\"SCENE_EDIT\"]');

/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_session`;

CREATE TABLE `admin_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `token` varchar(64) DEFAULT NULL,
  `signin_at` bigint(20) DEFAULT NULL,
  `expire_at` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `admin_session` WRITE;
/*!40000 ALTER TABLE `admin_session` DISABLE KEYS */;

INSERT INTO `admin_session` (`id`, `admin_id`, `token`, `signin_at`, `expire_at`)
VALUES
	(1,2,'ljCInvSY3y1PU0Kc74N3VhEOlmdUl5vzqd03Q1ETedlIjQGlwc8ac1vlvgZbN2qE',1614604801839,1614691201839),
	(2,2,'PjrFaabADZiuWW4csDtyPpdp0QtOcjBJGknKdbX3eivyYifW0qlZxjfpD9dalXwO',1614646543976,1614732943976),
	(3,2,'im33r4frF3F51nqAy5rVrFSkk5ux9xWUVn2tjgRPiuUTMCODwrphHvHD3SjqDekX',1614653569433,1614739969433),
	(4,2,'tIWzP7mF1msWD5AORVUznh0wfLqtt4HLmVZ4PUqMVSBAQZM5sCYJIwcbg0BZ6CZZ',1614662805438,1614749205438),
	(5,2,'jcUhsBoicNOwUjjeQU8e6MzCQN1Iee0EljMTyjvAEEOsO9yXrJqaJsVr5YXOyU3O',1614663044225,1614749444225),
	(6,4,'8nVHxqBprpyTm7MvgzaZlioDMz7OlYKu821tt0xs0Gd64ap2pmJvl7QDsBPDbeZi',1614664682525,1614751082525),
	(7,4,'E7qsbV7lBxOfq9zvyjPBKYji35qGEBlbpb8QNeUQjLEMOGugidpHZR0Zi9NTxmCQ',1614670262279,1614756662279),
	(8,4,'ED3I4nn566MvR4CGEuW7jMCpyOhuLPLMNClGkArAfhJAD6MMIXOLx4uxKBfg5LMI',1614684899617,1614771299617),
	(9,2,'zdG1jWuETkB6qMNfsFJ4X1XN0v8wOzoZSK6LAfSjDaUUal90myVAYlYMTCfAicbR',1614764160430,1614850560430),
	(10,2,'UpE4CxDKnYyHQxAS4s1ZcYNEF8YaNragnK1EYs7zLwzqHyCGk3yarAix9Lkrzcxd',1614764273145,1614850673145),
	(11,2,'rl3FRsqnodWnUnWi4NUl9SQBTdplrADvRP1yTKv9rlE9fyJu5YfZR3yoBIsBZcFG',1614765001538,1614851401538),
	(12,2,'mP5n3x3AO9IhqXnPZdVyYRMZBdV76Ita9kSd04PobmNn0q29txxDgRbaFmMHGKJB',1614765561762,1614851961762),
	(13,4,'uFToImgOsteimOFy6qYm6OUa32EMRXuiGwgur54X2ktmwUPFYrhIAOXwT3pAwcjC',1614768774345,1614855174345),
	(14,4,'3vaweupW9bw9oKtLEh5dI1TyNlFRRjj8FcTUhN3crM0V2rZiHoKLRT1wEA6iAoR9',1614769980130,1614856380130),
	(15,4,'bK660DK5pMmQxkHQsSedlBNho2MqswOpKcL2JLV078waJyeLQcSaYUY32fjj1Tfs',1614906313894,1614992713894),
	(16,4,'PuFOq444G431JKXGBIrpij0yrj58XTIwIermU7uT9I2oODJjHkCk4jvPMNypjtQr',1614908978325,1614995378325),
	(17,3,'Yv1GVE622LkfxcUtNPALuUTwdBE5TDBZK0jnCHrLkhpSt08LKf9oW5icw7kSSXp5',1614910174412,1614996574412),
	(18,4,'FebrdAX28MNrlNVdjqXSiBxvdmn5iWAULiLM9KBcC6P6IC9BEOGgGOljP7iWcsGH',1614913811306,1615000211306),
	(19,2,'o629f9f38shbt2564QFFLFaYw9DcLbVsjUkR95WqtxxKG4GZzdtkPze0Ihoy6GR2',1614949431775,1615035831775),
	(20,2,'Tt2lsxoCbaPLRFH9Wl1bi0F4kCFSkA23OBZofqSmeVjvb0ti7YWXjvTUmxDPgIbG',1614950621139,1615037021139),
	(21,2,'wcXDRKEe6im0PqomUtP2aD3k3RskKIFz51JYxxrCdHqMkHFWwDn8gxzDxsA44FNd',1614993490652,1615079890652),
	(22,2,'wgfZY5bfjUiicwcuD5lVaDAuf7LSf5cse3v9ve9ASrhWl1JPqJZu3cJnQmQfefdO',1615011963150,1615098363150),
	(23,2,'9fU1rsLfVHpHEgK6gHjqSyqVP4tsTuGbSMrRWs1Xv3iOelpAFpQ2ZfKVGzHB1R0n',1615012754134,1615099154134),
	(24,5,'lTVmbGFEdp2LrV0SLC5GCY5USP2FXP9jETpm8Efp4OF8QMP1sZQarQgp0qE4VaYK',1615013033381,1615099433381),
	(25,3,'oSOl1v4US6f5mokAio6IVOIBNWUhyDcRaC9j6v00BNo2ArRzOwJTBdQp5JsCbSmB',1615013189506,1615099589506),
	(26,3,'Mq8nKFfETOkusX6i00H8xw5edy7kSpB0vUEDszbFJry8C7WPvNQrpJ2Xw3QK8IZA',1615166016742,1615252416742),
	(27,4,'AplJSN0i6d3DORncz4gKy9DWHJkwKRavhYkvq12hkrfWHvsAxPDGZGG54xjRqngr',1615172701406,1615259101406),
	(28,3,'uPyfbdXKmk9UPkZJcP9Ee337ejjfMHEFweza2oGPZKdZfmIzwE36eJQDlxiPiwbJ',1615184384877,1615270784877),
	(29,5,'gkqGAFLyAbjZEVDEsEbbeQkZXnupjGFI8e0y9YPliaRWWqI3Ju2B3YFoxbrcH2zo',1615184759346,1615271159346),
	(30,2,'0DugPdJaxHKHF1wx0X2EucC6bT6kBWd5XJkSPbgjDsFN4paWaB00ZXCXuMZ42xL6',1615185161290,1615271561290),
	(31,2,'XaWxL1REDtqMjAvnv3zNAnrZetbWf0uphnGsB4zZ8xywbN7ex6UYeYZ8wYZ1OgWV',1615188989133,1615275389133),
	(32,4,'J4zRZYN9SCDUykA7g91IyUHfOURxenSnRBBUU6V22C3vFRnlGNpUNf4OWkO7NPPO',1615192128897,1615278528897),
	(33,3,'jXKfkkHlyef4CXFEf8BrPWo2Z2LqAoMgYXqmb76qJhmKAbpQahWID7xW8NuBpXii',1615193589832,1615279989832),
	(34,4,'raaWASxzffHXiVQ7aXGR0o5p6V6B675ay1yAhZqRDCvqZJZTxeZVTCaiQ5RSxdlQ',1615260068229,1615346468229),
	(35,3,'St4dI5XledSAqMU6ZN6QL5dbf1jgrqFOG2otJJs0v1vDQw5wuJQzianr7TcJzNYh',1615271303273,1615357703273),
	(36,2,'WnTgxEvP8kzLkbmgzAbFslYpQn772JIXH4RV49HmRZNQxKKvh8ywloFHnBOF5EHJ',1615271600752,1615358000752),
	(37,3,'k9mtkjAZcVKzgAdhGcdx4VOgdAlJQxfs2stCgMed5fL5lPCUnNEbCOQnjdVjXzCr',1615281355214,1615367755214),
	(38,2,'l638lCkrLKdGW0OAi3jlLjCog9F9yLL8nCIJBAcRXpjWiZBsNDKAkPTpGpYhIBEp',1615336864588,1615423264588),
	(39,3,'0qnD3P5Wbq1JAxrCqf7TVC3xSkfuEG0Tk0PGvzVPEctB1bFIbY1TzWP28vaxFvyj',1615364060408,1615450460408),
	(40,3,'mKvwkOvGueP4IBu2TwihP9Pbc3QrEX577AFkJGDmaGMRIDjW50fEThwEz0wVht8d',1615511606269,1615598006269),
	(41,3,'4D6Zi2AmVbnhKIOlHFQ6CuakHFOUvToCmpyyTBIvUE4WltEBJ5x4hNDyKxyey2ew',1615516677378,1615603077378),
	(42,4,'3DIkhI76dXbzhfhOWblLPE4c39MjHDMjPlp63VlkovXygeIteRLmhZxkiOaxRXV6',1615519440741,1615605840741),
	(43,4,'BARn9tegOrRInsW0BukGXs6SHnXsVWEEzSWdMijFH9jZqe3TvNKsup5iRh3voioJ',1615519446366,1615605846366),
	(44,4,'k2uMWkCUe2Yk3fImrRu6E3tMchPRgYAr9jGWIo5AyIMhPnLIKiU3HLOnlkiZHj5B',1615519665770,1615606065770),
	(45,4,'Zile7hxSAL3vxg0o6H1qgyuwKfYVK2XZgApBeRk55loY3b9euLGKc1QRxx63WFjt',1615793033256,1615879433256),
	(46,4,'3YIam3wKEzZJUh7pd94e0HXXWGuXitASsmy2bTGDJZYLYxRbtTLNHFHmDpD1K4Fh',1615808869391,1615895269391),
	(47,4,'uXe8LiiSFyhT3YLoC4fHLhqYCjKgcFiAWM5JL6mmaoJTpTmrJvSUuZFdTkASEbSn',1615811620656,1615898020656),
	(48,3,'yGb85eiKWiVJqCnGApdIujHE9x4Dh0nuP3bStO33pExvskNXE3Bm3akJBp8s8lla',1615895344060,1615981744060),
	(49,3,'1Mmod1xCgcBDNM3Ickm4f7uzyOOy2TOKhsxR4j3EpzexrXg0oFDR2Q2lkRjHI6nA',1615895345833,1615981745833),
	(50,3,'LFTNC8Kivcvcf9BTZESwaeGNJXQZKy5mcWvzJwqSyK2Ur70pTs44oAoBOAz8NwV1',1615895356935,1615981756935),
	(51,2,'5G5BNuUJ4I0rQcMlVE2Tshw1c5fq71G4m8oVMLurcEXBucGitOOPNe7OAseysoPV',1615944815708,1616031215708),
	(52,4,'zlyhjuTQSepAf1oZLt5lRQbaVC7jzutURgcepS4GMnqtXsuM5vdmrTtGuSuhzvbz',1616216268904,1616302668904),
	(53,2,'313NphLhsKbjlw5LJm6EosHMjhAZYoJofbBM9TOdIOB2dzK1V6ACOYc63V7ZTKa3',1616548891247,1616635291247),
	(54,2,'LVtpSV8ME7mMInPkgTlkspFOOMUPKNl3ejLSCdjh0JlI23h5b7R6N8udChEYZwUw',1616747713220,1616834113220),
	(55,3,'1rdVIenmnIT0MFzmdRriDUY1afILlFTMj3RiUWblKLUsPqD6qCJJtZEo4B4Rh8fQ',1616754396878,1616840796878),
	(56,4,'rMhHQeHdG3wT4RzadKU6vV5kbOuWMuR9oWv18QficnXnAbukCbdfttIpzccF4jbV',1616994161460,1617080561460),
	(57,3,'CFmlBlK7EpuSycBU3M5ckXzwjxhjqd5rXT1KdjZPl8KgYREAyH4Fx2Jb8PuMt2t4',1616997743094,1617084143094),
	(58,2,'LEMjTFrDR7WlnQPYqj8Fx6XLBpnnPHdZELRqzMc7IWD7tY88PhMSPd8rklEaIc4b',1617020656442,1617107056442),
	(59,3,'IdMSz8lRVQbV17HMpVLI5bONKvJwSl6iFVP1fcOV5tg4pvhmcgm3BEUmwi1ACAKY',1617021254180,1617107654180),
	(60,3,'2MOBOqTzY5EKeLTcm4btPsmfDxR0PAU9mWWjIM6j0q6cwH9oi5wnv5BhZWAGSaZj',1617095790127,1617182190127),
	(61,2,'re6D4U5B1CTnFhL3XfNgGHIhxNchH8QXU1wK35uhneXpauxOjhr9YCnGFfLnkU39',1617190211245,1617276611245),
	(62,3,'U4KEf1ayIVKHPuJydYXOansGfeXTvzKtCynZEG2qJMOrTxsW6L0ynjrsncKc8pYt',1617258755789,1617345155789),
	(63,2,'uhzm2PolIrACK70hZYUS3mrHxkWY4sBm1T7FWNzlQIdjVhvbOdPycFRcNgydfNG2',1617418377298,1617504777298),
	(64,6,'xroJRdr07JLZGfjQawOdQ31xAkEMu9mPGjnS8mLeitwg6DzSbHHHv5s2W2eFrKZI',1617589313729,1617675713729),
	(65,6,'ZYYVJHwUJ8RgZ6JWxLbeolKeo0Mo7wGwVFIVxMLu5FOPIDdmAGr8RZUEMXeFZ1IS',1617690462079,1617776862079),
	(66,2,'fh81yGQEzkCAyEOQ8tu1Z87aXJJK1ZfrJJhMf07682MoBroURMesOGMmbCzBS2sP',1617697258184,1617783658184),
	(67,3,'HkoUBcneAmNa6HTfikJXkLgKq0uF87ljfo57VMFsBrAkAzJvbp3h5NC53pX0ZgMV',1617698659338,1617785059338),
	(68,6,'f5of0FJKkJrYomKf0OvDE6hkSKBKA7B1YdSTMo2bmt85f9N9FL9G5nFF4ltDwoPO',1617780353110,1617866753110),
	(69,6,'SSMr9XM22rpFjOcqV21M2FiNOEIe7ScawGzCjRtgJe8wetLnVHAsWmJ7LQaT3qgN',1617780418652,1617866818652),
	(70,6,'m4H7glBG7fQqlObGHXPBmEljQLiiAxyTVITEH27d2n60t7GtzrSLXG8hZdkI2YsA',1617780420711,1617866820711),
	(71,6,'OAaeCuSmT0PyvROsH2X2dRlr8qOleSC12acWZn5HfNBIr7MfFQllNXQ6utFpTWIl',1617780420981,1617866820981),
	(72,3,'T8PNFSkd0ggy47eKoGIV6SDrxpdkgwXPnYkcdX5RX49peQJqiji7gmcRYHuovIMm',1617780422731,1617866822731),
	(73,3,'DGnpYntHl5j6oPxnOZ7WGzprvBpQY3LeBXipDGR6RRLD7uJDiA17oT0xpmkBLNWV',1617863766369,1617950166369),
	(74,6,'0DA1CrhoKXkze4h27Z0YcjPs4GKlGRTK02bc1226oqYcffNg5P7TnApwE3wFmAgl',1617870837605,1617957237605),
	(75,3,'r2e7GIEzC4gzXOxOfu4VzNVWnrcDHJofEZ2SgnwGR8iPw1yEge7wX7OyTRzLOT0B',1617933483771,1618019883771),
	(76,2,'09nwall6ZOFvwmtZF2mApU10AQQypkNI9SOruFiCpho8zzdm2agi4SILsS2R7825',1617934209549,1618020609549),
	(77,6,'Yum271aEEFjTCw5u7iMb0QLygdEo5390VzuqDBLbgquGIWy4z0ZXFDXJiANwQRlP',1617963380440,1618049780440),
	(78,6,'9OTOBTkKxCKs5YGoukvB0qLbGOfbOqSZfEw1k7AtNsmBsZuSIdObH7An3A2wUEep',1617970374189,1618056774189),
	(79,4,'wVdzF5XFoIGBOlasw5gfeTExplJAxrcqIC2hnwCBhXXwAWIh5pK4XNRvx8OHrKZR',1618303732010,1618390132010),
	(80,4,'werf1b9F3gmlwlqgdmk1mAyY3Z3FGLfDYXviOapvFa0uW8QDkND1jPducfebRRIf',1618303948897,1618390348897),
	(81,6,'ypZ34HnKsRaL3fyOH5B2AWrfGsgy5Cfp27nHYpvPSFNLnnwaLFw7GkA6Qk9FBRj4',1618406223053,1618492623053),
	(82,6,'zlb7tKZh731JP9obmRdqq8f3EA2G2n8og9gAS4Yub4mDgEBj9rCrF6WxkeOHdy7O',1618485899486,1618572299486),
	(83,6,'MsHiH1IVRxKoA7MmfLCFGh34nRQy8dCK8y1DbE6pZszkZFxAu80Zhj8Opi7bXBpi',1618536764428,1618623164428),
	(84,2,'o5BXS9Beddf9k54P1UqdmRGG0bOSuSYNdMoKAFxDlveHRDh8G3gRHBCXh9TYzXNB',1618975433761,1619061833761),
	(85,6,'0sKMasFLqdgi5l9N98AY3NxgocfB6LanexUYdMkvV4ArRItePR5tThtMLzdiq9gY',1618990382102,1619076782102),
	(86,6,'btM0fofHNLV7o7NLHBXeNwTYfAcCJrQqa1UDIwgph2za2c9IjJ78XNRTFTrzuAz4',1619313160812,1619399560812),
	(87,3,'x9hrZLjBuqEXViVYFjXqy3mcWuwoY7mBjlQl006pvEncPlhqHM12dJhp39Q2onHJ',1619421827317,1619508227317),
	(88,3,'bl7jEUPysrlKb1xrRpPCNHSAQCTmsqiveguaMm7owJHjH9lk45h5GKXbMlVBBdez',1619512375705,1619598775705),
	(89,2,'gWCEziRFECQc0MXpI88BEucVtjHpCC0xMIcIFg3FTNMUyEy30O05KjCKfJoL8QcY',1619574827990,1619661227990),
	(90,4,'homppHX8IFmSrBsie20w1HVmc5ivsivFHiKWrexehR8DOUmr2QBuQggDmWzQn2E2',1619602038288,1619688438288),
	(91,4,'SuNczNJqVUAX9aEfYnwOFlr1vBffsa4Pwr5MZJIIs6jdFtSQwTmnjODoOmcr9n9c',1619602575660,1619688975660),
	(92,4,'6tQlTYQakT61ztWT7nhjEjgdNwo6lGI7oHY40OGrNnBZysHRUBRghheMa4bgKv6e',1619602597758,1619688997758),
	(93,3,'b7xfinod3hOPKARHWG9UipsEPbKOv9DHkcR76Iy1qWtPw7RjbZb1sR2r2JjZcEWJ',1619668355550,1619754755550),
	(94,6,'2lV0x37KFEHOI1AwgwJkkNZHWKEvrjmFeKIWmRIpD4fsUUPVWtHGxQ4mZbScmFyx',1620804841148,1620891241148),
	(95,2,'WsbOrgSrbFJoG4qNqVInQkK9aBsUMBXgrPT4nNzuj021UR7VOAyXayUKGbYD0t2x',1620810268352,1620896668352),
	(96,2,'emeL6BfC1j9irzbNeeFa7jiItHlPP5mwCxYvyWjdbpSU28qn7BMk91QRuTcVjbbb',1620899708557,1620986108557),
	(97,2,'8SzZfwP28ukB0doT5x2ruy3uABZfNxlMSVDqlfU1JWS2vlld4QDn0JuhSYDfOckS',1620902251912,1620988651912),
	(98,6,'17izEd51V8dJ6cGKj7MTVGFiW5dp8cLz7tEKoDF2dJLwHfUle3e9tUVnlNB9lJLH',1620959587839,1621045987839),
	(99,3,'8cDvmKmuJIGM6KnpH8TRFmQVoidwg6u79mq63S6qEVnwkrXBS1f0CvfiZKfagUgh',1620962249279,1621048649279),
	(100,3,'XgxAf5dfxvWOhtL94eWZc5YakgTx8NucFxhFcVwNFXs0YxKCASoV6yy8emgKBe3k',1621241375666,1621327775666),
	(101,3,'ZzqYHtISlzbUypRmE1tDGk8Xtl6R5ZkEEeC5tfQHWgw87m6HbbJM3PCaSJ5cxqTB',1621482586573,1621568986573),
	(102,6,'vs5ejwUukRCVNP5rFzIgeUxgcVX1vn7hIqwyHi4A28RepB5Xu0wtkmT2NCMna6dV',1621517416727,1621603816727),
	(103,3,'f1ayfXqcbdwZpcUwJEjZlGeOyw1QazpQVmakmlkfXUwETQTI2meJ7Z9rky6SosOl',1621577998817,1621664398817),
	(104,2,'hJFHLqLJN8OKy1KuYN06nA5uTEy3d1clu59h0Qi4g4Ndc07vcwi6ZsawC0xVSJWW',1621907303678,1621993703678),
	(105,3,'UeEumjW1bTbpqPg0tT4lCIGRbIdvN8rkFcVAjNJ9WNHkc3y6W2eDvgbwoAo4mTe6',1622448567281,1622534967281),
	(106,2,'KuIkeGHgh8BJNQi4dWPpQ2VM0EKMhDKAcFTO7JU766NPRfSF9PFlaZGPEpRxkBlM',1622450821619,1622537221619),
	(107,4,'RBifnCzAc9BvJyBAz7ugjgu6LtmUGkIgUj531g1Qn05IGwsOfvo2Cc1DVECxIdE2',1622452843488,1622539243488),
	(108,2,'Q9F4tpLvRfQPx11T9IO5YUSQo6f5yau9HGtEDeurqRgNCxwaaBBTLeAxRXNwIuzs',1622461958115,1622548358115),
	(109,2,'fjbYSZKmhiTtLOXajB0gJ81T4ChuP1OzepsfnW8rXNSsLGs6cMS31psOJXO0wg01',1622464247994,1622550647994),
	(110,2,'jY8i2NoTXAL7jfa89lM3NMZM1s8F4QB01efPAS9sKeUc0fTUKR147WtTqWI4AvJJ',1622518907040,1622605307040),
	(111,2,'bDHLomo4iYDsqp31W81eAFvnLIWWSZ0vIkmuVOrpZCv4sYZuGadPRf5EkJGlO4q3',1622541148192,1622627548192),
	(112,4,'ZZ31Dqdn5TpWgBfCRRPv7rzWjudtKWblKvvG7Naj1dhSlsTPqnbgdQN7kGvyzHgO',1622602617137,1622689017137),
	(113,3,'Gs857RC80JyfJOSpk952M1mnkH3C69ocJ6fkSE6M8EVBntbpoyioVVet71qqIIkE',1622692672961,1622779072961);

/*!40000 ALTER TABLE `admin_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `created_at` bigint(20) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `page_view` int(10) unsigned NOT NULL DEFAULT '0',
  `picture` varchar(500) NOT NULL,
  `intro` varchar(500) NOT NULL,
  `collect_num` bigint(11) DEFAULT NULL,
  `support_num` bigint(20) DEFAULT NULL,
  `author_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_title` (`id`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;

INSERT INTO `article` (`id`, `title`, `created_at`, `status`, `page_view`, `picture`, `intro`, `collect_num`, `support_num`, `author_id`)
VALUES
	(1,'测试文章QQ王',1614948696694,1,1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/g/6042281c04abb65c9f83543dafzn274q.png','测试文章简介测试文章QQ王',1,1,4),
	(2,'文章测试2QQ王',1614948790993,1,1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/5/604229a804abb65c9f835440ge5s3zl9.png','我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是测试文章简介',1,1,4),
	(3,'文章测试3QQ王',1614948828628,1,1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/5/604229d704abb65c9f835441rav5j4au.png','我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介',1,1,4),
	(4,'文章测试6QQ王',1614948865115,1,1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/n/6045e4136baaf92be98f79361z0myunq.png','头一次见这么舒适的卫生间布置，原来大家都是这么做的，头一次见这么舒适的卫生间',1,1,4),
	(5,'厨房配置十大技巧',1615174724434,1,12222,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/l/60459c394900966ad9e5d7a8ip467ogm.png','厨房配置十大技巧让你的厨房闪闪发光',0,0,4);

/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table article_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article_content`;

CREATE TABLE `article_content` (
  `article_id` bigint(20) NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `article_content` WRITE;
/*!40000 ALTER TABLE `article_content` DISABLE KEYS */;

INSERT INTO `article_content` (`article_id`, `content`)
VALUES
	(1,'<p>今年2月</p><p>知名音乐人赵英俊、演员吴孟达</p><p>先后因肝癌离世</p><p>也让大家再次重视起肝癌这一疾病</p><p>吴孟达从发现肝癌到去世</p><p>中间只隔了两个月</p><p>大多数肝癌患者被发现时</p><p>已经到了中晚期</p><p>对于肝癌</p><p>我们该如何早发现、早治疗呢？</p><p>我国肝癌发病率高 为第二大致命肿瘤</p><p>统计数据显示，中国每年新发肝癌约40万例，占到全球50%以上，2020年，肝癌成为我国发病率第五的恶性肿瘤。此外，肝癌也是仅次于胰腺癌的第二大致命肿瘤，5年生存率不到15%。</p><p>医生表示：肝癌早期缺乏特异性的症状，比如上腹比较饱胀、食欲不好等一些非典型症状。早期症状比较隐匿，很多病人发现的时候都到了中晚期，治疗比较棘手，晚期一般生存期在三到六个月。</p><p>高危因素：肝炎病毒感染</p><p>长期酗酒、黄曲霉素污染等</p><p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/e/6042293504abb65c9f83543e38rgpsjl.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p>专家介绍，肝癌隐匿性较强，但并非无迹可寻。一般来说，肝癌有&ldquo;三步曲&rdquo;：乙肝、肝硬化、肝癌。哪些人容易患上这一疾病呢？高危因素除了肝炎病毒感染外，还有长期酗酒、肥胖、黄曲霉素污染等等。</p><p>第一种是有乙肝、丙肝这类肝炎病毒感染病人</p><p>第二种是经常酗酒</p><p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/b/6042294004abb65c9f83543fl765yxgd.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p>第三种是有非脂肪性肝炎、肝硬化的病人</p><p>第四种是经常食用黄曲霉素污染的水源、食物</p><p>高危人群半年内应接受&ldquo;防癌体检筛查&rdquo;</p><p>与一般人相比，有乙肝病史者患肝癌的风险增加10倍以上，食用霉变的玉米、花生，也有致癌作用。目前，肝癌治疗的重点是&ldquo;早发现、早诊断、早治疗&rdquo;。医生建议，高危人群应每3到6个月到医院接受一次&ldquo;防癌体检筛查&rdquo;。值得关注的是，随着医疗水平不断提高，部分晚期肝癌患者可以长期生存。</p><p>尽量戒酒戒烟，酒精对肝脏会有很大的损伤；部分肝癌病人，后面会出现肝硬化、消化道出血，这部分病人要注意饮食上清淡，吃一些容易消化的东西，粗糙的一些食物容易引起出血。</p><p>小编提醒</p><p>大家在饮食上要注意清淡、新鲜</p><p>少吃辛辣、油腻的食物</p><p>在生活习惯方面</p><p>避免经常熬夜、过于劳累</p><p>情绪上也要尽量保持乐观</p>'),
	(2,'<p>今年2月</p><p>知名音乐人赵英俊、演员吴孟达</p><p>先后因肝癌离世</p><p>也让大家再次重视起肝癌这一疾病</p><p>吴孟达从发现肝癌到去世</p><p>中间只隔了两个月</p><p>大多数肝癌患者被发现时</p><p>已经到了中晚期</p><p>对于肝癌</p><p>我们该如何早发现、早治疗呢？</p><p>我国肝癌发病率高 为第二大致命肿瘤</p><p>统计数据显示，中国每年新发肝癌约40万例，占到全球50%以上，2020年，肝癌成为我国发病率第五的恶性肿瘤。此外，肝癌也是仅次于胰腺癌的第二大致命肿瘤，5年生存率不到15%。</p><p>医生表示：肝癌早期缺乏特异性的症状，比如上腹比较饱胀、食欲不好等一些非典型症状。早期症状比较隐匿，很多病人发现的时候都到了中晚期，治疗比较棘手，晚期一般生存期在三到六个月。</p><p>高危因素：肝炎病毒感染</p><p>长期酗酒、黄曲霉素污染等</p><p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/e/6042293504abb65c9f83543e38rgpsjl.png\" class=\"fr-fic fr-dii\"></p><p>专家介绍，肝癌隐匿性较强，但并非无迹可寻。一般来说，肝癌有&ldquo;三步曲&rdquo;：乙肝、肝硬化、肝癌。哪些人容易患上这一疾病呢？高危因素除了肝炎病毒感染外，还有长期酗酒、肥胖、黄曲霉素污染等等。</p><p>第一种是有乙肝、丙肝这类肝炎病毒感染病人</p><p>第二种是经常酗酒</p><p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/b/6042294004abb65c9f83543fl765yxgd.jpg\" class=\"fr-fic fr-dii\"></p><p>第三种是有非脂肪性肝炎、肝硬化的病人</p><p>第四种是经常食用黄曲霉素污染的水源、食物</p><p>高危人群半年内应接受&ldquo;防癌体检筛查&rdquo;</p><p>与一般人相比，有乙肝病史者患肝癌的风险增加10倍以上，食用霉变的玉米、花生，也有致癌作用。目前，肝癌治疗的重点是&ldquo;早发现、早诊断、早治疗&rdquo;。医生建议，高危人群应每3到6个月到医院接受一次&ldquo;防癌体检筛查&rdquo;。值得关注的是，随着医疗水平不断提高，部分晚期肝癌患者可以长期生存。</p><p>尽量戒酒戒烟，酒精对肝脏会有很大的损伤；部分肝癌病人，后面会出现肝硬化、消化道出血，这部分病人要注意饮食上清淡，吃一些容易消化的东西，粗糙的一些食物容易引起出血。</p><p>小编提醒</p><p>大家在饮食上要注意清淡、新鲜</p><p>少吃辛辣、油腻的食物</p><p>在生活习惯方面</p><p>避免经常熬夜、过于劳累</p><p>情绪上也要尽量保持乐观</p>'),
	(3,'<p>今年2月</p><p>知名音乐人赵英俊、演员吴孟达</p><p>先后因肝癌离世</p><p>也让大家再次重视起肝癌这一疾病</p><p>吴孟达从发现肝癌到去世</p><p>中间只隔了两个月</p><p>大多数肝癌患者被发现时</p><p>已经到了中晚期</p><p>对于肝癌</p><p>我们该如何早发现、早治疗呢？</p><p>我国肝癌发病率高 为第二大致命肿瘤</p><p>统计数据显示，中国每年新发肝癌约40万例，占到全球50%以上，2020年，肝癌成为我国发病率第五的恶性肿瘤。此外，肝癌也是仅次于胰腺癌的第二大致命肿瘤，5年生存率不到15%。</p><p>医生表示：肝癌早期缺乏特异性的症状，比如上腹比较饱胀、食欲不好等一些非典型症状。早期症状比较隐匿，很多病人发现的时候都到了中晚期，治疗比较棘手，晚期一般生存期在三到六个月。</p><p>高危因素：肝炎病毒感染</p><p>长期酗酒、黄曲霉素污染等</p><p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/e/6042293504abb65c9f83543e38rgpsjl.png\" class=\"fr-fic fr-dii\"></p><p>专家介绍，肝癌隐匿性较强，但并非无迹可寻。一般来说，肝癌有&ldquo;三步曲&rdquo;：乙肝、肝硬化、肝癌。哪些人容易患上这一疾病呢？高危因素除了肝炎病毒感染外，还有长期酗酒、肥胖、黄曲霉素污染等等。</p><p>第一种是有乙肝、丙肝这类肝炎病毒感染病人</p><p>第二种是经常酗酒</p><p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/b/6042294004abb65c9f83543fl765yxgd.jpg\" class=\"fr-fic fr-dii\"></p><p>第三种是有非脂肪性肝炎、肝硬化的病人</p><p>第四种是经常食用黄曲霉素污染的水源、食物</p><p>高危人群半年内应接受&ldquo;防癌体检筛查&rdquo;</p><p>与一般人相比，有乙肝病史者患肝癌的风险增加10倍以上，食用霉变的玉米、花生，也有致癌作用。目前，肝癌治疗的重点是&ldquo;早发现、早诊断、早治疗&rdquo;。医生建议，高危人群应每3到6个月到医院接受一次&ldquo;防癌体检筛查&rdquo;。值得关注的是，随着医疗水平不断提高，部分晚期肝癌患者可以长期生存。</p><p>尽量戒酒戒烟，酒精对肝脏会有很大的损伤；部分肝癌病人，后面会出现肝硬化、消化道出血，这部分病人要注意饮食上清淡，吃一些容易消化的东西，粗糙的一些食物容易引起出血。</p><p>小编提醒</p><p>大家在饮食上要注意清淡、新鲜</p><p>少吃辛辣、油腻的食物</p><p>在生活习惯方面</p><p>避免经常熬夜、过于劳累</p><p>情绪上也要尽量保持乐观</p>'),
	(4,'<p>今年2月</p><p>知名音乐人赵英俊、演员吴孟达</p><p>先后因肝癌离世</p><p>也让大家再次重视起肝癌这一疾病</p><p>吴孟达从发现肝癌到去世</p><p>中间只隔了两个月</p><p>大多数肝癌患者被发现时</p><p>已经到了中晚期</p><p>对于肝癌</p><p>我们该如何早发现、早治疗呢？</p><p>我国肝癌发病率高 为第二大致命肿瘤</p><p>统计数据显示，中国每年新发肝癌约40万例，占到全球50%以上，2020年，肝癌成为我国发病率第五的恶性肿瘤。此外，肝癌也是仅次于胰腺癌的第二大致命肿瘤，5年生存率不到15%。</p><p>医生表示：肝癌早期缺乏特异性的症状，比如上腹比较饱胀、食欲不好等一些非典型症状。早期症状比较隐匿，很多病人发现的时候都到了中晚期，治疗比较棘手，晚期一般生存期在三到六个月。</p><p>高危因素：肝炎病毒感染</p><p>长期酗酒、黄曲霉素污染等</p><p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/e/6042293504abb65c9f83543e38rgpsjl.png\" class=\"fr-fic fr-dii\"></p><p>专家介绍，肝癌隐匿性较强，但并非无迹可寻。一般来说，肝癌有&ldquo;三步曲&rdquo;：乙肝、肝硬化、肝癌。哪些人容易患上这一疾病呢？高危因素除了肝炎病毒感染外，还有长期酗酒、肥胖、黄曲霉素污染等等。</p><p>第一种是有乙肝、丙肝这类肝炎病毒感染病人</p><p>第二种是经常酗酒</p><p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/b/6042294004abb65c9f83543fl765yxgd.jpg\" class=\"fr-fic fr-dii\"></p><p>第三种是有非脂肪性肝炎、肝硬化的病人</p><p>第四种是经常食用黄曲霉素污染的水源、食物</p><p>高危人群半年内应接受&ldquo;防癌体检筛查&rdquo;</p><p>与一般人相比，有乙肝病史者患肝癌的风险增加10倍以上，食用霉变的玉米、花生，也有致癌作用。目前，肝癌治疗的重点是&ldquo;早发现、早诊断、早治疗&rdquo;。医生建议，高危人群应每3到6个月到医院接受一次&ldquo;防癌体检筛查&rdquo;。值得关注的是，随着医疗水平不断提高，部分晚期肝癌患者可以长期生存。</p><p>尽量戒酒戒烟，酒精对肝脏会有很大的损伤；部分肝癌病人，后面会出现肝硬化、消化道出血，这部分病人要注意饮食上清淡，吃一些容易消化的东西，粗糙的一些食物容易引起出血。</p><p>小编提醒</p><p>大家在饮食上要注意清淡、新鲜</p><p>少吃辛辣、油腻的食物</p><p>在生活习惯方面</p><p>避免经常熬夜、过于劳累</p><p>情绪上也要尽量保持乐观</p>'),
	(5,'<p>厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光</p>');

/*!40000 ALTER TABLE `article_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bill
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bill`;

CREATE TABLE `bill` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(20) NOT NULL,
  `merchant_id` int(10) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `remark` varchar(1024) DEFAULT 'null',
  `created_at` bigint(20) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `trade_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `imgs` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;

INSERT INTO `bill` (`id`, `order_number`, `merchant_id`, `amount`, `remark`, `created_at`, `status`, `trade_id`, `user_id`, `imgs`)
VALUES
	(1,'20210308093150838',24,25998,NULL,1615167570004,3,38,7,'[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/f/2021/3/8/l/6045804c28d9591c22e2713cohd03nzr.png\"]'),
	(2,'20210312135057258',21,1,NULL,1615529154300,2,75,4,'[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/f/2021/3/12/y/604b04b932a80a2166e5fcc9h0hw0xhd.png\"]'),
	(3,'20210315141052179',24,5499600,NULL,1615789671924,3,76,5,'[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/f/2021/3/15/z/604efe5d0909b63c4bc5558bp9ufp6tp.png\"]'),
	(4,'20210315145145604',22,20000,NULL,1615791133357,3,83,5,'[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/f/2021/3/15/f/604f04170909b63c4bc5558dqidnrajt.png\"]'),
	(5,'20210406162357998',23,509900,NULL,1617697449968,3,99,7,'[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/f/2021/4/6/x/606c1aa74d011413d12c468dqxq3l4xe.png\"]');

/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cart
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `num` int(10) NOT NULL,
  `product_sno` varchar(20) NOT NULL,
  `merchant_id` tinyint(1) NOT NULL,
  `created_at` varchar(15) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cart_payload` varchar(4096) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_usr_pro_sno` (`user_id`,`product_id`,`product_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;

INSERT INTO `cart` (`id`, `user_id`, `num`, `product_sno`, `merchant_id`, `created_at`, `product_id`, `cart_payload`)
VALUES
	(123,5,3,'2',25,'1615778865388',14,'{\"id\":0,\"type\":1}'),
	(124,5,2,'2',25,'1615778888816',13,'{\"id\":0,\"type\":1}'),
	(125,5,2,'1',25,'1615778888962',12,'{\"id\":0,\"type\":1}'),
	(134,5,1,'122112',22,'1615791085038',24,'{\"id\":0,\"type\":1}'),
	(135,5,1,'122112',22,'1615791089475',23,'{\"id\":0,\"type\":1}'),
	(152,6,1,'2',25,'1617871072156',14,'{\"id\":0,\"type\":1}'),
	(153,6,1,'2',25,'1617871072187',13,'{\"id\":0,\"type\":1}'),
	(154,6,1,'1',25,'1617871072198',12,'{\"id\":0,\"type\":1}'),
	(155,6,1,'1',24,'1617871072209',11,'{\"id\":0,\"type\":1}'),
	(156,6,1,'1',24,'1617871072221',10,'{\"id\":0,\"type\":1}');

/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table code
# ------------------------------------------------------------

DROP TABLE IF EXISTS `code`;

CREATE TABLE `code` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `created_at` bigint(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `expired_at` bigint(30) NOT NULL,
  `extra` varchar(300) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `code` WRITE;
/*!40000 ALTER TABLE `code` DISABLE KEYS */;

INSERT INTO `code` (`id`, `created_at`, `subject`, `username`, `code`, `expired_at`, `extra`)
VALUES
	(1,1614651670800,'register','86-18437929292','997520',1614652270800,NULL),
	(2,1614658968470,'register','86-18336793750','124225',1614659568470,NULL),
	(3,1614658968497,'register','86-18336793750','035402',1614659568497,NULL),
	(4,1614658968490,'register','86-18336793750','567471',1614659568490,NULL),
	(5,1614658968470,'register','86-18336793750','416109',1614659568470,NULL),
	(6,1614658968490,'register','86-18336793750','838494',1614659568490,NULL),
	(7,1614658968732,'register','86-18336793750','343039',1614659568732,NULL),
	(8,1614658968738,'register','86-18336793750','333265',1614659568738,NULL),
	(9,1614658968497,'register','86-18336793750','599831',1614659568497,NULL),
	(10,1614658968744,'register','86-18336793750','542894',1614659568744,NULL),
	(11,1614659038074,'register','86-18336793750','834659',1614659638074,NULL),
	(12,1614766154093,'register','86-15182245237','030707',1614766754093,NULL),
	(13,1614951912874,'register','86-18336793750','927965',1614952512874,NULL),
	(14,1614992416711,'register','86-15182245237','388888',1614993016711,NULL),
	(15,1614996827249,'register','86-18437929292','096935',1614997427249,NULL),
	(16,1614997394717,'register','86-18303800683','319973',1614997994717,NULL),
	(17,1615010327876,'register','86-15021129897','050612',1615010927876,NULL),
	(18,1615260435979,'register','86-17814645862','569719',1615261035979,NULL),
	(19,1615260499772,'register','86-15738888063','258532',1615261099772,NULL),
	(20,1615260531466,'register','86-18538381813','567619',1615261131466,NULL),
	(21,1616744158202,'register','86-15182245237','158441',1616744758202,NULL);

/*!40000 ALTER TABLE `code` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table collect
# ------------------------------------------------------------

DROP TABLE IF EXISTS `collect`;

CREATE TABLE `collect` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `from_id` int(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `collect` WRITE;
/*!40000 ALTER TABLE `collect` DISABLE KEYS */;

INSERT INTO `collect` (`id`, `user_id`, `type`, `from_id`, `status`)
VALUES
	(2,8,3,3,1),
	(3,6,3,3,1),
	(4,8,1,9,2),
	(5,7,1,9,1),
	(6,8,2,3,1),
	(7,8,4,24,2),
	(8,8,1,10,1),
	(9,8,3,4,1),
	(10,5,3,5,1),
	(11,8,2,2,1),
	(12,8,1,8,2),
	(13,8,4,22,2),
	(14,9,1,21,1),
	(15,11,3,3,1),
	(16,6,2,2,1),
	(17,4,1,8,1);

/*!40000 ALTER TABLE `collect` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table coupon
# ------------------------------------------------------------

DROP TABLE IF EXISTS `coupon`;

CREATE TABLE `coupon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `duration` bigint(20) NOT NULL COMMENT '优惠券持续时间(天)',
  `status` tinyint(2) NOT NULL COMMENT '优惠券状态',
  `created_at` bigint(20) NOT NULL COMMENT '优惠券发行时间',
  `payload` varchar(4096) NOT NULL COMMENT '优惠券类型以及详细分类等情况',
  `rule` varchar(1024) NOT NULL COMMENT '优惠额度以及规则',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;

INSERT INTO `coupon` (`id`, `duration`, `status`, `created_at`, `payload`, `rule`)
VALUES
	(11,30,1,1614994359602,'{\"type\":1}','{\"type\":1,\"values\":[10000,1500]}'),
	(12,30,1,1614994379317,'{\"category\":{\"icon\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/3/6042314404abb65c9f835449z2wee1yt.png\",\"id\":13,\"name\":\"测试一级分类\",\"parentId\":0,\"priority\":1,\"sequence\":\"020000\",\"status\":1},\"type\":2}','{\"type\":2,\"values\":[20000,1500]}'),
	(13,30,1,1614994393773,'{\"product\":{\"brandId\":5,\"content\":\"<p>sadasdasd</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614951461099,\"id\":7,\"merchantId\":22,\"name\":\"测试商品\",\"params\":[{\"label\":\"qeqw\",\"value\":\"qweqweqweq\"}],\"price\":1200,\"priority\":1,\"sequence\":\"020101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/h/6042340d04abb65c9f8354544zkw5flx.png\"],\"params\":[{\"label\":\"111\",\"value\":\"222\"},{\"label\":\"333\",\"value\":\"444\"}],\"price\":1200,\"sno\":\"12020\",\"stock\":120}],\"status\":1},\"type\":3}','{\"type\":3,\"values\":[1500]}'),
	(14,20,1,1615184432728,'{\"category\":{\"icon\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/i/6042d8cda7a4b70f22a91725e33vulmh.png\",\"id\":16,\"name\":\"家电\",\"parentId\":0,\"priority\":1,\"sequence\":\"030000\",\"status\":1},\"type\":2}','{\"type\":1,\"values\":[10000,2000]}'),
	(15,20,1,1615191683402,'{\"type\":1}','{\"type\":3,\"values\":[3000]}'),
	(16,90,1,1615193090031,'{\"type\":1}','{\"type\":3,\"values\":[9000]}'),
	(17,50,1,1615195148853,'{\"type\":1}','{\"type\":3,\"values\":[5000]}'),
	(18,80,1,1615201470966,'{\"type\":1}','{\"type\":3,\"values\":[5000]}'),
	(19,90,1,1615201606782,'{\"type\":1}','{\"type\":3,\"values\":[80000]}'),
	(20,10,1,1615202158417,'{\"type\":1}','{\"type\":1,\"values\":[10000,2000]}'),
	(21,30,1,1615202358675,'{\"type\":1}','{\"type\":1,\"values\":[80000,8000]}'),
	(22,80,1,1615202770381,'{\"type\":1}','{\"type\":3,\"values\":[9000]}'),
	(23,90,1,1615209620429,'{\"type\":1}','{\"type\":3,\"values\":[3000]}'),
	(24,20,1,1615251394606,'{\"category\":{\"icon\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/i/6042d8cda7a4b70f22a91725e33vulmh.png\",\"id\":16,\"name\":\"家电\",\"parentId\":0,\"priority\":1,\"sequence\":\"030000\",\"status\":1},\"product\":{\"brandId\":6,\"content\":\"<p><span data-pricing-loaded=\\\"\\\" data-product-template=\\\"${credit.display.smart} 的折抵金额以状况良好的 ${ productName }计算得出。\\\" data-tradein-product=\\\"mbp-13-tradein\\\">RMB 3600 的折抵金额以状况良好的 MacBook Pro i7 3.5GHz 13 英寸 (2017 年中) 512GB 固态硬盘计算得出。</span>实际折抵金额取决于设备的状况、配置、制造年份，以及发售国家或地区。年满 18 周岁及以上者才能享受此项折抵换购服务。并非所有设备都符合折抵换购条件。Apple&nbsp;Store 零售店不提供电脑产品的折抵换购服务。Apple 的<a href=\\\"https://reuserecycle.ifengpai.com/mac/reuserecycle\\\" rel=\\\"nofollow\\\" target=\\\"_blank\\\">折抵服务合作伙伴</a>将提供关于符合条件设备的折抵与回收的更多信息。可能需要遵循限定条款和条件。所支付金额基于所收到的设备状况与在估算折抵金额时你所提供的描述是否相符。Apple 或其折抵服务合作伙伴保留出于任何原因拒绝或限制任何设备 (及其数量) 的权利。</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996722024,\"id\":11,\"merchantId\":24,\"name\":\"MacBook Pro M1\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1299900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1299900,\"sno\":\"1\",\"stock\":123},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1599900,\"sno\":\"2\",\"stock\":234}],\"status\":1},\"type\":3}','{\"type\":2,\"values\":[200000,10000]}'),
	(25,20,1,1615258387354,'{\"type\":1}','{\"type\":2,\"values\":[100000,1000]}'),
	(26,1,1,1615258494465,'{\"type\":1}','{\"type\":2,\"values\":[1000,100]}'),
	(27,10,1,1615269404170,'{\"type\":1}','{\"type\":2,\"values\":[10000,1000]}'),
	(28,10,1,1615287310079,'{\"category\":{\"icon\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/i/6042d8cda7a4b70f22a91725e33vulmh.png\",\"id\":16,\"name\":\"家电\",\"parentId\":0,\"priority\":1,\"sequence\":\"030000\",\"status\":1},\"type\":2}','{\"type\":1,\"values\":[20000,1000]}'),
	(29,10,1,1615338596570,'{\"type\":1}','{\"type\":3,\"values\":[1000]}'),
	(30,2,1,1615340538096,'{\"type\":1}','{\"type\":2,\"values\":[2000,200]}'),
	(31,90,1,1615340555826,'{\"category\":{\"icon\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/i/6042d8cda7a4b70f22a91725e33vulmh.png\",\"id\":16,\"name\":\"家电\",\"parentId\":0,\"priority\":1,\"sequence\":\"030000\",\"status\":1},\"type\":2}','{\"type\":2,\"values\":[9000,100]}'),
	(32,90,1,1615516693795,'{\"type\":1}','{\"type\":2,\"values\":[5000,500]}'),
	(33,120,1,1615516820095,'{\"product\":{\"brandId\":7,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"createdAt\":1615192670554,\"id\":24,\"merchantId\":22,\"name\":\"精致陶瓷两件花瓶摆件可插花\",\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"price\":37900,\"priority\":1,\"sequence\":\"040102\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045e2266baaf92be98f7931gwg47mnn.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"}],\"price\":37900,\"sno\":\"122112\",\"stock\":6419741}],\"status\":1},\"type\":3}','{\"type\":3,\"values\":[1200]}'),
	(34,2,1,1615516832789,'{\"type\":1}','{\"type\":3,\"values\":[1200]}'),
	(35,20,1,1615516842345,'{\"type\":1}','{\"type\":3,\"values\":[2000]}'),
	(36,30,1,1615516963555,'{\"type\":1}','{\"type\":3,\"values\":[3000]}'),
	(37,20,1,1615517014021,'{\"type\":1}','{\"type\":3,\"values\":[2000]}'),
	(38,10,1,1615517055533,'{\"type\":1}','{\"type\":3,\"values\":[1000]}'),
	(39,40,1,1615517162791,'{\"type\":1}','{\"type\":3,\"values\":[5000]}'),
	(40,10,1,1615517264742,'{\"type\":1}','{\"type\":3,\"values\":[1000]}'),
	(41,120,1,1615517272497,'{\"type\":1}','{\"type\":3,\"values\":[1000]}'),
	(42,20,1,1615519679422,'{\"type\":1}','{\"type\":3,\"values\":[2000]}'),
	(43,10,1,1615519747807,'{\"type\":1}','{\"type\":3,\"values\":[2000]}'),
	(44,10,1,1615519856655,'{\"type\":1}','{\"type\":3,\"values\":[1000]}'),
	(45,20,1,1615519864850,'{\"type\":1}','{\"type\":3,\"values\":[2000]}'),
	(46,30,1,1615519872869,'{\"type\":1}','{\"type\":3,\"values\":[3000]}'),
	(47,30,1,1615793045549,'{\"type\":1}','{\"type\":3,\"values\":[3000]}'),
	(48,30,1,1615793176535,'{\"type\":1}','{\"type\":3,\"values\":[3000]}');

/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table merchant
# ------------------------------------------------------------

DROP TABLE IF EXISTS `merchant`;

CREATE TABLE `merchant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(16) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `imgs` varchar(1024) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `signin_at` bigint(20) DEFAULT NULL,
  `logo` varchar(1024) NOT NULL DEFAULT '',
  `last_modify` bigint(20) DEFAULT NULL,
  `location` varchar(500) NOT NULL DEFAULT '',
  `sequences` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;

INSERT INTO `merchant` (`id`, `mobile`, `name`, `imgs`, `status`, `created_at`, `signin_at`, `logo`, `last_modify`, `location`, `sequences`)
VALUES
	(21,'86-18336793750','蚂蚁牙嘿嘿','[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/m/6045e2c26baaf92be98f79330t8rr9xx.png\"]',1,1614950831825,NULL,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/j/6045e2a36baaf92be98f79325b6lmoqm.png',1615945359505,'{\"code\":\"410184\",\"detail\":\"电商大厦\",\"lat\":34.39605,\"lng\":113.74161,\"poiaddress\":\"郑州市\",\"poiname\":\"我的位置\"}','[\"010000\",\"020000\",\"030000\",\"040000\"]'),
	(22,'15182243486','JING的商户','[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/b/6045e31b6baaf92be98f7934wt9au1v6.png\"]',1,1614950877455,NULL,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/v/6042319a04abb65c9f83544bmhfc4ehk.png',1615192876355,'{\"code\":\"410184\",\"detail\":\"湖南长沙郑州大学\",\"lat\":34.395692,\"lng\":113.740772,\"poiaddress\":\"河南省郑州市新郑市人民路西段186号\",\"poiname\":\"新郑市人民政府\"}','[\"020000\",\"010000\",\"040000\",\"050000\"]'),
	(23,'18303800683','AppleStore','[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/q/6042d9cfa7a4b70f22a91727y4uj0c1s.png\"]',1,1614993896342,NULL,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042d91ca7a4b70f22a91726bxc2x95i.png',1614994769010,'{\"code\":\"410103\",\"detail\":\"万象城2l\",\"lat\":34.754927256,\"lng\":113.662862382,\"poiaddress\":\"河南省郑州市二七区民主路10号郑州万象城2层\",\"poiname\":\"Apple 郑州万象城\"}','[\"030000\"]'),
	(24,'18437929292','apple官方旗舰店','[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/3/6042de04b29004228a3c4f69udd0n6bv.png\"]',1,1614995115091,NULL,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/u/6042de84b29004228a3c4f6ap0hcnrgj.png',1614995211547,'{\"code\":\"410184\",\"detail\":\"电商大商B座\",\"lat\":34.610659,\"lng\":113.727792,\"poiaddress\":\"河南省郑州市新郑市环西路\",\"poiname\":\"华南城电商产业园\"}','[\"030000\"]'),
	(25,'0379-12345678','测试的店铺全品类','[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/7/60432efe3dff57183c44abb2chsbgvc3.png\"]',1,1615015698244,NULL,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/j/60432ecb3dff57183c44abb1rxadk0sf.png',1615192090273,'{\"code\":\"410102\",\"detail\":\"这里是他的详细地址特别长中原区商城\",\"lat\":34.395692,\"lng\":113.740772,\"poiaddress\":\"河南省郑州市新郑市人民路西段186号\",\"poiname\":\"新郑市人民政府\"}','[\"010000\",\"020000\",\"030000\",\"040000\",\"050000\"]');

/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table merchant_admin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `merchant_admin`;

CREATE TABLE `merchant_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(16) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `img` varchar(1024) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `signin_at` bigint(20) DEFAULT NULL,
  `role_id` varchar(1024) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_mobile` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `merchant_admin` WRITE;
/*!40000 ALTER TABLE `merchant_admin` DISABLE KEYS */;

INSERT INTO `merchant_admin` (`id`, `mobile`, `name`, `password`, `img`, `status`, `created_at`, `signin_at`, `role_id`, `merchant_id`)
VALUES
	(12,'86-18336793750','赵孟宇','5ef559e547f203e01af788fb60693a3382513c1dbbcbeb83f3b02c6c1089ecc9',NULL,1,1614950831988,NULL,'8',21),
	(13,'86-15182245237','余晋','5ef559e547f203e01af788fb60693a3382513c1dbbcbeb83f3b02c6c1089ecc9',NULL,1,1614950877568,NULL,'9',22),
	(14,'86-18303800683','张卫正','5ef559e547f203e01af788fb60693a3382513c1dbbcbeb83f3b02c6c1089ecc9',NULL,1,1614993896447,NULL,'10',23),
	(15,'86-18437929292','胡永涛','5ef559e547f203e01af788fb60693a3382513c1dbbcbeb83f3b02c6c1089ecc9',NULL,1,1614995115209,NULL,'11',24),
	(16,'86-15021129897','测试小姐姐','5ef559e547f203e01af788fb60693a3382513c1dbbcbeb83f3b02c6c1089ecc9',NULL,1,1615015698346,NULL,'12',25);

/*!40000 ALTER TABLE `merchant_admin` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table merchant_admin_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `merchant_admin_role`;

CREATE TABLE `merchant_admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `permissions` varchar(1024) DEFAULT NULL,
  `merchant_id` bigint(20) NOT NULL COMMENT '商户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `merchant_admin_role` WRITE;
/*!40000 ALTER TABLE `merchant_admin_role` DISABLE KEYS */;

INSERT INTO `merchant_admin_role` (`id`, `name`, `permissions`, `merchant_id`)
VALUES
	(8,'超级管理员','[\"PRODUCT_LIST\",\"PRODUCT_EDIT\",\"ROLE_EDIT\",\"ROLE_LIST\"]',21),
	(9,'超级管理员','[\"ROLE_EDIT\",\"ROLE_LIST\",\"PRODUCT_LIST\",\"PRODUCT_EDIT\"]',22),
	(10,'超级管理员','[\"ROLE_EDIT\",\"ROLE_LIST\",\"PRODUCT_LIST\",\"PRODUCT_EDIT\"]',23),
	(11,'超级管理员','[\"ROLE_EDIT\",\"ROLE_LIST\",\"PRODUCT_LIST\",\"PRODUCT_EDIT\"]',24),
	(12,'超级管理员','[\"ROLE_EDIT\",\"ROLE_LIST\",\"PRODUCT_LIST\",\"PRODUCT_EDIT\"]',25);

/*!40000 ALTER TABLE `merchant_admin_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table merchant_admin_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `merchant_admin_session`;

CREATE TABLE `merchant_admin_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_admin_id` int(11) DEFAULT NULL,
  `token` varchar(64) DEFAULT NULL,
  `signin_at` bigint(20) DEFAULT NULL,
  `expired_at` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `merchant_admin_session` WRITE;
/*!40000 ALTER TABLE `merchant_admin_session` DISABLE KEYS */;

INSERT INTO `merchant_admin_session` (`id`, `merchant_admin_id`, `token`, `signin_at`, `expired_at`)
VALUES
	(36,12,'jRF5U6AFJIQXiftzaQtVl2tEakitNUQ8zgiqXdSRoNsqJJxBC95p0sSiPsWsFvJ4',1614950845798,1615037245798),
	(37,13,'VZxsY91gPsbOSIa1Zb2QgnAzeiKpyNCqM5tMztc63e0tl9zqF7JUy86wu3QIO7AH',1614951143577,1615037543577),
	(38,12,'Xc2raLk1VJUA642byYqfbMhvPj219RHXEHl1hrKc3RI3PTxzdZ6LibFooNnarr2x',1614951900437,1615038300437),
	(39,14,'EYeiAXvmKN0O35yevj0zvan5qHkLjjshYnZPmXdIUFL6jpaBMEzfJEsmDfI2RlJm',1614993930570,1615080330570),
	(40,14,'8EaybtzANIYK3WLQteASa4FYkQ4eNpT73180AfsiXN9TJEZkSfwiiDPPR9IZqsKG',1614994823899,1615081223899),
	(41,15,'H0OdscAFXVzTZ0FWc2yRZaexEP34l8zqGNYMM9jqQ2Q0SrTr0jLUbjmFSFOPfkT6',1614995152398,1615081552398),
	(42,13,'kSYABC5YGaVughP0Q7iSOjOYNk2a2zDZklE7jofZMse0jyVI3VNTrtJAGWsDHsQu',1614995167830,1615081567830),
	(43,14,'c0FeoRiGUKahiQhvpwSy9v4SA01Qbt488WyfxGlxt6UsDXTqimq24ASuiM70PjIv',1615014622838,1615101022838),
	(44,14,'aVSZrJLGBDugzsYN3n2wjObj2tYEYx4E66YGiO2GPCSSk1dhEFMdRuAFVkmuVfgj',1615014795258,1615101195258),
	(45,16,'Ck1tro5Gj5IABhy9tT8GJvahm1269fq1qgJNyW3kqW9lRIVJcWlBjs7WnNkT7dYE',1615018263148,1615104663148),
	(46,16,'kI7iy2Rl1V1pB0yo6u9yb7BLe8kYhGe80uXnhVWaCCoyp76gidRzj5RCXBYcEy7C',1615018474194,1615104874194),
	(47,15,'QpcgmGBdPnxh32wdHisBGrxyNp4htafnBgpCTQXQ6MuV9PtSXujjFUKCVgkzAf0w',1615183531476,1615269931476),
	(48,16,'YFmmCoTe0PW983U33kIseDrOCL5j9kZzWiRREUFUyFDsFMegTFiVqqBv24C8K0aC',1615183888211,1615270288211),
	(49,13,'aebqR2kbF8rEev7OJXJ2k6PFKP0hybF5oKlvHbZp1BqYgBBB90XkqcWBsqB2HBfB',1615192174715,1615278574715),
	(50,15,'bSZcuJOZClMiGdIEvkf9dz56ej9ka9TE2Qa9B8hkUmxanoJr7KgCJgn4NDdnrHQs',1615194353329,1615280753329),
	(51,12,'mKF212n7YR9cv1GjklUiBjkPDQZNeUSDgzhNz5zRL4VDEyovThHBXqGU5bptFD23',1615194792792,1615281192792),
	(52,14,'PEALid6Gm4OxYGrkJUBcXw8Vfod09OhSWye5cO1HckTtJQSzTqquYCNWya4hjm4S',1615270544380,1615356944380),
	(53,13,'yKFHSJQe7fXlcrNeBbx4ZUBlZPvLtfrk5kFAIAtc6BAY5OrsiEsBebJbhDOcZGTl',1615270732106,1615357132106),
	(54,14,'LW1wsalgxoGKUt7FFBYCNJlCLb6nu6xylSVBuimof7MJd8Lw1qc6gVc2rFnLJ7Ks',1615272407797,1615358807797),
	(55,12,'a2NsbXJC1PVDWBVFD1W68U8KuwaZGjzmW1NAadWEYfLJUb3D5bpYSk1YC7XQBuiL',1615272712516,1615359112516),
	(56,12,'9tQmg2GEGWbfdCOzaZbPmRWSejwVYmE4R4rDi3rdAadGvomfGZ514lAbdENpNZJn',1615272712831,1615359112831),
	(57,12,'yeymBXyjkFF9rfIinPNHUNdiCDqMQQthnQ7IEacgK92HtRzrxgV355ED13gxmKKy',1615272713083,1615359113083),
	(58,12,'zpYm95CYILmEhwF7AG7v0430DqbvCZyx10CkZGvkoCBqHkJA6jHGPQAtGsejw32K',1615272713575,1615359113575),
	(59,12,'A2N0x1W17zP1FijnWruOMvuzO2WzdR6FMF5F4Xe4TOFfUVGsJgXCEjxrEGoaSbkW',1615272713987,1615359113987),
	(60,12,'0fejSk2VXtyWFKKLME0UEpHZqcBxCV937BT8A41y3fjYGOS9iED6KtqxSw9nAdUC',1615272714906,1615359114906),
	(61,12,'Ab4IBRyhLKB32YBFpMlyIz752pG675wJ5zXismuCtZE7SibxmzvMBS0WkwMrtz9H',1615272715165,1615359115165),
	(62,12,'mXPsq6VX1EatPRNOedltBJUukpPH2VJeLa79rpTxM7tlVPgEi4E8QeKk5UQVavyl',1615273510264,1615359910264),
	(63,15,'txy1hRepD88PAn8ORR6IZokssqHodcHeA5cDloVwOoctXw9inyTfmjkKGX0P9NJl',1615291886566,1615378286566),
	(64,12,'xSEgGzxtpiotLi8lIeF0K5WkSuNYfT09q2SwlOEghyJvO6gqccNbTOQ8AimccXvJ',1615512397164,1615598797164),
	(65,15,'HlTffnqPa4apsruQz5OUtHEtTicVtsiaS98bnFmPn6me86LOBRaQHDpskqTpB8NL',1615528290956,1615614690956),
	(66,12,'S4nlHJPRY2Mq6hE1mmfbcGwSIiD5B60Lro8GU05dsynwd6TG7d4nY3YX7jMc9Dmo',1615530783033,1615617183033),
	(67,12,'NC9scbCRyr2mOnGafaxHcLNqURUVt8k1jYnphFYvIhbMw0hcieYmyhtU65Uiii30',1615530827479,1615617227479),
	(68,13,'fDWwOxXoZSKrzIuMRkqvOS7DQ0W9MD5KJT0Ipoc1FkFVMi7MIRwYCtyxzdXwt038',1615790120270,1615876520270),
	(69,13,'n1hL8j3UazC6dYyAQnRzkQRGsDwAEevn5ULSwp6w28FMJt39VONPVgCEd99PtS6b',1615808855375,1615895255375),
	(70,15,'2nydF6iPFewLWtrbA2YcGN47x56JPsZmV67o0mHN0w2dGnx2EGChQnZr8TvtD3Kv',1615864945111,1615951345111),
	(71,12,'sxrBpcKTe6BK8dqPxi5qX2tHgUwJE3OILlOpu9nLYSnduQMnpavR5SuKfFfWqwzV',1615895422916,1615981822916),
	(72,13,'7cuJ34AxRCHN6ykO8USvYMC2kbVS2u6rstkArjFRxZcTZXofxwMXupN3ehE0uWrm',1615948858660,1616035258660),
	(73,12,'6PRfE3yLBCkcqLSxzu8Szu5PGDgfPNmyJHEKBHtHevev5XoHtbDfkEKx3EhnTZMw',1616755516657,1616841916657),
	(74,13,'RchjLiqXYLfgk4iPYcKUop8yFhy4TkD6EEVG91wqrbpq2UOnbyTM2gzov8r3gcR1',1616994148352,1617080548352),
	(75,12,'DXMrzJ05iUmiRs7gZ1h87ffo4vHJy5SWxCBQSceinQc7zyfSC5CqbVHH3fvvdLHg',1616997874315,1617084274315),
	(76,14,'ZDTj8SWfUMYw5sxwnynZKJAZgQIhPLsSTmeA9dbe1f6U6Py6BTCNNXrqLjh3F3It',1617076720192,1617163120192),
	(77,12,'eTUocWNlrSfTnmjZSwjxjjPmNAy6ZkfQbFULX8rvSPB01zwSDG9HMHa0wKn3eZhs',1617175733453,1617262133453),
	(78,15,'WHTocct7mV0HfsE4XKCftoqgWFTEk20aP4EeaG0VvNPHqWJSddatxefv4jF02KbS',1617262610829,1617349010829),
	(79,14,'f6i9Id4dikaJwaeRyVxqbghOSQHgNAyk59vyZ3BUHqeDg52ChSSRGcJQS2m3w32O',1617417834045,1617504234045),
	(80,15,'lJqHNwhinurIQsE9Rjm8nQEO53kKFQ3tac9zmgyUSeumaiQRvKZ8f2L6tf5rFoKF',1617589324392,1617675724392),
	(81,12,'BqwuPQgcpgnGJ5FgjuFaB4cmNZqGyzTXhLAeMfOfBaTNjHbFW4B9RQVWGHAKDdv4',1617689615127,1617776015127),
	(82,15,'e1Rp0jZIUPOysV5PyKl4z4OiseCpSmiiHuLmsEh4l63kasNZmMZ4SdYpPnRV4Zua',1617690564759,1617776964759),
	(83,14,'stRIxj2goe75ZvWUy3OiAHmwfJJ3bwi770NiJHcCHYwTy4JlkPhbXObqfJGNtXm2',1617697328399,1617783728399),
	(84,15,'WYLOrhcIMlxtWE4LWP1DTkrta4sxOcREq7XszM9rVKaWM7kBCpBu4ajCXfNwfnUw',1617780361162,1617866761162),
	(85,12,'FVXW8S21vjFDngmiGznMQU1GHAZD30PbVeq2w6dnRlu5zILhTKYDveqIQw104a1O',1617781143774,1617867543774),
	(86,12,'IUnMbMDu4R6B53zx1hKqJqC9cmEwXzugQAJRsuiCEtqkh0St9drSIsMnIeM4dUtm',1617781145390,1617867545390),
	(87,12,'qX6mMgiEwYjLJrIl2mNd3iIF1dHBJ5uMvIeRlu9z0GAgzlWgxREQVoJunS22CPqb',1617844404040,1617930804040),
	(88,12,'talnWBmqObFeqw1Gn0JIcwIDGYBpojSpAHMbVDCDLUJVuqRTrUtjHgQofNyV6JoV',1617846247909,1617932647909),
	(89,12,'b42TDHcrJy2e48Fl3SIAFlG6zmgmqfm7B44ed1X1vkRzfWTxqBV07X6wiuE40tuR',1617846268604,1617932668604),
	(90,12,'jrCidWvGgoPotE1cNpE53Zrfk89MSvYS24rstr0LyXEtLj0wpwd47gBh587Y7w65',1617848094566,1617934494566),
	(91,12,'h0onffInx6n7ZSubdJDdSqAESbmd2unGYNtqpNC0fpuTNdVd8p2pWa0DETuGWaeT',1617848292626,1617934692626),
	(92,12,'iQDt2tEcuOGwA0t2FmftIiWQsa9iE3MJ5LRTxKRJIickdVZyJEvTjeJpIHc8J6dc',1617848307253,1617934707253),
	(93,12,'WlLcgBVRPdWsmU64khtLnezZ0xPzXwFurxnYvlK5dibe4sUmKrWArNee3LhOlUUl',1617848440362,1617934840362),
	(94,12,'eGzRqbATzHtinz91lnyFd8pPE1PphKhCmkezGQeFjlGDbLPRA2Svh7OuW7IRSUgw',1617848454783,1617934854783),
	(95,15,'qKEJuWbtEhT1NYdByfME62TJ4Saoen6TEuYhUrBUfaySBWJQQB0dIIiVeYOnGmIy',1617870844268,1617957244268),
	(96,15,'oFNhwN7M2wrHrbjkoGPW02fBhJnTciXUHFIgTqrRO9QI02uTXep0JYzU269jzbwv',1617881914137,1617968314137),
	(97,14,'dqYZPYmmdjn3cSv6T9yFNxoeLbJ7fbbtC4ZhMcp2vQ12cvqxnCaXvFra3VORNxHN',1617934223708,1618020623708),
	(98,15,'0aEyJqYxYq6aK8kyl9EgCOKtcGN4pcgs01da7i7U1uULZVAOWGWelP9n7SpWPa13',1618451215531,1618537615531),
	(99,14,'zufRXNLegOFIzOijJZZTqwGYQJksxQYGe3gZWjmfMV1PF2cYFCYvPrDvFarWRFay',1618975291566,1619061691566),
	(100,12,'nJm0wTlTlT3YNMXud1mafZEonPOL4X34Gx5ub1vKOcWKTQCFC23aG4qDMDAM4Lk9',1619148450614,1619234850614),
	(101,14,'SvnrsXJ63ZVz0YuodqaT1YZCCQodBo5JvJzFwTXKHDCe2br0HJ2HUjZgjcuWTUCt',1619153222439,1619239622439),
	(102,15,'kBNjFfxau8nDC4XTfTRMgfHiTK18fwWLinkrSoUr74srpJgQc8EnFunmv5iT0nsg',1619313141506,1619399541506),
	(103,12,'Du5gzatVMd2MTQQuvqOgrURkP1ubdU2v0WBOlWrb1kJgH8SBdFCpaqiGZmxmQw4s',1619421809743,1619508209743),
	(104,12,'mLxz4kHx7k2hKJgOysppvxpxWYlDrYUoZRXHreForWmtVQq5MFUWTORXTx5VGsvD',1619512359504,1619598759504),
	(105,15,'FoytlTINZAO3dZZWfJl337HQjihUdH6ymvACDBgVJ12acpwlz6o165UlQcSoVJ49',1619585838479,1619672238479),
	(106,13,'LTsGXO6xnV6jW6QHrRiBCTezSybTeejudGiqNUE64b22pJ8gnPtS7LE9vfWIKYki',1619602659846,1619689059846),
	(107,12,'6lWQgbTr74XwB1rJ2VR6ybgZ0UQcEd2Q4ZMgBgvpNE5ezrGmf0hD4AsSgbEJNcr5',1619685797145,1619772197145),
	(108,14,'L41YcQYWrJQgSTO4P8GT9ojsRv5jHFmq5k5wBXDPVpyo3cTFHHD8MRCJ2KP4EREn',1620723999172,1620810399172),
	(109,15,'VFWE6EnrYh57JxuMvIzuR6xUNkcOxlXplOYlMAu3NBMSOiyKQUQCidYHTpdcb75B',1620804585028,1620890985028),
	(110,14,'mPpToEZyTMPqGpm9ZI2RwrRUK74OqoJdVnag4Hfw2BygqGjkukA3xFgj5Nf7ySex',1620810897804,1620897297804),
	(111,15,'EMvSbNONWvnDj4cgzDyUKP0oaH0xXKgsLoa3f0C8yY63120NrfIXTsy3mCINvz9m',1620899747614,1620986147614),
	(112,12,'ZBExruPMzxCGjLF2ybgcYOA4Xvxl69DBgIDACuxeF8dZebi5PZZd6nLYCW0fTZuw',1621302767275,1621389167275),
	(113,12,'AWUggr4C5tcnZwNftpmOc9riFtEPrRHieejud5mVhlJ6fmkE6Izo8gl9r6iM0Ahn',1621390527961,1621476927961),
	(114,12,'2dWaqhZrJdV6O8FoEPV6IbFqeSzQre4O5USandQd4jC9DZ4CC9J6hVspNFai8Kd4',1621482514546,1621568914546),
	(115,15,'RKrrEfTFVIrSRvf6p6HQ9SipYEzY1kFIvrtwnNvPcVu4gZyMZlV6JmC2sEdckSdv',1621517331078,1621603731078),
	(116,12,'4eY42fA0xSyScaSEB6Voihjk3wqzSbCkg7ij96Dh5rIbs4Ui2ZHC6eDffBYEOd6L',1621586912632,1621673312632),
	(117,14,'dZbv5fbxfVV6q315VmN4PKHVHJy1E9fFbfetfmhsoWGNaSSPUx1tbhuE0ZcOGK9S',1621904206650,1621990606650),
	(118,14,'GlJ9qulfl4NAJXgg11HmkIycRt3ZfowN39OdGoYn1jRWcGRJ8nV9Oru8DPdsAzjZ',1621905812921,1621992212921),
	(119,14,'LXT1kRLkdbXZqdXmQWIMRTUcd7nSYGHG0ICeZwq36rejr2ysEgrN22LB9q19AR9O',1621905837789,1621992237789),
	(120,15,'hFtePPD96WvHEhQQAuYMI8dkH7laKbckb6yP2KOlBuUzDmNybvvSET2C5x01hOYJ',1622077068569,1622163468569),
	(121,13,'nTnpCDrfFxWUZOYed1dyqYYoFIy7zLD204MXHoAuhZ9KSTmP283cahSwT6WRXZUZ',1622452866439,1622539266439);

/*!40000 ALTER TABLE `merchant_admin_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table merchant_duration
# ------------------------------------------------------------

DROP TABLE IF EXISTS `merchant_duration`;

CREATE TABLE `merchant_duration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` bigint(20) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `expired_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_merchantId` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `merchant_duration` WRITE;
/*!40000 ALTER TABLE `merchant_duration` DISABLE KEYS */;

INSERT INTO `merchant_duration` (`id`, `merchant_id`, `created_at`, `expired_at`)
VALUES
	(10,21,1614950831825,1646054831825),
	(11,22,1614950877455,1646141277455),
	(12,23,1614993896342,1646097896342),
	(13,24,1614995115091,1646099115091),
	(14,25,1615015698244,1646119698244);

/*!40000 ALTER TABLE `merchant_duration` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sequence` varchar(10) NOT NULL DEFAULT '',
  `merchant_id` int(10) NOT NULL,
  `brand_id` int(10) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  `specs` text NOT NULL,
  `params` varchar(1024) DEFAULT NULL,
  `priority` int(10) NOT NULL,
  `status` tinyint(1) DEFAULT '2',
  `content` text NOT NULL,
  `pub_at` bigint(20) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;

INSERT INTO `product` (`id`, `name`, `sequence`, `merchant_id`, `brand_id`, `created_at`, `specs`, `params`, `priority`, `status`, `content`, `pub_at`, `price`)
VALUES
	(7,'测试商品','020101',22,5,1614951461099,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/h/6042340d04abb65c9f8354544zkw5flx.png\"],\"params\":[{\"label\":\"111\",\"value\":\"222\"},{\"label\":\"333\",\"value\":\"444\"}],\"price\":1200,\"sno\":\"12020\",\"stock\":120}]','[{\"label\":\"qeqw\",\"value\":\"qweqweqweq\"}]',1,1,'<p>sadasdasd</p><p data-f-id=\"pbf\" style=\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\">Powered by <a href=\"https://www.froala.com/wysiwyg-editor?pb=1\" title=\"Froala Editor\">Froala Editor</a></p>',NULL,1200),
	(8,'刷子','010101',21,4,1614951489149,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/m/604231e04731815558ab52bdr1ywidbg.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"},{\"label\":\"尺寸\",\"value\":\"200*300\"}],\"price\":3,\"sno\":\"21345\",\"stock\":23},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/16/b/60509d33d663ca5931319932p9oeze0k.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"},{\"label\":\"尺寸\",\"value\":\"1800*600\"}],\"price\":500,\"sno\":\"31243543\",\"stock\":123}]','[{\"label\":\"规格\",\"value\":\"200*4000\"}]',1,1,'<p>这是一块可爱的香皂</p>',NULL,3),
	(9,'iPhone','030101',23,6,1614996307878,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/y/6042e25ba7a4b70f22a9172a5fzli31z.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"绿色\"},{\"label\":\"内存\",\"value\":\"128g\"}],\"price\":529900,\"sno\":\"2Ut2gCgD\",\"stock\":100},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/t/6042e291a7a4b70f22a9172crq6ag5ad.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"黑色\"},{\"label\":\"内存\",\"value\":\"64g\"}],\"price\":509900,\"sno\":\"Rq1h6THu\",\"stock\":100},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/8/6042e2aea7a4b70f22a9172d5sppzb5j.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"黄色\"},{\"label\":\"内存\",\"value\":\"128g\"}],\"price\":529900,\"sno\":\"7YrFvxyc\",\"stock\":88},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/b/604316713dff57183c44ab670bxyn0zt.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"绿色\"},{\"label\":\"内存\",\"value\":\"64g\"}],\"price\":509900,\"sno\":\"g4skbfzk\",\"stock\":10}]','[{\"label\":\"苹果手机\",\"value\":\"11\"}]',1,1,'<p>苹果手机</p><p data-f-id=\"pbf\" style=\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\">Powered by <a href=\"https://www.froala.com/wysiwyg-editor?pb=1\" title=\"Froala Editor\">Froala Editor</a></p>',NULL,509900),
	(10,'apple MacBook Pro','030201',24,6,1614996579415,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\",\"stock\":666},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":766}]','[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}]',1,1,'<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\"pbf\" style=\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\">Powered by <a href=\"https://www.froala.com/wysiwyg-editor?pb=1\" title=\"Froala Editor\">Froala Editor</a></p>',NULL,1449900),
	(11,'MacBook Pro M1','030201',24,6,1614996722024,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1299900,\"sno\":\"1\",\"stock\":123},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1599900,\"sno\":\"2\",\"stock\":234}]','[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}]',1,1,'<p><span data-pricing-loaded=\"\" data-product-template=\"${credit.display.smart} 的折抵金额以状况良好的 ${ productName }计算得出。\" data-tradein-product=\"mbp-13-tradein\">RMB 3600 的折抵金额以状况良好的 MacBook Pro i7 3.5GHz 13 英寸 (2017 年中) 512GB 固态硬盘计算得出。</span>实际折抵金额取决于设备的状况、配置、制造年份，以及发售国家或地区。年满 18 周岁及以上者才能享受此项折抵换购服务。并非所有设备都符合折抵换购条件。Apple&nbsp;Store 零售店不提供电脑产品的折抵换购服务。Apple 的<a href=\"https://reuserecycle.ifengpai.com/mac/reuserecycle\" rel=\"nofollow\" target=\"_blank\">折抵服务合作伙伴</a>将提供关于符合条件设备的折抵与回收的更多信息。可能需要遵循限定条款和条件。所支付金额基于所收到的设备状况与在估算折抵金额时你所提供的描述是否相符。Apple 或其折抵服务合作伙伴保留出于任何原因拒绝或限制任何设备 (及其数量) 的权利。</p><p data-f-id=\"pbf\" style=\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\">Powered by <a href=\"https://www.froala.com/wysiwyg-editor?pb=1\" title=\"Froala Editor\">Froala Editor</a></p>',NULL,1299900),
	(12,'咖啡机复古黄色小资情调咖啡机','030202',25,8,1615019132605,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/i/60433bbc28d9591c22e2712fnrd9gvks.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"黄色\"}],\"price\":29900,\"sno\":\"1\",\"stock\":100}]','[{\"label\":\"材质\",\"value\":\"金属\"},{\"label\":\"产地\",\"value\":\"广州\"},{\"label\":\"其他\",\"value\":\"没有\"}]',1,1,'<ol><li><span style=\"font-size: 16px;\"><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/f/60433c0428d9591c22e27130qe7dsf0q.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\">Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook Pro 的性能。</span></li><li><span style=\"font-size: 16px;\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\"font-size: 16px;\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Affinity&nbsp;Photo&nbsp;1.9.0.199 进行，采用内置基准版本 1900。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\"font-size: 16px;\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Logic&nbsp;Pro&nbsp;10.6.0 进行，采用一个包含多条音轨的项目，每条音轨均应用一个 Amp Designer 插件实例。播放时逐条加载音轨，直至中央处理器超载为止。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\"font-size: 16px;\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器和 Intel Iris Plus Graphics 645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一个时长 10 秒的项目，项目包含分辨率为 3840x2160、帧率为 30 fps 的 Apple&nbsp;ProRes 422 视频。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\"font-size: 16px;\">Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片、16GB RAM 和 2TB 固态硬盘的 13 英寸&nbsp;MacBook&nbsp;Pro 系统进行了此项测试。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一个时长为 2 分钟的项目，项目包含分辨率为 8192x4320、帧率为 23.98 fps 的 8K Apple ProRes 422 HQ 媒体。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\"font-size: 16px;\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器和 Intel&nbsp;Iris&nbsp;Plus&nbsp;Graphics&nbsp;645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用 Unity&nbsp;2018.3.6f1 进行，采用《Book of the Dead》演示，分辨率设为 1440x900。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\"font-size: 16px;\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器和 Intel&nbsp;Iris&nbsp;Plus&nbsp;Graphics&nbsp;645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Shapr3D&nbsp;3.45.0 进行，采用一个 288.2MB 的模型。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\"font-size: 16px;\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器和 Intel&nbsp;Iris&nbsp;Plus&nbsp;Graphics&nbsp;645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用 Shadow of the Tomb Raider 1.0.1，采用内置基准、1440x900 分辨率和中等设置。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\"font-size: 16px;\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Xcode&nbsp;12.2 和 Create&nbsp;ML&nbsp;2.0 进行，并在 app 中创建一个动作分类模型。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\"font-size: 16px;\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片、8GB RAM 和 512GB 固态硬盘的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试。测试 Apple&nbsp;TV app 影片播放时的电池续航时间，是通过播放高清 1080p 内容得出的，测试时显示屏亮度从最小亮度开始点击 8 次。此类服务可能仅适用于部分地区和语言。电池续航时间依使用情况和设置的不同可能有所差异。详情请参阅&nbsp;<a href=\"https://www.apple.com.cn/batteries/\">apple.com.cn/batteries</a>。</span></li><li><span style=\"font-size: 16px;\">1TB = 1 万亿字节；格式化之后的实际容量可能较小。</span></li><li><span style=\"font-size: 16px;\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片、16GB RAM 和 2TB 固态硬盘的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试。测试使用 FIO&nbsp;3.23 进行，测试条件为 1024KB 请求大小，150GB 测试文件，IO 深度为 8。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\"font-size: 16px;\">速度依据理论上的数据吞吐率，并可能有所差异。</span></li><li><span style=\"font-size: 16px;\">屏幕尺寸为对角线长度。</span></li><li><span style=\"font-size: 16px;\">Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片 (集成 8 核图形处理器)、8GB RAM 和 512GB 固态硬盘的 MacBook Air 系统进行了此项测试。测试 Apple TV app 影片播放时的电池续航时间，是通过播放高清 1080p 内容得出的，测试时显示屏亮度从最小亮度开始点击 8 次。此类服务可能仅适用于部分地区和语言。电池续航时间依使用情况和设置的不同可能有所差异。详情请参阅&nbsp;<a href=\"https://www.apple.com.cn/batteries/\">apple.com.cn/batteries</a>。</span></li><li><span style=\"font-size: 16px;\">Intel 处理器机型可选配最高达 32GB 内存和最高达 4TB 存储设备。1TB = 1 万亿字节；格式化之后的实际容量可能较小。</span></li><li><span style=\"font-size: 16px;\">Apple 于 2019 年 10 月使用试生产的配备 2.3GHz 8 核 Intel Core i9 处理器、16GB RAM 和 1TB 固态硬盘的 16 英寸 MacBook&nbsp;Pro 系统进行了此项测试。测试无线上网操作时的电池续航时间，是通过无线浏览 25 个受欢迎的网站得出的，测试时显示屏调至最大亮度的 75%，或从最小亮度开始点击 12 次。测试 Apple TV app 影片播放时的电池续航时间，是通过播放高清 1080p 内容得出的，测试时显示屏调至最大亮度的 75%，或从最小亮度开始点击 12 次。此类服务可能仅适用于部分地区和语言。测试待机时的电池续航时间，是通过让系统连接至无线网络并登录 iCloud 账户，进入待机模式的同时保持打开 Safari 浏览器和邮件应用软件，以及将所有系统设置设定为默认得出的。电池续航时间依使用情况和设置的不同可能有所差异。详情请参阅&nbsp;<a href=\"https://www.apple.com.cn/batteries/\">apple.com.cn/batteries</a>。</span></li><li><span style=\"font-size: 16px;\"><span data-pricing-loaded=\"\" data-product-template=\"${credit.display.smart} 的折抵金额以状况良好的 ${ productName }计算得出。\" data-tradein-product=\"mbp-13-tradein\">RMB&nbsp;3600 的折抵金额以状况良好的 MacBook Pro i7 3.5GHz 13 英寸 (2017 年中) 512GB 固态硬盘计算得出。</span>实际折抵金额取决于设备的状况、配置、制造年份，以及发售国家或地区。年满 18 周岁及以上者才能享受此项折抵换购服务。并非所有设备都符合折抵换购条件。Apple&nbsp;Store 零售店不提供电脑产品的折抵换购服务。Apple 的<a href=\"https://reuserecycle.ifengpai.com/mac/reuserecycle\" rel=\"nofollow\" target=\"_blank\">折抵服务合作伙伴</a>将提供关于符合条件设备的折抵与回收的更多信息。可能需要遵循限定条款和条件。所支付金额基于所收到的设备状况与在估算折抵金额时你所提供的描述是否相符。Apple 或其折抵服务合作伙伴保留出于任何原因拒绝或限制任何设备 (及其数量) 的权利。</span></li></ol><p data-f-id=\"pbf\" style=\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\">Powered by <a href=\"https://www.froala.com/wysiwyg-editor?pb=1\" title=\"Froala Editor\">Froala Editor</a></p>',NULL,29900),
	(13,'澳洲考拉摆件小闹钟全球购','040105',25,8,1615019405024,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/w/60433cd228d9591c22e27131h7mt2rzb.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"},{\"label\":\"尺寸\",\"value\":\"20cm\"}],\"price\":19900,\"sno\":\"2\",\"stock\":100000}]','[{\"label\":\"材质\",\"value\":\"塑胶\"},{\"label\":\"机芯\",\"value\":\"瑞士\"},{\"label\":\"产地\",\"value\":\"澳洲进口\"}]',1,1,'<ol><li><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/g/60433dd828d9591c22e27135map6lrh9.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></li></ol><p data-f-id=\"pbf\" style=\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\">Powered by <a href=\"https://www.froala.com/wysiwyg-editor?pb=1\" title=\"Froala Editor\">Froala Editor</a></p>',NULL,19900),
	(14,'布艺绿色摩登色彩一人坐高档产品沙发','010302',25,7,1615019754039,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/3/60433e7428d9591c22e27136da3eocpq.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"80*80\"},{\"label\":\"颜色\",\"value\":\"绿色\"}],\"price\":109900,\"sno\":\"2\",\"stock\":137108}]','[{\"label\":\"产地\",\"value\":\"法国\"}]',1,1,'<ol><li><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/w/60433ee428d9591c22e271370ust8dvi.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></li></ol><p data-f-id=\"pbf\" style=\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\">Powered by <a href=\"https://www.froala.com/wysiwyg-editor?pb=1\" title=\"Froala Editor\">Froala Editor</a></p>',NULL,109900),
	(15,'纯实木斗柜精装白橡木全场包邮','010103',25,8,1615184156109,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/s/6045c0f228d9591c22e271405xzo8jqb.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"米黑\"},{\"label\":\"材质\",\"value\":\"白橡木\"}],\"price\":239900,\"sno\":\"2\",\"stock\":13131}]','[{\"label\":\"产地\",\"value\":\"非洲\"}]',1,1,'<p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/k/6045c0de28d9591c22e2713fty1fsk5r.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p data-f-id=\"pbf\" style=\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\">Powered by <a href=\"https://www.froala.com/wysiwyg-editor?pb=1\" title=\"Froala Editor\">Froala Editor</a></p>',NULL,239900),
	(16,'多种组合现在工艺造像花瓶瓷器','040102',25,8,1615184395884,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/j/6045c16728d9591c22e27141zw5yujay.png\"],\"params\":[{\"label\":\"组合1\",\"value\":\"2高+1矮\"},{\"label\":\"组合2\",\"value\":\"全部组合\"}],\"price\":30000,\"sno\":\"2\",\"stock\":1111}]','[{\"label\":\"材质\",\"value\":\"瓷器\"},{\"label\":\"产地\",\"value\":\"义乌\"}]',1,1,'<ol><li><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/2/6045c20728d9591c22e271439r2cosb5.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></li></ol><p data-f-id=\"pbf\" style=\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\">Powered by <a href=\"https://www.froala.com/wysiwyg-editor?pb=1\" title=\"Froala Editor\">Froala Editor</a></p>',NULL,30000),
	(17,'木之物高级多功能收纳盒木之物高级多功能收纳盒木之物高级多功能收纳盒','050302',25,9,1615184730637,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/q/6045c28428d9591c22e27144652re354.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"金属\"},{\"label\":\"颜色\",\"value\":\"米色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":2341232},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/n/6045c2c128d9591c22e27146p0fnh16g.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"},{\"label\":\"颜色\",\"value\":\"橘色\"}],\"price\":12900,\"sno\":\"123\",\"stock\":11111}]','[{\"label\":\"产地\",\"value\":\"义乌\"},{\"label\":\"材质\",\"value\":\"金属&陶瓷&玻璃\"}]',1,1,'<ol><li><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/n/6045c33928d9591c22e271487w2cr4b0.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/d/6045c31628d9591c22e27147igl7c8s1.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></li></ol><p data-f-id=\"pbf\" style=\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\">Powered by <a href=\"https://www.froala.com/wysiwyg-editor?pb=1\" title=\"Froala Editor\">Froala Editor</a></p>',NULL,12900),
	(18,'精致塑胶洗脸盆多套组合经济实用','050202',25,8,1615185789653,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045c59a28d9591c22e2714aixs8e7u6.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"40cm\"}],\"price\":2990,\"sno\":\"123131\",\"stock\":12222}]','[{\"label\":\"材料\",\"value\":\"塑胶\"}]',1,1,'<p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/o/6045c5e228d9591c22e2714csedzrf9g.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p data-f-id=\"pbf\" style=\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\">Powered by <a href=\"https://www.froala.com/wysiwyg-editor?pb=1\" title=\"Froala Editor\">Froala Editor</a></p>',NULL,2990),
	(19,'垃圾桶精致塑胶盆多套组合经济实用','050201',25,8,1615185790492,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/s/6045c7e4237f5929482e8e8eeeijdw55.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"40cm\"}],\"price\":2990,\"sno\":\"123131\",\"stock\":12222}]','[{\"label\":\"材料\",\"value\":\"塑胶\"}]',1,1,'<p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/o/6045c5e228d9591c22e2714csedzrf9g.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p data-f-id=\"pbf\" style=\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\">Powered by <a href=\"https://www.froala.com/wysiwyg-editor?pb=1\" title=\"Froala Editor\">Froala Editor</a></p>',NULL,2990),
	(20,'顾家精品布艺沙发意大利设计师独家设计','010302',25,7,1615191785072,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045de0e6baaf92be98f7927vb7fq4c8.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"布艺\"}],\"price\":299900,\"sno\":\"122112\",\"stock\":3112321}]','[{\"label\":\"产地\",\"value\":\"意大利\"}]',1,1,'<p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\">',NULL,299900),
	(21,'创意茶几意大利设计师Mtojio独家新品','010503',25,10,1615191957747,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/p/6045df3d6baaf92be98f792aji2x9apg.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"实木\"}],\"price\":199900,\"sno\":\"122112\",\"stock\":312}]','[{\"label\":\"产地\",\"value\":\"意大利\"}]',1,1,'<p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\">',NULL,199900),
	(22,'实木果盘坚果盘','050304',22,8,1615192482718,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/9/6045e11e6baaf92be98f792czzkxc1f5.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"乌木\"}],\"price\":29900,\"sno\":\"122112\",\"stock\":1331}]','[{\"label\":\"产地\",\"value\":\"意大利\"}]',1,1,'<p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/8/6045e1966baaf92be98f792fh3avbvch.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p data-f-id=\"pbf\" style=\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\">Powered by <a href=\"https://www.froala.com/wysiwyg-editor?pb=1\" title=\"Froala Editor\">Froala Editor</a></p>',NULL,29900),
	(23,'陶艺托盘三件套国际大牌阿玛尼','050303',22,4,1615192595060,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/k/6045e1ed6baaf92be98f7930v6t6j1x9.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"陶艺\"}],\"price\":1299900,\"sno\":\"122112\",\"stock\":313}]','[{\"label\":\"产地\",\"value\":\"意大利\"}]',1,1,'<p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\">',NULL,1299900),
	(24,'精致陶瓷两件花瓶摆件可插花','040102',22,7,1615192670554,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045e2266baaf92be98f7931gwg47mnn.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"}],\"price\":37900,\"sno\":\"122112\",\"stock\":6419741}]','[{\"label\":\"产地\",\"value\":\"意大利\"}]',1,1,'<p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\">',NULL,37900);

/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product_brand
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_brand`;

CREATE TABLE `product_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `logo` varchar(1024) NOT NULL,
  `priority` int(5) DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '2',
  `created_at` bigint(20) NOT NULL,
  `sequences` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `product_brand` WRITE;
/*!40000 ALTER TABLE `product_brand` DISABLE KEYS */;

INSERT INTO `product_brand` (`id`, `name`, `logo`, `priority`, `status`, `created_at`, `sequences`)
VALUES
	(4,'阿玛尼','https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/x/604231424731815558ab52batyttyy2n.png',1,1,1614950731535,'[\"010000\"]'),
	(5,'测试品牌','https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/n/60432feb3dff57183c44abb5lfsfmt24.png',1,1,1614951198426,'[\"020000\",\"010000\"]'),
	(6,'Apple','https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/g/6042e0f3a7a4b70f22a91729hmrziuz9.png',1,1,1614995715028,'[\"030000\"]'),
	(7,'顾家','https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/2/60432f4f3dff57183c44abb3qtawu6x0.png',1,1,1615015779296,'[\"010000\",\"020000\",\"040000\"]'),
	(8,'宜家','https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/c/60432fc93dff57183c44abb4c7xiszgn.png',1,1,1615015897672,'[\"010000\",\"020000\",\"050000\",\"030000\",\"040000\"]'),
	(9,'木之物','https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/5/60432ff83dff57183c44abb6lj8xb74e.png',1,1,1615015945328,'[\"010000\",\"020000\"]'),
	(10,'月星家居','https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/h/604330143dff57183c44abb7r0vw1h5y.png',1,1,1615015972320,'[\"020000\",\"040000\"]');

/*!40000 ALTER TABLE `product_brand` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `priority` int(5) DEFAULT '1',
  `sequence` varchar(6) DEFAULT '000000',
  `status` tinyint(1) NOT NULL DEFAULT '2',
  `icon` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;

INSERT INTO `product_category` (`id`, `name`, `parent_id`, `priority`, `sequence`, `status`, `icon`)
VALUES
	(7,'家具',0,1,'010000',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/4/604230bb4731815558ab52b8txn00bds.png'),
	(9,'柜子',7,1,'010100',1,''),
	(11,'衣柜',9,1,'010101',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/r/604328bf3dff57183c44ab785emvax27.png'),
	(13,'家居',0,1,'020000',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/3/6042314404abb65c9f835449z2wee1yt.png'),
	(14,'家纺',13,1,'020100',1,''),
	(15,'测试三级分类',14,1,'020101',2,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/y/6042316204abb65c9f83544ap0iamhp1.png'),
	(16,'家电',0,1,'030000',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/i/6042d8cda7a4b70f22a91725e33vulmh.png'),
	(17,'大家电',16,1,'030100',1,''),
	(18,'iphone',17,1,'030101',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/q/6042e077a7a4b70f22a91728wbbpn3x5.png'),
	(19,'小家电',16,1,'030200',1,''),
	(20,'MacBook Pro',19,1,'030201',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/3/6042e1ccb29004228a3c4f6burfiblbd.png'),
	(21,'huawei',17,1,'030102',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/m/6043183d3dff57183c44ab68bmc428tf.png'),
	(22,'家饰',0,1,'040000',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/m/604327863dff57183c44ab70wbze1xy5.png'),
	(23,'空间',0,1,'050000',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/j/604327ab3dff57183c44ab71ic70xy70.png'),
	(24,'床',7,1,'010200',1,''),
	(25,'沙发',7,1,'010300',1,''),
	(26,'椅子',7,1,'010400',1,''),
	(27,'桌子',7,1,'010500',1,''),
	(28,'收纳柜',9,1,'010102',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/x/604328713dff57183c44ab75ifcxyb5g.png'),
	(29,'斗柜',9,1,'010103',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/t/6043284b3dff57183c44ab73ocdh0ljg.png'),
	(30,'电视柜',9,1,'010104',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/5/604328633dff57183c44ab74ia4d742g.png'),
	(31,'鞋柜',9,1,'010105',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/y/604328983dff57183c44ab76r5849znf.png'),
	(32,'玄关柜',9,1,'010106',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/n/604328ac3dff57183c44ab77g0u6v9cy.png'),
	(33,'软包',24,1,'010201',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/8/604328ee3dff57183c44ab79x9jlbmge.png'),
	(34,'实木',24,1,'010202',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/0/6043290e3dff57183c44ab7bo3ulnale.png'),
	(35,'铁艺',24,1,'010203',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/0/604329233dff57183c44ab7cyrmy80k2.png'),
	(36,'办公',25,1,'010301',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/3/6043293d3dff57183c44ab7d9bito89j.png'),
	(37,'布艺',25,1,'010302',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/l/604329503dff57183c44ab7efdsn31ak.png'),
	(38,'懒人休闲',25,1,'010303',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/7/604329653dff57183c44ab7f6jyziz9s.png'),
	(39,'皮质',25,1,'010304',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/5/604329883dff57183c44ab80zaav95pw.png'),
	(40,'实木',25,1,'010305',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/8/604329973dff57183c44ab81168ri6au.png'),
	(41,'办公',26,1,'010401',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/t/604329b03dff57183c44ab825e6wicko.png'),
	(42,'餐椅',26,1,'010402',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/s/604329c03dff57183c44ab839k3p4btn.png'),
	(43,'实木',26,1,'010403',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/v/604329d03dff57183c44ab84mfillhvf.png'),
	(44,'换鞋凳',26,1,'010404',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/8/604329eb3dff57183c44ab85hqjupvpk.png'),
	(45,'休闲',26,1,'010405',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/3/604329f93dff57183c44ab86fj8iy6n7.png'),
	(46,'办公桌',27,1,'010501',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/60432a1c3dff57183c44ab87mrhbt8bn.png'),
	(47,'餐桌',27,1,'010502',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/4/60432a363dff57183c44ab88ipdz7f63.png'),
	(48,'茶几',27,1,'010503',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/m/60432a483dff57183c44ab89p2sfowwb.png'),
	(49,'书桌',27,1,'010504',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/i/60432a583dff57183c44ab8aonsjxkgi.png'),
	(50,'床上用品',14,1,'020102',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/3/60432a923dff57183c44ab8bcq7vraz9.png'),
	(51,'地毯',14,1,'020103',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/60432aa13dff57183c44ab8cwn130z36.png'),
	(52,'家居服',14,1,'020104',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/b/60432ab33dff57183c44ab8dgxkcg1v1.png'),
	(53,'靠枕',14,1,'020105',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/n/60432ac23dff57183c44ab8ejx9v1rqj.png'),
	(54,'沙发巾',14,1,'020106',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/0/60432ad33dff57183c44ab8fzhf972hq.png'),
	(55,'拖鞋',14,1,'020107',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/60432aeb3dff57183c44ab90akf5ms68.png'),
	(56,'玄关垫',14,1,'020108',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/k/60432afc3dff57183c44ab91acu3hxfv.png'),
	(57,'桌布',14,1,'020109',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/2/60432b0a3dff57183c44ab92qa7nys77.png'),
	(58,'冰箱',17,1,'030103',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/8/60432b583dff57183c44ab93buknt1fw.png'),
	(59,'电视',17,1,'030104',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/x/60432b663dff57183c44ab94mswra99d.png'),
	(60,'空调',17,1,'030105',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/w/60432b753dff57183c44ab95zyurhivi.png'),
	(61,'洗衣机',17,1,'030106',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/0/60432b853dff57183c44ab96f2iw4c9y.png'),
	(62,'咖啡机',19,1,'030202',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/0/60432bb03dff57183c44ab97lzv5e2jd.png'),
	(63,'面包机',19,1,'030203',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/t/60432bc93dff57183c44ab980szqfjlq.png'),
	(64,'烤箱',19,1,'030204',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/a/60432bd63dff57183c44ab99q5gi6gij.png'),
	(65,'饮水机',19,1,'030205',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/60432be23dff57183c44ab9ae5gii2dy.png'),
	(66,'微波炉',19,1,'030206',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/x/60432bf13dff57183c44ab9b1in50m4g.png'),
	(67,'摆件',22,1,'040100',1,''),
	(68,'灯',22,1,'040200',1,''),
	(69,'装饰画',22,1,'040300',1,''),
	(70,'玻璃',67,1,'040101',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/l/60432c373dff57183c44ab9c275jis99.png'),
	(71,'瓷器',67,1,'040102',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/k/60432c4d3dff57183c44ab9dsehg04aq.png'),
	(72,'雕塑',67,1,'040103',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/s/60432c5c3dff57183c44ab9e4d66gpvv.png'),
	(73,'木雕',67,1,'040104',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/w/60432c6b3dff57183c44ab9f2ynt9ufw.png'),
	(74,'现代工艺',67,1,'040105',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/q/60432c7c3dff57183c44aba0om1z7kzw.png'),
	(75,'玉器',67,1,'040106',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/s/60432c903dff57183c44aba1rb5e9t8p.png'),
	(76,'落地灯',68,1,'040201',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/l/60432cbc3dff57183c44aba2xu4oz8ge.png'),
	(77,'台灯',68,1,'040202',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/60432ccf3dff57183c44aba3ddjlujlm.png'),
	(78,'立体画',69,1,'040301',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/8/60432ce83dff57183c44aba4yejc3867.png'),
	(79,'数码打印',69,1,'040302',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/6/60432cfc3dff57183c44aba5e5pyz7iu.png'),
	(80,'油画',69,1,'040303',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/60432d0c3dff57183c44aba6wpa6bt23.png'),
	(81,'厨房',23,1,'050100',1,''),
	(82,'清洁',23,1,'050200',1,''),
	(83,'收纳',23,1,'050300',1,''),
	(84,'其他',23,1,'050400',1,''),
	(85,'扫帚',81,1,'050101',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/60432d683dff57183c44aba7f7iilvy7.png'),
	(86,'工具',84,1,'050401',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/r/60432d803dff57183c44aba86l2pip33.png'),
	(87,'垃圾桶',82,1,'050201',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/w/60432d953dff57183c44aba9r7ykcssx.png'),
	(88,'脸盆',82,1,'050202',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/8/60432dac3dff57183c44abaa0n8k9hl4.png'),
	(89,'拖把',82,1,'050203',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/l/60432dc83dff57183c44abab9zawj2n4.png'),
	(90,'调料盒',83,1,'050301',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/z/60432de13dff57183c44abacpnk9vzsn.png'),
	(91,'收纳盒',83,1,'050302',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/r/60432df13dff57183c44abadwdumkln4.png'),
	(92,'收纳篮',83,1,'050303',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/x/60432e003dff57183c44abaej3xdx514.png'),
	(93,'收纳盘',83,1,'050304',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/7/60432e273dff57183c44abafdd9farmi.png'),
	(94,'洗簌',83,1,'050305',1,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/o/60432e343dff57183c44abb03wxr6riz.png'),
	(95,'dvcfaedr',7,1,'010600',2,''),
	(96,'ds cd',7,1,'010700',2,'');

/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_template`;

CREATE TABLE `product_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(128) DEFAULT NULL COMMENT '名称',
  `sequence` varchar(1024) DEFAULT NULL COMMENT '分类ID',
  `params` text COMMENT '参数：内容属性部分',
  `content` longtext COMMENT '内容图文部分',
  `created_at` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：1.正常2.停用',
  `specs` varchar(10000) DEFAULT NULL COMMENT '参数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `product_template` WRITE;
/*!40000 ALTER TABLE `product_template` DISABLE KEYS */;

INSERT INTO `product_template` (`id`, `title`, `sequence`, `params`, `content`, `created_at`, `status`, `specs`)
VALUES
	(4,'模板测试','020101','[{\"label\":\"参数\",\"value\":\"参数内容\"}]','<p>商品内容</p>',1614950965483,1,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/q/6042320304abb65c9f83544dzrw4svpx.png\"],\"params\":[{\"label\":\"高度\",\"value\":\"100\"},{\"label\":\"宽度\",\"value\":\"200\"}],\"price\":120000,\"sno\":\"12315\"}]'),
	(5,'apple','030201','[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}]','<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Affinity&nbsp;Photo&nbsp;1.9.0.199 进行，采用内置基准版本 1900。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Logic&nbsp;Pro&nbsp;10.6.0 进行，采用一个包含多条音轨的项目，每条音轨均应用一个 Amp Designer 插件实例。播放时逐条加载音轨，直至中央处理器超载为止。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器和 Intel Iris Plus Graphics 645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一个时长 10 秒的项目，项目包含分辨率为 3840x2160、帧率为 30 fps 的 Apple&nbsp;ProRes 422 视频。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片、16GB RAM 和 2TB 固态硬盘的 13 英寸&nbsp;MacBook&nbsp;Pro 系统进行了此项测试。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一个时长为 2 分钟的项目，项目包含分辨率为 8192x4320、帧率为 23.98 fps 的 8K Apple ProRes 422 HQ 媒体。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器和 Intel&nbsp;Iris&nbsp;Plus&nbsp;Graphics&nbsp;645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用 Unity&nbsp;2018.3.6f1 进行，采用《Book of the Dead》演示，分辨率设为 1440x900。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器和 Intel&nbsp;Iris&nbsp;Plus&nbsp;Graphics&nbsp;645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Shapr3D&nbsp;3.45.0 进行，采用一个 288.2MB 的模型。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器和 Intel&nbsp;Iris&nbsp;Plus&nbsp;Graphics&nbsp;645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用 Shadow of the Tomb Raider 1.0.1，采用内置基准、1440x900 分辨率和中等设置。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Xcode&nbsp;12.2 和 Create&nbsp;ML&nbsp;2.0 进行，并在 app 中创建一个动作分类模型。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片、8GB RAM 和 512GB 固态硬盘的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试。测试 Apple&nbsp;TV app 影片播放时的电池续航时间，是通过播放高清 1080p 内容得出的，测试时显示屏亮度从最小亮度开始点击 8 次。此类服务可能仅适用于部分地区和语言。电池续航时间依使用情况和设置的不同可能有所差异。详情请参阅&nbsp;<a href=\"https://www.apple.com.cn/batteries/\">apple.com.cn/batteries</a>。</li><li>1TB = 1 万亿字节；格式化之后的实际容量可能较小。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片、16GB RAM 和 2TB 固态硬盘的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试。测试使用 FIO&nbsp;3.23 进行，测试条件为 1024KB 请求大小，150GB 测试文件，IO 深度为 8。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>速度依据理论上的数据吞吐率，并可能有所差异。</li><li>屏幕尺寸为对角线长度。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片 (集成 8 核图形处理器)、8GB RAM 和 512GB 固态硬盘的 MacBook Air 系统进行了此项测试。测试 Apple TV app 影片播放时的电池续航时间，是通过播放高清 1080p 内容得出的，测试时显示屏亮度从最小亮度开始点击 8 次。此类服务可能仅适用于部分地区和语言。电池续航时间依使用情况和设置的不同可能有所差异。详情请参阅&nbsp;<a href=\"https://www.apple.com.cn/batteries/\">apple.com.cn/batteries</a>。</li><li>Intel 处理器机型可选配最高达 32GB 内存和最高达 4TB 存储设备。1TB = 1 万亿字节；格式化之后的实际容量可能较小。</li><li>Apple 于 2019 年 10 月使用试生产的配备 2.3GHz 8 核 Intel Core i9 处理器、16GB RAM 和 1TB 固态硬盘的 16 英寸 MacBook&nbsp;Pro 系统进行了此项测试。测试无线上网操作时的电池续航时间，是通过无线浏览 25 个受欢迎的网站得出的，测试时显示屏调至最大亮度的 75%，或从最小亮度开始点击 12 次。测试 Apple TV app 影片播放时的电池续航时间，是通过播放高清 1080p 内容得出的，测试时显示屏调至最大亮度的 75%，或从最小亮度开始点击 12 次。此类服务可能仅适用于部分地区和语言。测试待机时的电池续航时间，是通过让系统连接至无线网络并登录 iCloud 账户，进入待机模式的同时保持打开 Safari 浏览器和邮件应用软件，以及将所有系统设置设定为默认得出的。电池续航时间依使用情况和设置的不同可能有所差异。详情请参阅&nbsp;<a href=\"https://www.apple.com.cn/batteries/\">apple.com.cn/batteries</a>。</li><li><span data-pricing-loaded=\"\" data-product-template=\"${credit.display.smart} 的折抵金额以状况良好的 ${ productName }计算得出。\" data-tradein-product=\"mbp-13-tradein\">RMB&nbsp;3600 的折抵金额以状况良好的 MacBook Pro i7 3.5GHz 13 英寸 (2017 年中) 512GB 固态硬盘计算得出。</span>实际折抵金额取决于设备的状况、配置、制造年份，以及发售国家或地区。年满 18 周岁及以上者才能享受此项折抵换购服务。并非所有设备都符合折抵换购条件。Apple&nbsp;Store 零售店不提供电脑产品的折抵换购服务。Apple 的<a href=\"https://reuserecycle.ifengpai.com/mac/reuserecycle\" rel=\"nofollow\" target=\"_blank\">折抵服务合作伙伴</a>将提供关于符合条件设备的折抵与回收的更多信息。可能需要遵循限定条款和条件。所支付金额基于所收到的设备状况与在估算折抵金额时你所提供的描述是否相符。Apple 或其折抵服务合作伙伴保留出于任何原因拒绝或限制任何设备 (及其数量) 的权利。</li></ol>',1614996357707,1,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\"},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\"}]'),
	(6,'沙发','010302','[{\"label\":\"产地\",\"value\":\"意大利\"}]','<p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><img src=\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\">',1615191687364,1,'[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045de0e6baaf92be98f7927vb7fq4c8.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"布艺\"}],\"price\":299900,\"sno\":\"122112\"}]');

/*!40000 ALTER TABLE `product_template` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table scene
# ------------------------------------------------------------

DROP TABLE IF EXISTS `scene`;

CREATE TABLE `scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(16) NOT NULL DEFAULT '',
  `status` tinyint(4) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `products` text NOT NULL,
  `content` text,
  `img` varchar(1024) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `sub_heading` varchar(140) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `scene` WRITE;
/*!40000 ALTER TABLE `scene` DISABLE KEYS */;

INSERT INTO `scene` (`id`, `title`, `status`, `created_at`, `products`, `content`, `img`, `author_id`, `type`, `sub_heading`)
VALUES
	(3,'情景购标题',2,1614951679795,'[{\"brandId\":4,\"content\":\"<p>这是一块可爱的香皂</p>\",\"createdAt\":1614951489149,\"id\":8,\"merchantId\":21,\"name\":\"刷子\",\"params\":[{\"label\":\"规格\",\"value\":\"200*4000\"}],\"price\":3,\"priority\":1,\"sequence\":\"010101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/m/604231e04731815558ab52bdr1ywidbg.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"}],\"price\":3,\"sno\":\"21345\",\"stock\":23}],\"status\":1},{\"brandId\":5,\"content\":\"<p>sadasdasd</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614951461099,\"id\":7,\"merchantId\":22,\"name\":\"测试商品\",\"params\":[{\"label\":\"qeqw\",\"value\":\"qweqweqweq\"}],\"price\":1200,\"priority\":1,\"sequence\":\"020101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/h/6042340d04abb65c9f8354544zkw5flx.png\"],\"params\":[{\"label\":\"111\",\"value\":\"222\"},{\"label\":\"333\",\"value\":\"444\"}],\"price\":1200,\"sno\":\"12020\",\"stock\":120}],\"status\":1}]','<p>情景描述</p>','https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/f/604234ef04abb65c9f835456tk79i17u.png',4,3,'情景购副标题'),
	(4,'10个超简单的收纳方法！',1,1615016892132,'[{\"brandId\":4,\"content\":\"<p>这是一块可爱的香皂</p>\",\"createdAt\":1614951489149,\"id\":8,\"merchantId\":21,\"name\":\"刷子\",\"params\":[{\"label\":\"规格\",\"value\":\"200*4000\"}],\"price\":3,\"priority\":1,\"sequence\":\"010101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/m/604231e04731815558ab52bdr1ywidbg.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"}],\"price\":3,\"sno\":\"21345\",\"stock\":23}],\"status\":1},{\"brandId\":5,\"content\":\"<p>sadasdasd</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614951461099,\"id\":7,\"merchantId\":22,\"name\":\"测试商品\",\"params\":[{\"label\":\"qeqw\",\"value\":\"qweqweqweq\"}],\"price\":1200,\"priority\":1,\"sequence\":\"020101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/h/6042340d04abb65c9f8354544zkw5flx.png\"],\"params\":[{\"label\":\"111\",\"value\":\"222\"},{\"label\":\"333\",\"value\":\"444\"}],\"price\":1200,\"sno\":\"12020\",\"stock\":120}],\"status\":1},{\"brandId\":8,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/o/6045c5e228d9591c22e2714csedzrf9g.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1615185790492,\"id\":19,\"merchantId\":25,\"name\":\"垃圾桶精致塑胶盆多套组合经济实用\",\"params\":[{\"label\":\"材料\",\"value\":\"塑胶\"}],\"price\":2990,\"priority\":1,\"sequence\":\"050201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/s/6045c7e4237f5929482e8e8eeeijdw55.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"40cm\"}],\"price\":2990,\"sno\":\"123131\",\"stock\":12222}],\"status\":1},{\"brandId\":8,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/o/6045c5e228d9591c22e2714csedzrf9g.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1615185789653,\"id\":18,\"merchantId\":25,\"name\":\"精致塑胶洗脸盆多套组合经济实用\",\"params\":[{\"label\":\"材料\",\"value\":\"塑胶\"}],\"price\":2990,\"priority\":1,\"sequence\":\"050202\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045c59a28d9591c22e2714aixs8e7u6.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"40cm\"}],\"price\":2990,\"sno\":\"123131\",\"stock\":12222}],\"status\":1}]','<p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t11.baidu.com/it/u=450840916,3459095237&fm=173&app=25&f=JPEG?w=640&h=360&s=02839C4D4C2D293E5884D42A03007049\" data-loaded=\"0\" class=\"fr-fic fr-dii\"></span></p><p><span style=\"font-size: 16px;\">*日剧《我的家里空无一物》中橱柜的杯具收纳，就连每隔杯子的间距都是一致的</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t11.baidu.com/it/u=2825914612,715516593&fm=173&app=25&f=JPEG?w=640&h=426&s=37FA7D859862789E518D19F203005030\" data-loaded=\"0\" class=\"fr-fic fr-dii\"></span></p><p><span style=\"font-size: 16px;\">*日剧《面包和汤和猫咪好天气》中仅仅有条的厨房</span></p><p><span style=\"font-size: 16px;\">看到杂乱的家，想收拾却无从下手？或者苦恼小户型怎么能收下超多的生活用品？不是你做不到只是你没有掌握收纳的诀窍。接下来介绍的10个收纳方法，会让你茅塞顿开，成为收纳达人指日可待。</span></p><p><span style=\"font-size: 16px;\">1.空间的立体利用</span></p><p><span style=\"font-size: 16px;\">家里会有很多橱柜空间很深，如果放满了里面很不好拿放，放不满空间就浪费了一半。像这样的立体空间我们可以在空间内放一些可以前后滑动的小筐筐，充分利用空间的同时也可以做好分类，方便拿放。</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t12.baidu.com/it/u=82148021,3276484885&fm=173&app=25&f=JPEG?w=640&h=959&s=D128BB57440146EC06BDE56B0300B06B\" data-loaded=\"0\" class=\"fr-fic fr-dii\">空间的立体利用</span></p><p><span style=\"font-size: 16px;\">2.餐桌的边边角角要充分利用</span></p><p><span style=\"font-size: 16px;\">其实，无论房间面积多小都会多多少少有一些空间被我们忽略，如果把这些空间利用起来，就会变出好多的空间收纳。餐厅的桌子底下就可以用来收纳书、杂志、文具等。同样，厨房的柜子也可以在凹进去的地方做一些改造变成收纳，这样既可以做装饰又可以收纳一些自己平常看的书籍或者小物件。</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t10.baidu.com/it/u=1269434967,1034622585&fm=173&app=25&f=JPEG?w=640&h=427&s=D72426E2CB322E881E19543C03001048\" data-loaded=\"0\" class=\"fr-fic fr-dii\">餐桌的边边角角要充分利用</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t12.baidu.com/it/u=1963199735,3528879088&fm=173&app=25&f=JPEG?w=640&h=959&s=B428FE176643534F1E82A0750300506B\" data-loaded=\"0\" class=\"fr-fic fr-dii\">餐桌的边边角角要充分利用</span></p><p><span style=\"font-size: 16px;\">3.灵活运用死角</span></p><p><span style=\"font-size: 16px;\">利用死角进行收纳的诀窍是，如果不说那里放了东西就不会有人看的出来！例如客厅沙发后面挂装饰画的地方可以设置一个加盖的木板凹槽，里面收纳好东西后盖上盖子就看不出来。</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t10.baidu.com/it/u=750199491,244264368&fm=173&app=25&f=JPEG?w=640&h=427&s=CD1A2FD77EFB1F8E72B871730300E070\" data-loaded=\"0\" class=\"fr-fic fr-dii\">灵活运用死角</span></p><p><span style=\"font-size: 16px;\">4.使用场所就是收纳场所</span></p><p><span style=\"font-size: 16px;\">收纳不是把东西随便的放在一起，而是为了更方便的使用。所以我们在收纳的时候要秉承一个原则，在哪里使用就尽量在哪里收纳。比如我们洗漱要用的毛巾、牙刷、沐浴露等，我们就可以在洗漱的就近用一些隔断或者橱柜，把这些东西放在一起，这样在洗澡前，就不用再去卧室取，而是直接在浴室一个柜子里就能拿全东西。</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t10.baidu.com/it/u=2375220090,3153935732&fm=173&app=25&f=JPEG?w=640&h=959&s=EE7822D4634B5EEE33E5A0710300F072\" data-loaded=\"0\" class=\"fr-fic fr-dii\">使用场所就是收纳场所</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t10.baidu.com/it/u=588426162,1801002218&fm=173&app=25&f=JPEG?w=640&h=959&s=C6518B747EF7769E8408786F0300E060\" data-loaded=\"0\" class=\"fr-fic fr-dii\">使用场所就是收纳场所</span></p><p><span style=\"font-size: 16px;\">5.使用活动的柜子，使小家电可滑动</span></p><p><span style=\"font-size: 16px;\">电饭煲、烤面包机、煮蛋器、搅拌机等一系列的厨房小家电如果放在一些可以滑动的小柜子里就会使厨房清爽很多，而且使用超级方便，再也不用人钻到柜子里去拿最里面的家电了。</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t10.baidu.com/it/u=2727461109,976249022&fm=173&app=25&f=JPEG?w=640&h=872&s=CE48B3560ED256DA86B1F14C0300E072\" data-loaded=\"0\" class=\"fr-fic fr-dii\">使用活动的柜子，使小家电可滑动</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t12.baidu.com/it/u=3314816390,2864178883&fm=173&app=25&f=JPEG?w=640&h=959&s=4D302BD5A677438A54999D760300D071\" data-loaded=\"0\" class=\"fr-fic fr-dii\">使用活动的柜子，使小家电可滑动</span></p><p><span style=\"font-size: 16px;\">6.充分利用洗衣机上方的空间</span></p><p><span style=\"font-size: 16px;\">洗衣机的上方空间也不要浪费，放一些隔断就可以把洗衣液、衣架等相关物品放在上面。</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t12.baidu.com/it/u=1905103913,855716081&fm=173&app=25&f=JPEG?w=640&h=959&s=ADB87B942737438E1AF5F8730300F070\" data-loaded=\"0\" class=\"fr-fic fr-dii\">充分利用洗衣机上方的空间</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t12.baidu.com/it/u=245139629,1233305821&fm=173&app=25&f=JPEG?w=640&h=959&s=C6538276731067DE876434C703007060\" data-loaded=\"0\" class=\"fr-fic fr-dii\">充分利用洗衣机上方的空间</span></p><p><span style=\"font-size: 16px;\">7.万能的挂钩可以增加很多空间收纳</span></p><p><span style=\"font-size: 16px;\">很多柜子的门内侧是一个通常被忽略的空间，如果在门的内侧挂一些S形的挂钩就可以挂很多的小物件，而且关上门之后什么都看不到。同样的道理，储藏室的清洁工具也可以这样收纳。</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t12.baidu.com/it/u=3653944748,2143472280&fm=173&app=25&f=JPEG?w=640&h=959&s=C2F0AD7757135FDA885D556203007060\" data-loaded=\"0\" class=\"fr-fic fr-dii\">万能的挂钩可以增加很多空间收纳</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t11.baidu.com/it/u=948990184,703456527&fm=173&app=25&f=JPEG?w=640&h=959&s=46619A541B737B98D48151410300A0E1\" data-loaded=\"0\" class=\"fr-fic fr-dii\">万能的挂钩可以增加很多空间收纳</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t12.baidu.com/it/u=2468948237,229945673&fm=173&app=25&f=JPEG?w=640&h=959&s=ED3A3BD736AE21BB5BB4A12303007051\" data-loaded=\"0\" class=\"fr-fic fr-dii\">万能的挂钩可以增加很多空间收纳</span></p><p><span style=\"font-size: 16px;\">8.磁铁吸附收纳</span></p><p><span style=\"font-size: 16px;\">现在已经有很多人在利用磁铁吸附收纳刀具等金属物品。其实有很多的金属调味料瓶子也可以利用磁铁吸附在墙上，这样就可以节约桌面上的空间，而且也会很漂亮的。</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t10.baidu.com/it/u=2395048782,3377837868&fm=173&app=25&f=JPEG?w=640&h=427&s=8EC1B25617767F8010D8C15E010040F3\" data-loaded=\"0\" class=\"fr-fic fr-dii\">磁铁吸附收纳</span></p><p><span style=\"font-size: 16px;\">9.妙用文具盒</span></p><p><span style=\"font-size: 16px;\">女生会有很多的包包，我们可以利用很多文具盒、塑料篮作为包包的收纳工具，这样包包可以竖着放，不易变形。厨房可以用文具盒或者塑料篮放在橱柜的顶部，不常用的一些可以放在里面。</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t12.baidu.com/it/u=3338266838,1608220155&fm=173&app=25&f=JPEG?w=640&h=413&s=0021DD10106244AA8868E1DF010080E2\" data-loaded=\"0\" class=\"fr-fic fr-dii\">妙用文具盒</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t12.baidu.com/it/u=2738756504,2987448281&fm=173&app=25&f=JPEG?w=640&h=959&s=E008DF108837738AABA5AD5B030010E3\" data-loaded=\"0\" class=\"fr-fic fr-dii\">妙用文具盒</span></p><p><span style=\"font-size: 16px;\">10.秉承&ldquo;使用时才出现的原则&rdquo;</span></p><p><span style=\"font-size: 16px;\">这个叫&ldquo;备胎&rdquo;收纳方法。使用的时候就出现，平常就默默的呆着，不被发现。这样的家会更加整洁。很多开放式的厨房很多东西都会裸露在外面，客人看到可能会不太美观或者主人在休息的时候看到会有一定的紧张感。这时候可以做一个推拉的挡板挡起来。</span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t10.baidu.com/it/u=3095548938,1225817542&fm=173&app=25&f=JPEG?w=640&h=851&s=54D83AD7CA5756CA12D0756E03004073\" data-loaded=\"0\" class=\"fr-fic fr-dii\">秉承&ldquo;使用时才出现的原则&rdquo;</span></p><div data-reply-id=\"1107425719584347013\"><br></div>','https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/6/6043328a3dff57183c44abbc2lalzgmo.png',5,4,'每次看日剧总是惊叹那些煮妇们的收纳能力'),
	(5,'浴室风格',1,1615180427056,'[{\"brandId\":7,\"content\":\"<ol><li><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/w/60433ee428d9591c22e271370ust8dvi.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1615019754039,\"id\":14,\"merchantId\":25,\"name\":\"布艺绿色摩登色彩一人坐高档产品沙发\",\"params\":[{\"label\":\"产地\",\"value\":\"法国\"}],\"price\":109900,\"priority\":1,\"sequence\":\"010302\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/3/60433e7428d9591c22e27136da3eocpq.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"80*80\"},{\"label\":\"颜色\",\"value\":\"绿色\"}],\"price\":109900,\"sno\":\"2\",\"stock\":137108}],\"status\":1},{\"brandId\":8,\"content\":\"<ol><li><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/g/60433dd828d9591c22e27135map6lrh9.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1615019405024,\"id\":13,\"merchantId\":25,\"name\":\"澳洲考拉摆件小闹钟全球购\",\"params\":[{\"label\":\"材质\",\"value\":\"塑胶\"},{\"label\":\"机芯\",\"value\":\"瑞士\"},{\"label\":\"产地\",\"value\":\"澳洲进口\"}],\"price\":19900,\"priority\":1,\"sequence\":\"040105\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/w/60433cd228d9591c22e27131h7mt2rzb.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"},{\"label\":\"尺寸\",\"value\":\"20cm\"}],\"price\":19900,\"sno\":\"2\",\"stock\":100000}],\"status\":1},{\"brandId\":8,\"content\":\"<ol><li><span style=\\\"font-size: 16px;\\\"><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/f/60433c0428d9591c22e27130qe7dsf0q.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Affinity&nbsp;Photo&nbsp;1.9.0.199 进行，采用内置基准版本 1900。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Logic&nbsp;Pro&nbsp;10.6.0 进行，采用一个包含多条音轨的项目，每条音轨均应用一个 Amp Designer 插件实例。播放时逐条加载音轨，直至中央处理器超载为止。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器和 Intel Iris Plus Graphics 645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一个时长 10 秒的项目，项目包含分辨率为 3840x2160、帧率为 30 fps 的 Apple&nbsp;ProRes 422 视频。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片、16GB RAM 和 2TB 固态硬盘的 13 英寸&nbsp;MacBook&nbsp;Pro 系统进行了此项测试。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一个时长为 2 分钟的项目，项目包含分辨率为 8192x4320、帧率为 23.98 fps 的 8K Apple ProRes 422 HQ 媒体。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器和 Intel&nbsp;Iris&nbsp;Plus&nbsp;Graphics&nbsp;645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用 Unity&nbsp;2018.3.6f1 进行，采用《Book of the Dead》演示，分辨率设为 1440x900。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器和 Intel&nbsp;Iris&nbsp;Plus&nbsp;Graphics&nbsp;645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Shapr3D&nbsp;3.45.0 进行，采用一个 288.2MB 的模型。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器和 Intel&nbsp;Iris&nbsp;Plus&nbsp;Graphics&nbsp;645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用 Shadow of the Tomb Raider 1.0.1，采用内置基准、1440x900 分辨率和中等设置。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Xcode&nbsp;12.2 和 Create&nbsp;ML&nbsp;2.0 进行，并在 app 中创建一个动作分类模型。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片、8GB RAM 和 512GB 固态硬盘的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试。测试 Apple&nbsp;TV app 影片播放时的电池续航时间，是通过播放高清 1080p 内容得出的，测试时显示屏亮度从最小亮度开始点击 8 次。此类服务可能仅适用于部分地区和语言。电池续航时间依使用情况和设置的不同可能有所差异。详情请参阅&nbsp;<a href=\\\"https://www.apple.com.cn/batteries/\\\">apple.com.cn/batteries</a>。</span></li><li><span style=\\\"font-size: 16px;\\\">1TB = 1 万亿字节；格式化之后的实际容量可能较小。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片、16GB RAM 和 2TB 固态硬盘的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试。测试使用 FIO&nbsp;3.23 进行，测试条件为 1024KB 请求大小，150GB 测试文件，IO 深度为 8。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">速度依据理论上的数据吞吐率，并可能有所差异。</span></li><li><span style=\\\"font-size: 16px;\\\">屏幕尺寸为对角线长度。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片 (集成 8 核图形处理器)、8GB RAM 和 512GB 固态硬盘的 MacBook Air 系统进行了此项测试。测试 Apple TV app 影片播放时的电池续航时间，是通过播放高清 1080p 内容得出的，测试时显示屏亮度从最小亮度开始点击 8 次。此类服务可能仅适用于部分地区和语言。电池续航时间依使用情况和设置的不同可能有所差异。详情请参阅&nbsp;<a href=\\\"https://www.apple.com.cn/batteries/\\\">apple.com.cn/batteries</a>。</span></li><li><span style=\\\"font-size: 16px;\\\">Intel 处理器机型可选配最高达 32GB 内存和最高达 4TB 存储设备。1TB = 1 万亿字节；格式化之后的实际容量可能较小。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2019 年 10 月使用试生产的配备 2.3GHz 8 核 Intel Core i9 处理器、16GB RAM 和 1TB 固态硬盘的 16 英寸 MacBook&nbsp;Pro 系统进行了此项测试。测试无线上网操作时的电池续航时间，是通过无线浏览 25 个受欢迎的网站得出的，测试时显示屏调至最大亮度的 75%，或从最小亮度开始点击 12 次。测试 Apple TV app 影片播放时的电池续航时间，是通过播放高清 1080p 内容得出的，测试时显示屏调至最大亮度的 75%，或从最小亮度开始点击 12 次。此类服务可能仅适用于部分地区和语言。测试待机时的电池续航时间，是通过让系统连接至无线网络并登录 iCloud 账户，进入待机模式的同时保持打开 Safari 浏览器和邮件应用软件，以及将所有系统设置设定为默认得出的。电池续航时间依使用情况和设置的不同可能有所差异。详情请参阅&nbsp;<a href=\\\"https://www.apple.com.cn/batteries/\\\">apple.com.cn/batteries</a>。</span></li><li><span style=\\\"font-size: 16px;\\\"><span data-pricing-loaded=\\\"\\\" data-product-template=\\\"${credit.display.smart} 的折抵金额以状况良好的 ${ productName }计算得出。\\\" data-tradein-product=\\\"mbp-13-tradein\\\">RMB&nbsp;3600 的折抵金额以状况良好的 MacBook Pro i7 3.5GHz 13 英寸 (2017 年中) 512GB 固态硬盘计算得出。</span>实际折抵金额取决于设备的状况、配置、制造年份，以及发售国家或地区。年满 18 周岁及以上者才能享受此项折抵换购服务。并非所有设备都符合折抵换购条件。Apple&nbsp;Store 零售店不提供电脑产品的折抵换购服务。Apple 的<a href=\\\"https://reuserecycle.ifengpai.com/mac/reuserecycle\\\" rel=\\\"nofollow\\\" target=\\\"_blank\\\">折抵服务合作伙伴</a>将提供关于符合条件设备的折抵与回收的更多信息。可能需要遵循限定条款和条件。所支付金额基于所收到的设备状况与在估算折抵金额时你所提供的描述是否相符。Apple 或其折抵服务合作伙伴保留出于任何原因拒绝或限制任何设备 (及其数量) 的权利。</span></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1615019132605,\"id\":12,\"merchantId\":25,\"name\":\"咖啡机复古黄色小资情调咖啡机\",\"params\":[{\"label\":\"材质\",\"value\":\"金属\"},{\"label\":\"产地\",\"value\":\"广州\"},{\"label\":\"其他\",\"value\":\"没有\"}],\"price\":29900,\"priority\":1,\"sequence\":\"030202\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/i/60433bbc28d9591c22e2712fnrd9gvks.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"黄色\"}],\"price\":29900,\"sno\":\"1\",\"stock\":100}],\"status\":1},{\"brandId\":6,\"content\":\"<p><span data-pricing-loaded=\\\"\\\" data-product-template=\\\"${credit.display.smart} 的折抵金额以状况良好的 ${ productName }计算得出。\\\" data-tradein-product=\\\"mbp-13-tradein\\\">RMB 3600 的折抵金额以状况良好的 MacBook Pro i7 3.5GHz 13 英寸 (2017 年中) 512GB 固态硬盘计算得出。</span>实际折抵金额取决于设备的状况、配置、制造年份，以及发售国家或地区。年满 18 周岁及以上者才能享受此项折抵换购服务。并非所有设备都符合折抵换购条件。Apple&nbsp;Store 零售店不提供电脑产品的折抵换购服务。Apple 的<a href=\\\"https://reuserecycle.ifengpai.com/mac/reuserecycle\\\" rel=\\\"nofollow\\\" target=\\\"_blank\\\">折抵服务合作伙伴</a>将提供关于符合条件设备的折抵与回收的更多信息。可能需要遵循限定条款和条件。所支付金额基于所收到的设备状况与在估算折抵金额时你所提供的描述是否相符。Apple 或其折抵服务合作伙伴保留出于任何原因拒绝或限制任何设备 (及其数量) 的权利。</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996722024,\"id\":11,\"merchantId\":24,\"name\":\"MacBook Pro M1\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":12999,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":12999,\"sno\":\"1\",\"stock\":123},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1599900,\"sno\":\"2\",\"stock\":234}],\"status\":1},{\"brandId\":6,\"content\":\"<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996579415,\"id\":10,\"merchantId\":24,\"name\":\"apple MacBook Pro\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1449900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\",\"stock\":666},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":766}],\"status\":1}]','<p>浴室风格浴室风格浴室风格浴室风格浴室风格浴室风格</p><p>浴室风格浴室风格</p><p>浴室风格浴室风格</p><p>浴室风格浴室风格浴室风格</p><p><br></p><p>浴室风格浴室风格浴室风格浴室风格浴室风格</p>','https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/h/6045b25f4900966d84df548fbph650q3.png',4,4,'高端的浴室，往往采用最朴素的搭配'),
	(6,'浴室心机小装饰，让你爱上洗澡',1,1615185097821,'[{\"brandId\":9,\"content\":\"<ol><li><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/n/6045c33928d9591c22e271487w2cr4b0.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/d/6045c31628d9591c22e27147igl7c8s1.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1615184730637,\"id\":17,\"merchantId\":25,\"name\":\"木之物高级多功能收纳盒木之物高级多功能收纳盒木之物高级多功能收纳盒\",\"params\":[{\"label\":\"产地\",\"value\":\"义乌\"},{\"label\":\"材质\",\"value\":\"金属&陶瓷&玻璃\"}],\"price\":12900,\"priority\":1,\"sequence\":\"050302\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/q/6045c28428d9591c22e27144652re354.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"金属\"},{\"label\":\"颜色\",\"value\":\"米色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":2341232},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/n/6045c2c128d9591c22e27146p0fnh16g.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"},{\"label\":\"颜色\",\"value\":\"橘色\"}],\"price\":12900,\"sno\":\"123\",\"stock\":11111}],\"status\":1},{\"brandId\":8,\"content\":\"<ol><li><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/2/6045c20728d9591c22e271439r2cosb5.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1615184395884,\"id\":16,\"merchantId\":25,\"name\":\"多种组合现在工艺造像花瓶瓷器\",\"params\":[{\"label\":\"材质\",\"value\":\"瓷器\"},{\"label\":\"产地\",\"value\":\"义乌\"}],\"price\":30000,\"priority\":1,\"sequence\":\"040102\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/j/6045c16728d9591c22e27141zw5yujay.png\"],\"params\":[{\"label\":\"组合1\",\"value\":\"2高+1矮\"},{\"label\":\"组合2\",\"value\":\"全部组合\"}],\"price\":30000,\"sno\":\"2\",\"stock\":1111}],\"status\":1},{\"brandId\":7,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"createdAt\":1615192670554,\"id\":24,\"merchantId\":22,\"name\":\"精致陶瓷两件花瓶摆件可插花\",\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"price\":37900,\"priority\":1,\"sequence\":\"040102\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045e2266baaf92be98f7931gwg47mnn.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"}],\"price\":37900,\"sno\":\"122112\",\"stock\":6419741}],\"status\":1},{\"brandId\":8,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/8/6045e1966baaf92be98f792fh3avbvch.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1615192482718,\"id\":22,\"merchantId\":22,\"name\":\"实木果盘坚果盘\",\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"price\":29900,\"priority\":1,\"sequence\":\"050304\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/9/6045e11e6baaf92be98f792czzkxc1f5.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"乌木\"}],\"price\":29900,\"sno\":\"122112\",\"stock\":1331}],\"status\":1}]','<p><span style=\"font-size: 16px;\">关于卫生间的烦恼有不少，主要来源于它的小，一般住宅卫生间大小在5-10㎡，还有更多面积在5㎡以下，这样的卫生间要怎么布局、设计尺寸、如何收纳？看看别人家是怎么解决这些烦恼的吧！</span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\">找对方式布局也简单</span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\">卫生间布局方式也并不是完全的摸不着头脑，找对规律和方式布局起来就很简单了，今天就给大家介绍三种常用的卫生间布局套路。</span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t10.baidu.com/it/u=3519900042,3956176500&fm=173&app=25&f=JPEG?w=640&h=960&s=C9ABB355608FDB5B0C01846D0300F063\" data-loaded=\"0\" class=\"fr-fic fr-dii\"></span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\">按动线规划功能区</span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\">马桶区、盥洗区、淋浴区是必备的三个功能，按照日常使用动线依次排开为盥洗区、马桶区、淋浴区。可以有效的避免动线交叉，实现流畅的日常活动。</span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t10.baidu.com/it/u=2478539520,1034448906&fm=173&app=25&f=JPEG?w=634&h=321&s=FD81EB118A87494B141144C2010080B2\" data-loaded=\"0\" class=\"fr-fic fr-dii\"></span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\">不同卫生间空间对应的布局方式不同，长方形空间按照日常动线和使用频率排列3大功能区，避免动线交叉；</span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t10.baidu.com/it/u=1480969746,1216420456&fm=173&app=25&f=JPEG?w=640&h=960&s=AF70E3156F02625B4C616CCF03007030\" data-loaded=\"0\" class=\"fr-fic fr-dii\"></span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t10.baidu.com/it/u=527209437,4284974564&fm=173&app=25&f=JPEG?w=640&h=465&s=8C02825D6C0262435C3025300300A053\" data-loaded=\"0\" class=\"fr-fic fr-dii\"></span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t11.baidu.com/it/u=4008429271,2814911334&fm=173&app=25&f=JPEG?w=640&h=409&s=009516DDC9017E5FCA11C57B03001073\" data-loaded=\"0\" class=\"fr-fic fr-dii\"></span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\">正方形空间卫浴洁具尽量环绕入门动线展开，避免空间角落的浪费，实在是位置太小只能考虑去掉落地置物柜，坐浴器，浴缸等。</span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t10.baidu.com/it/u=2902848720,2602697445&fm=173&app=25&f=JPEG?w=640&h=466&s=0890825D001347C6148178B503008062\" data-loaded=\"0\" class=\"fr-fic fr-dii\"></span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t11.baidu.com/it/u=674827627,3575877625&fm=173&app=25&f=JPEG?w=640&h=701&s=AC6AFB177F567ECA1C6515630300B070\" data-loaded=\"0\" class=\"fr-fic fr-dii\"></span></p><p><span style=\"font-size: 16px;\"><img data-fr-image-pasted=\"true\" data-loadfunc=\"0\" src=\"https://t12.baidu.com/it/u=940206860,1577742000&fm=173&app=25&f=JPEG?w=640&h=846&s=11099B5D49DFE4DE4E39D0C0030010A3\" data-loaded=\"0\" class=\"fr-fic fr-dii\"></span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\">按照尺寸规划不规则空间</span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><span style=\"font-size: 16px;\">不规则户型卫生间布局尺寸是关键根据不同边角尺寸的细微差距，规划出不同的功能区域，便能合理利用所有死角。</span></p>','https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/d/6045c3fd28d9591c22e27149arjad3gb.png',5,6,'关于卫生间的烦恼有不少，主要来源于它的小，一般住宅卫生间大小在5-10㎡，还有更多面积在5㎡以下，这样的卫生间要怎么布局、设计尺寸、如何收纳？看看别人家是怎么解决这些烦恼的吧！'),
	(7,'全屋定制',2,1615513887302,'[{\"brandId\":7,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"createdAt\":1615192670554,\"id\":24,\"merchantId\":22,\"name\":\"精致陶瓷两件花瓶摆件可插花\",\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"price\":37900,\"priority\":1,\"sequence\":\"040102\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045e2266baaf92be98f7931gwg47mnn.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"}],\"price\":37900,\"sno\":\"122112\",\"stock\":6419741}],\"status\":1},{\"brandId\":4,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"createdAt\":1615192595060,\"id\":23,\"merchantId\":22,\"name\":\"陶艺托盘三件套国际大牌阿玛尼\",\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"price\":1299900,\"priority\":1,\"sequence\":\"050303\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/k/6045e1ed6baaf92be98f7930v6t6j1x9.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"陶艺\"}],\"price\":1299900,\"sno\":\"122112\",\"stock\":313}],\"status\":1}]','<p>各种家具定制</p>','https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/12/t/604acae1c6716a0deae4799d192p122e.png',3,4,'好处多多，惊喜不断');

/*!40000 ALTER TABLE `scene` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table scene_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `scene_type`;

CREATE TABLE `scene_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(1024) NOT NULL DEFAULT '',
  `name` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '2',
  `sub_heading` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `scene_type` WRITE;
/*!40000 ALTER TABLE `scene_type` DISABLE KEYS */;

INSERT INTO `scene_type` (`id`, `icon`, `name`, `status`, `sub_heading`)
VALUES
	(3,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/7/604234d204abb65c9f835455aix45dye.png','厨房',1,'厨房小妙招，装饰小趣味'),
	(4,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/l/604330a23dff57183c44abb8mxl47xfg.png','空间收纳',1,'让你轻松变身收纳女王'),
	(5,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/604330c53dff57183c44abb9yctezpdn.png','卧室',1,'一键收藏助轻松打造梦幻卧室'),
	(6,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/h/6045cc5e6aa5f929f0d281a9vfbvzkc6.png','卫生间',1,'那些让人心动的小细节');

/*!40000 ALTER TABLE `scene_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sec_kill
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sec_kill`;

CREATE TABLE `sec_kill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL COMMENT '商品id',
  `start_at` bigint(20) NOT NULL COMMENT '开始时间',
  `end_at` bigint(20) NOT NULL COMMENT '结束时间',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态',
  `sec_kill_spec` text NOT NULL,
  `title` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_product_id_product_sno` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `sec_kill` WRITE;
/*!40000 ALTER TABLE `sec_kill` DISABLE KEYS */;

INSERT INTO `sec_kill` (`id`, `product_id`, `start_at`, `end_at`, `status`, `sec_kill_spec`, `title`)
VALUES
	(11,8,1614951747000,1617629905000,1,'[{\"num\":0,\"price\":1,\"sno\":\"21345\"}]','家具大放送'),
	(12,7,1614951779000,1617630119000,1,'[{\"num\":0,\"price\":500,\"sno\":\"12020\"}]','饮水机大放送'),
	(13,14,1615166309000,1615252591000,1,'[{\"num\":45,\"price\":50000,\"sno\":\"2\"}]','十周年店庆活动'),
	(14,21,1615202750000,1619695370000,1,'[{\"num\":50,\"price\":100000,\"sno\":\"122112\"}]','限时秒杀'),
	(15,19,1615202748000,1618572288000,1,'[{\"num\":0,\"price\":0,\"sno\":\"123131\"}]','精致塑胶盆'),
	(18,24,1615202989000,1618572409000,1,'[{\"num\":36,\"price\":35000,\"sno\":\"122112\"}]','陶瓷'),
	(21,22,1615203274000,1618486294000,1,'[{\"num\":47,\"price\":20000,\"sno\":\"122112\"}]','限时秒杀666');

/*!40000 ALTER TABLE `sec_kill` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table trade
# ------------------------------------------------------------

DROP TABLE IF EXISTS `trade`;

CREATE TABLE `trade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `user_id` int(10) NOT NULL,
  `merchant_id` int(10) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `total_amount` int(20) NOT NULL,
  `total_price` int(10) NOT NULL,
  `coupon_amount` int(10) DEFAULT NULL,
  `mark` varchar(1024) DEFAULT NULL,
  `user_coupon_id` int(10) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `trade_items` text NOT NULL,
  `address` varchar(1024) NOT NULL,
  `payment` tinyint(1) NOT NULL,
  `trade_payloads` varchar(4096) DEFAULT NULL COMMENT '订单是否含有秒杀备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_order_number` (`order_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `trade` WRITE;
/*!40000 ALTER TABLE `trade` DISABLE KEYS */;

INSERT INTO `trade` (`id`, `type`, `user_id`, `merchant_id`, `order_number`, `total_amount`, `total_price`, `coupon_amount`, `mark`, `user_coupon_id`, `created_at`, `trade_items`, `address`, `payment`, `trade_payloads`)
VALUES
	(67,5,4,22,'20210309202725231',70000,70000,0,NULL,0,1615292845395,'[{\"cartPayload\":{\"id\":18,\"type\":2},\"id\":111,\"num\":2,\"product\":{\"brandId\":7,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"createdAt\":1615192670554,\"id\":24,\"merchantId\":22,\"name\":\"精致陶瓷两件花瓶摆件可插花\",\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"price\":37900,\"priority\":1,\"sequence\":\"040102\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045e2266baaf92be98f7931gwg47mnn.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"}],\"price\":37900,\"sno\":\"122112\",\"stock\":6419741}],\"status\":1},\"productSno\":\"122112\"}]','{\"code\":\"110101\",\"createdAt\":1615292832330,\"detail\":\"龙湖镇\",\"id\":11,\"isDefault\":1,\"mobile\":\"18336793750\",\"name\":\"赵孟宇\",\"updateAt\":1615292832330,\"userId\":4}',1,'[{\"id\":18,\"realPrice\":35000}]'),
	(68,5,4,23,'20210309202900660',529900,529900,0,NULL,0,1615292940690,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":112,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<p>苹果手机</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996307878,\"id\":9,\"merchantId\":23,\"name\":\"iPhone\",\"params\":[{\"label\":\"苹果手机\",\"value\":\"11\"}],\"price\":509900,\"priority\":1,\"sequence\":\"030101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/y/6042e25ba7a4b70f22a9172a5fzli31z.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"绿色\"},{\"label\":\"内存\",\"value\":\"128g\"}],\"price\":529900,\"sno\":\"2Ut2gCgD\",\"stock\":100},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/t/6042e291a7a4b70f22a9172crq6ag5ad.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"黑色\"},{\"label\":\"内存\",\"value\":\"64g\"}],\"price\":509900,\"sno\":\"Rq1h6THu\",\"stock\":100},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/8/6042e2aea7a4b70f22a9172d5sppzb5j.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"黄色\"},{\"label\":\"内存\",\"value\":\"128g\"}],\"price\":529900,\"sno\":\"7YrFvxyc\",\"stock\":88},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/b/604316713dff57183c44ab670bxyn0zt.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"绿色\"},{\"label\":\"内存\",\"value\":\"64g\"}],\"price\":509900,\"sno\":\"g4skbfzk\",\"stock\":10}],\"status\":1},\"productSno\":\"2Ut2gCgD\"}]','{\"code\":\"110101\",\"createdAt\":1615292832330,\"detail\":\"龙湖镇\",\"id\":11,\"isDefault\":1,\"mobile\":\"18336793750\",\"name\":\"赵孟宇\",\"updateAt\":1615292832330,\"userId\":4}',2,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(69,5,4,23,'20210309202902444',529900,529900,0,NULL,0,1615292942692,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":112,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<p>苹果手机</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996307878,\"id\":9,\"merchantId\":23,\"name\":\"iPhone\",\"params\":[{\"label\":\"苹果手机\",\"value\":\"11\"}],\"price\":509900,\"priority\":1,\"sequence\":\"030101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/y/6042e25ba7a4b70f22a9172a5fzli31z.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"绿色\"},{\"label\":\"内存\",\"value\":\"128g\"}],\"price\":529900,\"sno\":\"2Ut2gCgD\",\"stock\":100},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/t/6042e291a7a4b70f22a9172crq6ag5ad.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"黑色\"},{\"label\":\"内存\",\"value\":\"64g\"}],\"price\":509900,\"sno\":\"Rq1h6THu\",\"stock\":100},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/8/6042e2aea7a4b70f22a9172d5sppzb5j.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"黄色\"},{\"label\":\"内存\",\"value\":\"128g\"}],\"price\":529900,\"sno\":\"7YrFvxyc\",\"stock\":88},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/b/604316713dff57183c44ab670bxyn0zt.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"绿色\"},{\"label\":\"内存\",\"value\":\"64g\"}],\"price\":509900,\"sno\":\"g4skbfzk\",\"stock\":10}],\"status\":1},\"productSno\":\"2Ut2gCgD\"}]','{\"code\":\"110101\",\"createdAt\":1615292832330,\"detail\":\"龙湖镇\",\"id\":11,\"isDefault\":1,\"mobile\":\"18336793750\",\"name\":\"赵孟宇\",\"updateAt\":1615292832330,\"userId\":4}',2,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(70,5,6,24,'20210310142733553',1299900,1299900,0,NULL,0,1615357653405,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":114,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<p><span data-pricing-loaded=\\\"\\\" data-product-template=\\\"${credit.display.smart} 的折抵金额以状况良好的 ${ productName }计算得出。\\\" data-tradein-product=\\\"mbp-13-tradein\\\">RMB 3600 的折抵金额以状况良好的 MacBook Pro i7 3.5GHz 13 英寸 (2017 年中) 512GB 固态硬盘计算得出。</span>实际折抵金额取决于设备的状况、配置、制造年份，以及发售国家或地区。年满 18 周岁及以上者才能享受此项折抵换购服务。并非所有设备都符合折抵换购条件。Apple&nbsp;Store 零售店不提供电脑产品的折抵换购服务。Apple 的<a href=\\\"https://reuserecycle.ifengpai.com/mac/reuserecycle\\\" rel=\\\"nofollow\\\" target=\\\"_blank\\\">折抵服务合作伙伴</a>将提供关于符合条件设备的折抵与回收的更多信息。可能需要遵循限定条款和条件。所支付金额基于所收到的设备状况与在估算折抵金额时你所提供的描述是否相符。Apple 或其折抵服务合作伙伴保留出于任何原因拒绝或限制任何设备 (及其数量) 的权利。</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996722024,\"id\":11,\"merchantId\":24,\"name\":\"MacBook Pro M1\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1299900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1299900,\"sno\":\"1\",\"stock\":123},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1599900,\"sno\":\"2\",\"stock\":234}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(71,5,6,22,'20210310150018623',35000,35000,0,NULL,0,1615359618756,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":115,\"num\":1,\"product\":{\"brandId\":7,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"createdAt\":1615192670554,\"id\":24,\"merchantId\":22,\"name\":\"精致陶瓷两件花瓶摆件可插花\",\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"price\":37900,\"priority\":1,\"sequence\":\"040102\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045e2266baaf92be98f7931gwg47mnn.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"}],\"price\":37900,\"sno\":\"122112\",\"stock\":6419741}],\"status\":1},\"productSno\":\"122112\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(72,5,4,23,'20210312104748427',3179400,3179400,0,NULL,0,1615517268284,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":116,\"num\":6,\"product\":{\"brandId\":6,\"content\":\"<p>苹果手机</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996307878,\"id\":9,\"merchantId\":23,\"name\":\"iPhone\",\"params\":[{\"label\":\"苹果手机\",\"value\":\"11\"}],\"price\":509900,\"priority\":1,\"sequence\":\"030101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/y/6042e25ba7a4b70f22a9172a5fzli31z.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"绿色\"},{\"label\":\"内存\",\"value\":\"128g\"}],\"price\":529900,\"sno\":\"2Ut2gCgD\",\"stock\":100},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/t/6042e291a7a4b70f22a9172crq6ag5ad.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"黑色\"},{\"label\":\"内存\",\"value\":\"64g\"}],\"price\":509900,\"sno\":\"Rq1h6THu\",\"stock\":100},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/8/6042e2aea7a4b70f22a9172d5sppzb5j.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"黄色\"},{\"label\":\"内存\",\"value\":\"128g\"}],\"price\":529900,\"sno\":\"7YrFvxyc\",\"stock\":88},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/b/604316713dff57183c44ab670bxyn0zt.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"绿色\"},{\"label\":\"内存\",\"value\":\"64g\"}],\"price\":509900,\"sno\":\"g4skbfzk\",\"stock\":10}],\"status\":1},\"productSno\":\"2Ut2gCgD\"}]','{\"code\":\"110101\",\"createdAt\":1615292832330,\"detail\":\"龙湖镇\",\"id\":11,\"isDefault\":1,\"mobile\":\"18336793750\",\"name\":\"赵孟宇\",\"updateAt\":1615292832330,\"userId\":4}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(73,5,4,22,'20210312105316348',105000,105000,0,NULL,0,1615517596359,'[{\"cartPayload\":{\"id\":18,\"type\":2},\"id\":113,\"num\":3,\"product\":{\"brandId\":7,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"createdAt\":1615192670554,\"id\":24,\"merchantId\":22,\"name\":\"精致陶瓷两件花瓶摆件可插花\",\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"price\":37900,\"priority\":1,\"sequence\":\"040102\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045e2266baaf92be98f7931gwg47mnn.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"}],\"price\":37900,\"sno\":\"122112\",\"stock\":6419741}],\"status\":1},\"productSno\":\"122112\"}]','{\"code\":\"110101\",\"createdAt\":1615292832330,\"detail\":\"龙湖镇\",\"id\":11,\"isDefault\":1,\"mobile\":\"18336793750\",\"name\":\"赵孟宇\",\"updateAt\":1615292832330,\"userId\":4}',2,'[{\"id\":18,\"realPrice\":35000}]'),
	(74,5,5,25,'20210312110451587',100000,100000,0,NULL,0,1615518291444,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":117,\"num\":1,\"product\":{\"brandId\":10,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"createdAt\":1615191957747,\"id\":21,\"merchantId\":25,\"name\":\"创意茶几意大利设计师Mtojio独家新品\",\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"price\":199900,\"priority\":1,\"sequence\":\"010503\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/p/6045df3d6baaf92be98f792aji2x9apg.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"实木\"}],\"price\":199900,\"sno\":\"122112\",\"stock\":312}],\"status\":1},\"productSno\":\"122112\"}]','{\"code\":\"410184\",\"createdAt\":1615182995618,\"detail\":\"华南城\",\"id\":4,\"isDefault\":1,\"mobile\":\"15182245237\",\"name\":\"余晋\",\"updateAt\":1615254537903,\"userId\":5}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(75,5,4,21,'20210312135057258',1,1,0,NULL,0,1615528257012,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":119,\"num\":1,\"product\":{\"brandId\":4,\"content\":\"<p>这是一块可爱的香皂</p>\",\"createdAt\":1614951489149,\"id\":8,\"merchantId\":21,\"name\":\"刷子\",\"params\":[{\"label\":\"规格\",\"value\":\"200*4000\"}],\"price\":3,\"priority\":1,\"sequence\":\"010101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/m/604231e04731815558ab52bdr1ywidbg.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"}],\"price\":3,\"sno\":\"21345\",\"stock\":23}],\"status\":1},\"productSno\":\"21345\"}]','{\"code\":\"110101\",\"createdAt\":1615292832330,\"detail\":\"龙湖镇\",\"id\":11,\"isDefault\":1,\"mobile\":\"18336793750\",\"name\":\"赵孟宇\",\"updateAt\":1615292832330,\"userId\":4}',2,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(76,2,5,24,'20210315141052179',5499600,5499600,0,NULL,0,1615788652825,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":126,\"num\":2,\"product\":{\"brandId\":6,\"content\":\"<p><span data-pricing-loaded=\\\"\\\" data-product-template=\\\"${credit.display.smart} 的折抵金额以状况良好的 ${ productName }计算得出。\\\" data-tradein-product=\\\"mbp-13-tradein\\\">RMB 3600 的折抵金额以状况良好的 MacBook Pro i7 3.5GHz 13 英寸 (2017 年中) 512GB 固态硬盘计算得出。</span>实际折抵金额取决于设备的状况、配置、制造年份，以及发售国家或地区。年满 18 周岁及以上者才能享受此项折抵换购服务。并非所有设备都符合折抵换购条件。Apple&nbsp;Store 零售店不提供电脑产品的折抵换购服务。Apple 的<a href=\\\"https://reuserecycle.ifengpai.com/mac/reuserecycle\\\" rel=\\\"nofollow\\\" target=\\\"_blank\\\">折抵服务合作伙伴</a>将提供关于符合条件设备的折抵与回收的更多信息。可能需要遵循限定条款和条件。所支付金额基于所收到的设备状况与在估算折抵金额时你所提供的描述是否相符。Apple 或其折抵服务合作伙伴保留出于任何原因拒绝或限制任何设备 (及其数量) 的权利。</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996722024,\"id\":11,\"merchantId\":24,\"name\":\"MacBook Pro M1\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1299900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1299900,\"sno\":\"1\",\"stock\":121},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1599900,\"sno\":\"2\",\"stock\":234}],\"status\":1},\"productSno\":\"1\"},{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":127,\"num\":2,\"product\":{\"brandId\":6,\"content\":\"<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996579415,\"id\":10,\"merchantId\":24,\"name\":\"apple MacBook Pro\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1449900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\",\"stock\":664},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":766}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"410184\",\"createdAt\":1615182995618,\"detail\":\"华南城\",\"id\":4,\"isDefault\":1,\"mobile\":\"15182245237\",\"name\":\"余晋\",\"updateAt\":1615254537903,\"userId\":5}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(77,5,5,22,'20210315143925747',35000,35000,0,NULL,0,1615790365543,'[{\"cartPayload\":{\"id\":18,\"type\":2},\"id\":128,\"num\":1,\"product\":{\"brandId\":7,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"createdAt\":1615192670554,\"id\":24,\"merchantId\":22,\"name\":\"精致陶瓷两件花瓶摆件可插花\",\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"price\":37900,\"priority\":1,\"sequence\":\"040102\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045e2266baaf92be98f7931gwg47mnn.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"}],\"price\":37900,\"sno\":\"122112\",\"stock\":6419741}],\"status\":1},\"productSno\":\"122112\"}]','{\"code\":\"410184\",\"createdAt\":1615182995618,\"detail\":\"华南城\",\"id\":4,\"isDefault\":1,\"mobile\":\"15182245237\",\"name\":\"余晋\",\"updateAt\":1615254537903,\"userId\":5}',1,'[{\"id\":18,\"realPrice\":35000}]'),
	(78,5,5,22,'20210315144222281',35000,35000,0,NULL,0,1615790542142,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":129,\"num\":1,\"product\":{\"brandId\":7,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"createdAt\":1615192670554,\"id\":24,\"merchantId\":22,\"name\":\"精致陶瓷两件花瓶摆件可插花\",\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"price\":37900,\"priority\":1,\"sequence\":\"040102\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045e2266baaf92be98f7931gwg47mnn.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"}],\"price\":37900,\"sno\":\"122112\",\"stock\":6419741}],\"status\":1},\"productSno\":\"122112\"}]','{\"code\":\"410184\",\"createdAt\":1615182995618,\"detail\":\"华南城\",\"id\":4,\"isDefault\":1,\"mobile\":\"15182245237\",\"name\":\"余晋\",\"updateAt\":1615254537903,\"userId\":5}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(79,5,6,25,'20210315144251848',29900,29900,0,NULL,0,1615790571082,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":118,\"num\":1,\"product\":{\"brandId\":8,\"content\":\"<ol><li><span style=\\\"font-size: 16px;\\\"><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/f/60433c0428d9591c22e27130qe7dsf0q.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Affinity&nbsp;Photo&nbsp;1.9.0.199 进行，采用内置基准版本 1900。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Logic&nbsp;Pro&nbsp;10.6.0 进行，采用一个包含多条音轨的项目，每条音轨均应用一个 Amp Designer 插件实例。播放时逐条加载音轨，直至中央处理器超载为止。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器和 Intel Iris Plus Graphics 645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一个时长 10 秒的项目，项目包含分辨率为 3840x2160、帧率为 30 fps 的 Apple&nbsp;ProRes 422 视频。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片、16GB RAM 和 2TB 固态硬盘的 13 英寸&nbsp;MacBook&nbsp;Pro 系统进行了此项测试。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一个时长为 2 分钟的项目，项目包含分辨率为 8192x4320、帧率为 23.98 fps 的 8K Apple ProRes 422 HQ 媒体。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器和 Intel&nbsp;Iris&nbsp;Plus&nbsp;Graphics&nbsp;645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用 Unity&nbsp;2018.3.6f1 进行，采用《Book of the Dead》演示，分辨率设为 1440x900。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器和 Intel&nbsp;Iris&nbsp;Plus&nbsp;Graphics&nbsp;645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Shapr3D&nbsp;3.45.0 进行，采用一个 288.2MB 的模型。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器和 Intel&nbsp;Iris&nbsp;Plus&nbsp;Graphics&nbsp;645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用 Shadow of the Tomb Raider 1.0.1，采用内置基准、1440x900 分辨率和中等设置。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Xcode&nbsp;12.2 和 Create&nbsp;ML&nbsp;2.0 进行，并在 app 中创建一个动作分类模型。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片、8GB RAM 和 512GB 固态硬盘的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试。测试 Apple&nbsp;TV app 影片播放时的电池续航时间，是通过播放高清 1080p 内容得出的，测试时显示屏亮度从最小亮度开始点击 8 次。此类服务可能仅适用于部分地区和语言。电池续航时间依使用情况和设置的不同可能有所差异。详情请参阅&nbsp;<a href=\\\"https://www.apple.com.cn/batteries/\\\">apple.com.cn/batteries</a>。</span></li><li><span style=\\\"font-size: 16px;\\\">1TB = 1 万亿字节；格式化之后的实际容量可能较小。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片、16GB RAM 和 2TB 固态硬盘的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试。测试使用 FIO&nbsp;3.23 进行，测试条件为 1024KB 请求大小，150GB 测试文件，IO 深度为 8。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">速度依据理论上的数据吞吐率，并可能有所差异。</span></li><li><span style=\\\"font-size: 16px;\\\">屏幕尺寸为对角线长度。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片 (集成 8 核图形处理器)、8GB RAM 和 512GB 固态硬盘的 MacBook Air 系统进行了此项测试。测试 Apple TV app 影片播放时的电池续航时间，是通过播放高清 1080p 内容得出的，测试时显示屏亮度从最小亮度开始点击 8 次。此类服务可能仅适用于部分地区和语言。电池续航时间依使用情况和设置的不同可能有所差异。详情请参阅&nbsp;<a href=\\\"https://www.apple.com.cn/batteries/\\\">apple.com.cn/batteries</a>。</span></li><li><span style=\\\"font-size: 16px;\\\">Intel 处理器机型可选配最高达 32GB 内存和最高达 4TB 存储设备。1TB = 1 万亿字节；格式化之后的实际容量可能较小。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2019 年 10 月使用试生产的配备 2.3GHz 8 核 Intel Core i9 处理器、16GB RAM 和 1TB 固态硬盘的 16 英寸 MacBook&nbsp;Pro 系统进行了此项测试。测试无线上网操作时的电池续航时间，是通过无线浏览 25 个受欢迎的网站得出的，测试时显示屏调至最大亮度的 75%，或从最小亮度开始点击 12 次。测试 Apple TV app 影片播放时的电池续航时间，是通过播放高清 1080p 内容得出的，测试时显示屏调至最大亮度的 75%，或从最小亮度开始点击 12 次。此类服务可能仅适用于部分地区和语言。测试待机时的电池续航时间，是通过让系统连接至无线网络并登录 iCloud 账户，进入待机模式的同时保持打开 Safari 浏览器和邮件应用软件，以及将所有系统设置设定为默认得出的。电池续航时间依使用情况和设置的不同可能有所差异。详情请参阅&nbsp;<a href=\\\"https://www.apple.com.cn/batteries/\\\">apple.com.cn/batteries</a>。</span></li><li><span style=\\\"font-size: 16px;\\\"><span data-pricing-loaded=\\\"\\\" data-product-template=\\\"${credit.display.smart} 的折抵金额以状况良好的 ${ productName }计算得出。\\\" data-tradein-product=\\\"mbp-13-tradein\\\">RMB&nbsp;3600 的折抵金额以状况良好的 MacBook Pro i7 3.5GHz 13 英寸 (2017 年中) 512GB 固态硬盘计算得出。</span>实际折抵金额取决于设备的状况、配置、制造年份，以及发售国家或地区。年满 18 周岁及以上者才能享受此项折抵换购服务。并非所有设备都符合折抵换购条件。Apple&nbsp;Store 零售店不提供电脑产品的折抵换购服务。Apple 的<a href=\\\"https://reuserecycle.ifengpai.com/mac/reuserecycle\\\" rel=\\\"nofollow\\\" target=\\\"_blank\\\">折抵服务合作伙伴</a>将提供关于符合条件设备的折抵与回收的更多信息。可能需要遵循限定条款和条件。所支付金额基于所收到的设备状况与在估算折抵金额时你所提供的描述是否相符。Apple 或其折抵服务合作伙伴保留出于任何原因拒绝或限制任何设备 (及其数量) 的权利。</span></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1615019132605,\"id\":12,\"merchantId\":25,\"name\":\"咖啡机复古黄色小资情调咖啡机\",\"params\":[{\"label\":\"材质\",\"value\":\"金属\"},{\"label\":\"产地\",\"value\":\"广州\"},{\"label\":\"其他\",\"value\":\"没有\"}],\"price\":29900,\"priority\":1,\"sequence\":\"030202\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/i/60433bbc28d9591c22e2712fnrd9gvks.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"黄色\"}],\"price\":29900,\"sno\":\"1\",\"stock\":100}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(80,5,6,24,'20210315144438257',1299900,1299900,0,NULL,0,1615790678221,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":130,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<p><span data-pricing-loaded=\\\"\\\" data-product-template=\\\"${credit.display.smart} 的折抵金额以状况良好的 ${ productName }计算得出。\\\" data-tradein-product=\\\"mbp-13-tradein\\\">RMB 3600 的折抵金额以状况良好的 MacBook Pro i7 3.5GHz 13 英寸 (2017 年中) 512GB 固态硬盘计算得出。</span>实际折抵金额取决于设备的状况、配置、制造年份，以及发售国家或地区。年满 18 周岁及以上者才能享受此项折抵换购服务。并非所有设备都符合折抵换购条件。Apple&nbsp;Store 零售店不提供电脑产品的折抵换购服务。Apple 的<a href=\\\"https://reuserecycle.ifengpai.com/mac/reuserecycle\\\" rel=\\\"nofollow\\\" target=\\\"_blank\\\">折抵服务合作伙伴</a>将提供关于符合条件设备的折抵与回收的更多信息。可能需要遵循限定条款和条件。所支付金额基于所收到的设备状况与在估算折抵金额时你所提供的描述是否相符。Apple 或其折抵服务合作伙伴保留出于任何原因拒绝或限制任何设备 (及其数量) 的权利。</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996722024,\"id\":11,\"merchantId\":24,\"name\":\"MacBook Pro M1\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1299900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1299900,\"sno\":\"1\",\"stock\":122},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1599900,\"sno\":\"2\",\"stock\":234}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(81,5,6,24,'20210315144549502',1299900,1299900,0,NULL,0,1615790749714,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":131,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<p><span data-pricing-loaded=\\\"\\\" data-product-template=\\\"${credit.display.smart} 的折抵金额以状况良好的 ${ productName }计算得出。\\\" data-tradein-product=\\\"mbp-13-tradein\\\">RMB 3600 的折抵金额以状况良好的 MacBook Pro i7 3.5GHz 13 英寸 (2017 年中) 512GB 固态硬盘计算得出。</span>实际折抵金额取决于设备的状况、配置、制造年份，以及发售国家或地区。年满 18 周岁及以上者才能享受此项折抵换购服务。并非所有设备都符合折抵换购条件。Apple&nbsp;Store 零售店不提供电脑产品的折抵换购服务。Apple 的<a href=\\\"https://reuserecycle.ifengpai.com/mac/reuserecycle\\\" rel=\\\"nofollow\\\" target=\\\"_blank\\\">折抵服务合作伙伴</a>将提供关于符合条件设备的折抵与回收的更多信息。可能需要遵循限定条款和条件。所支付金额基于所收到的设备状况与在估算折抵金额时你所提供的描述是否相符。Apple 或其折抵服务合作伙伴保留出于任何原因拒绝或限制任何设备 (及其数量) 的权利。</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996722024,\"id\":11,\"merchantId\":24,\"name\":\"MacBook Pro M1\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1299900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1299900,\"sno\":\"1\",\"stock\":123},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1599900,\"sno\":\"2\",\"stock\":234}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(82,5,6,24,'20210315144938584',1448900,1449900,1000,NULL,40,1615790978921,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":132,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996579415,\"id\":10,\"merchantId\":24,\"name\":\"apple MacBook Pro\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1449900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\",\"stock\":666},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":766}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(83,2,5,22,'20210315145145604',20000,20000,0,NULL,0,1615791105394,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":136,\"num\":1,\"product\":{\"brandId\":8,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/8/6045e1966baaf92be98f792fh3avbvch.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1615192482718,\"id\":22,\"merchantId\":22,\"name\":\"实木果盘坚果盘\",\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"price\":29900,\"priority\":1,\"sequence\":\"050304\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/9/6045e11e6baaf92be98f792czzkxc1f5.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"乌木\"}],\"price\":29900,\"sno\":\"122112\",\"stock\":1330}],\"status\":1},\"productSno\":\"122112\"}]','{\"code\":\"410184\",\"createdAt\":1615182995618,\"detail\":\"华南城\",\"id\":4,\"isDefault\":1,\"mobile\":\"15182245237\",\"name\":\"余晋\",\"updateAt\":1615254537903,\"userId\":5}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(84,5,6,24,'20210315145357318',1299900,1299900,0,NULL,0,1615791237133,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":133,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<p><span data-pricing-loaded=\\\"\\\" data-product-template=\\\"${credit.display.smart} 的折抵金额以状况良好的 ${ productName }计算得出。\\\" data-tradein-product=\\\"mbp-13-tradein\\\">RMB 3600 的折抵金额以状况良好的 MacBook Pro i7 3.5GHz 13 英寸 (2017 年中) 512GB 固态硬盘计算得出。</span>实际折抵金额取决于设备的状况、配置、制造年份，以及发售国家或地区。年满 18 周岁及以上者才能享受此项折抵换购服务。并非所有设备都符合折抵换购条件。Apple&nbsp;Store 零售店不提供电脑产品的折抵换购服务。Apple 的<a href=\\\"https://reuserecycle.ifengpai.com/mac/reuserecycle\\\" rel=\\\"nofollow\\\" target=\\\"_blank\\\">折抵服务合作伙伴</a>将提供关于符合条件设备的折抵与回收的更多信息。可能需要遵循限定条款和条件。所支付金额基于所收到的设备状况与在估算折抵金额时你所提供的描述是否相符。Apple 或其折抵服务合作伙伴保留出于任何原因拒绝或限制任何设备 (及其数量) 的权利。</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996722024,\"id\":11,\"merchantId\":24,\"name\":\"MacBook Pro M1\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1299900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1299900,\"sno\":\"1\",\"stock\":122},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1599900,\"sno\":\"2\",\"stock\":234}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(85,5,6,24,'20210315145444966',1449900,1449900,0,NULL,0,1615791284827,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":138,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996579415,\"id\":10,\"merchantId\":24,\"name\":\"apple MacBook Pro\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1449900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\",\"stock\":666},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":766}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(86,5,6,24,'20210315145533282',1449900,1449900,0,NULL,0,1615791333108,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":139,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996579415,\"id\":10,\"merchantId\":24,\"name\":\"apple MacBook Pro\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1449900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\",\"stock\":666},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":766}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(87,5,6,24,'20210315145956672',1449900,1449900,0,NULL,0,1615791596049,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":140,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996579415,\"id\":10,\"merchantId\":24,\"name\":\"apple MacBook Pro\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1449900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\",\"stock\":666},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":766}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(88,5,6,24,'20210315145957142',1449900,1449900,0,NULL,0,1615791597532,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":140,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996579415,\"id\":10,\"merchantId\":24,\"name\":\"apple MacBook Pro\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1449900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\",\"stock\":666},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":766}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(89,5,6,24,'20210315145957076',1449900,1449900,0,NULL,0,1615791597870,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":140,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996579415,\"id\":10,\"merchantId\":24,\"name\":\"apple MacBook Pro\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1449900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\",\"stock\":666},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":766}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(90,5,6,24,'20210315145958870',1449900,1449900,0,NULL,0,1615791598168,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":140,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996579415,\"id\":10,\"merchantId\":24,\"name\":\"apple MacBook Pro\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1449900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\",\"stock\":666},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":766}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(91,5,6,24,'20210315145959520',1449900,1449900,0,NULL,0,1615791599728,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":140,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996579415,\"id\":10,\"merchantId\":24,\"name\":\"apple MacBook Pro\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1449900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\",\"stock\":666},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":766}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(92,5,6,24,'20210315150000990',1449900,1449900,0,NULL,0,1615791600475,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":140,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996579415,\"id\":10,\"merchantId\":24,\"name\":\"apple MacBook Pro\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1449900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\",\"stock\":666},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":766}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(93,5,6,24,'20210315150120308',1448900,1449900,1000,NULL,41,1615791680996,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":141,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996579415,\"id\":10,\"merchantId\":24,\"name\":\"apple MacBook Pro\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1449900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\",\"stock\":665},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":766}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(94,5,6,24,'20210315150151734',1449900,1449900,0,NULL,0,1615791711787,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":142,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996579415,\"id\":10,\"merchantId\":24,\"name\":\"apple MacBook Pro\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1449900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\",\"stock\":666},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":766}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(95,5,6,24,'20210315150516754',2899800,2899800,0,NULL,0,1615791916577,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":143,\"num\":2,\"product\":{\"brandId\":6,\"content\":\"<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996579415,\"id\":10,\"merchantId\":24,\"name\":\"apple MacBook Pro\",\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"price\":1449900,\"priority\":1,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"price\":1449900,\"sno\":\"1\",\"stock\":666},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"price\":1899900,\"sno\":\"2\",\"stock\":766}],\"status\":1},\"productSno\":\"1\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(96,5,5,22,'20210315153123252',40000,40000,0,NULL,0,1615793483947,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":137,\"num\":2,\"product\":{\"brandId\":8,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/8/6045e1966baaf92be98f792fh3avbvch.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1615192482718,\"id\":22,\"merchantId\":22,\"name\":\"实木果盘坚果盘\",\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"price\":29900,\"priority\":1,\"sequence\":\"050304\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/9/6045e11e6baaf92be98f792czzkxc1f5.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"乌木\"}],\"price\":29900,\"sno\":\"122112\",\"stock\":1331}],\"status\":1},\"productSno\":\"122112\"}]','{\"code\":\"410184\",\"createdAt\":1615182995618,\"detail\":\"华南城\",\"id\":4,\"isDefault\":1,\"mobile\":\"15182245237\",\"name\":\"余晋\",\"updateAt\":1615254537903,\"userId\":5}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(97,2,4,22,'20210317101913403',37400,37400,0,NULL,0,1615947553499,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":121,\"num\":2,\"product\":{\"brandId\":5,\"content\":\"<p>sadasdasd</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614951461099,\"id\":7,\"merchantId\":22,\"name\":\"测试商品\",\"params\":[{\"label\":\"qeqw\",\"value\":\"qweqweqweq\"}],\"price\":1200,\"priority\":1,\"sequence\":\"020101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/h/6042340d04abb65c9f8354544zkw5flx.png\"],\"params\":[{\"label\":\"111\",\"value\":\"222\"},{\"label\":\"333\",\"value\":\"444\"}],\"price\":1200,\"sno\":\"12020\",\"stock\":118}],\"status\":1},\"productSno\":\"12020\"},{\"cartPayload\":{\"id\":18,\"type\":2},\"id\":122,\"num\":1,\"product\":{\"brandId\":7,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"createdAt\":1615192670554,\"id\":24,\"merchantId\":22,\"name\":\"精致陶瓷两件花瓶摆件可插花\",\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"price\":37900,\"priority\":1,\"sequence\":\"040102\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045e2266baaf92be98f7931gwg47mnn.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"}],\"price\":37900,\"sno\":\"122112\",\"stock\":6419740}],\"status\":1},\"productSno\":\"122112\"}]','{\"code\":\"110101\",\"createdAt\":1615292832330,\"detail\":\"龙湖镇\",\"id\":11,\"isDefault\":1,\"mobile\":\"18336793750\",\"name\":\"赵孟宇\",\"updateAt\":1615292832330,\"userId\":4}',2,'[{\"id\":18,\"realPrice\":35000}]'),
	(98,4,4,21,'20210317102648816',2,2,0,NULL,0,1615948008269,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":120,\"num\":2,\"product\":{\"brandId\":4,\"content\":\"<p>这是一块可爱的香皂</p>\",\"createdAt\":1614951489149,\"id\":8,\"merchantId\":21,\"name\":\"刷子\",\"params\":[{\"label\":\"规格\",\"value\":\"200*4000\"}],\"price\":3,\"priority\":1,\"sequence\":\"010101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/m/604231e04731815558ab52bdr1ywidbg.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"},{\"label\":\"尺寸\",\"value\":\"200*300\"}],\"price\":3,\"sno\":\"21345\",\"stock\":21},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/16/b/60509d33d663ca5931319932p9oeze0k.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"},{\"label\":\"尺寸\",\"value\":\"1800*600\"}],\"price\":500,\"sno\":\"31243543\",\"stock\":123}],\"status\":1},\"productSno\":\"21345\"}]','{\"code\":\"110101\",\"createdAt\":1615292832330,\"detail\":\"龙湖镇\",\"id\":11,\"isDefault\":1,\"mobile\":\"18336793750\",\"name\":\"赵孟宇\",\"updateAt\":1615292832330,\"userId\":4}',2,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(99,2,7,23,'20210406162357998',509900,509900,0,NULL,0,1617697437849,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":144,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<p>苹果手机</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996307878,\"id\":9,\"merchantId\":23,\"name\":\"iPhone\",\"params\":[{\"label\":\"苹果手机\",\"value\":\"11\"}],\"price\":509900,\"priority\":1,\"sequence\":\"030101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/y/6042e25ba7a4b70f22a9172a5fzli31z.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"绿色\"},{\"label\":\"内存\",\"value\":\"128g\"}],\"price\":529900,\"sno\":\"2Ut2gCgD\",\"stock\":100},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/t/6042e291a7a4b70f22a9172crq6ag5ad.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"黑色\"},{\"label\":\"内存\",\"value\":\"64g\"}],\"price\":509900,\"sno\":\"Rq1h6THu\",\"stock\":99},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/8/6042e2aea7a4b70f22a9172d5sppzb5j.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"黄色\"},{\"label\":\"内存\",\"value\":\"128g\"}],\"price\":529900,\"sno\":\"7YrFvxyc\",\"stock\":88},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/b/604316713dff57183c44ab670bxyn0zt.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"绿色\"},{\"label\":\"内存\",\"value\":\"64g\"}],\"price\":509900,\"sno\":\"g4skbfzk\",\"stock\":10}],\"status\":1},\"productSno\":\"Rq1h6THu\"}]','{\"code\":\"410105\",\"createdAt\":1615207576091,\"detail\":\"北三环\",\"id\":8,\"isDefault\":1,\"mobile\":\"18303800683\",\"name\":\"王二娘\",\"updateAt\":1615250427104,\"userId\":7}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(100,5,6,23,'20210406211653989',529900,529900,0,NULL,0,1617715013113,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":150,\"num\":1,\"product\":{\"brandId\":6,\"content\":\"<p>苹果手机</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"createdAt\":1614996307878,\"id\":9,\"merchantId\":23,\"name\":\"iPhone\",\"params\":[{\"label\":\"苹果手机\",\"value\":\"11\"}],\"price\":509900,\"priority\":1,\"sequence\":\"030101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/y/6042e25ba7a4b70f22a9172a5fzli31z.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"绿色\"},{\"label\":\"内存\",\"value\":\"128g\"}],\"price\":529900,\"sno\":\"2Ut2gCgD\",\"stock\":100},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/t/6042e291a7a4b70f22a9172crq6ag5ad.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"黑色\"},{\"label\":\"内存\",\"value\":\"64g\"}],\"price\":509900,\"sno\":\"Rq1h6THu\",\"stock\":100},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/8/6042e2aea7a4b70f22a9172d5sppzb5j.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"黄色\"},{\"label\":\"内存\",\"value\":\"128g\"}],\"price\":529900,\"sno\":\"7YrFvxyc\",\"stock\":88},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/b/604316713dff57183c44ab670bxyn0zt.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"绿色\"},{\"label\":\"内存\",\"value\":\"64g\"}],\"price\":509900,\"sno\":\"g4skbfzk\",\"stock\":10}],\"status\":1},\"productSno\":\"2Ut2gCgD\"}]','{\"code\":\"120101\",\"createdAt\":1615187170916,\"detail\":\"三里屯\",\"id\":6,\"isDefault\":1,\"mobile\":\"17703854720\",\"name\":\"胡永涛\",\"updateAt\":1615255968106,\"userId\":6}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(101,5,4,25,'20210407120004806',100000,100000,0,NULL,0,1617768004658,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":151,\"num\":1,\"product\":{\"brandId\":10,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"createdAt\":1615191957747,\"id\":21,\"merchantId\":25,\"name\":\"创意茶几意大利设计师Mtojio独家新品\",\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"price\":199900,\"priority\":1,\"sequence\":\"010503\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/p/6045df3d6baaf92be98f792aji2x9apg.png\"],\"params\":[{\"label\":\"材质\",\"value\":\"实木\"}],\"price\":199900,\"sno\":\"122112\",\"stock\":312}],\"status\":1},\"productSno\":\"122112\"}]','{\"code\":\"110101\",\"createdAt\":1615292832330,\"detail\":\"龙湖镇\",\"id\":11,\"isDefault\":1,\"mobile\":\"18336793750\",\"name\":\"赵孟宇\",\"updateAt\":1615292832330,\"userId\":4}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]'),
	(102,5,7,21,'20210429133110070',1,1,0,NULL,0,1619674270787,'[{\"cartPayload\":{\"id\":0,\"type\":1},\"id\":157,\"num\":1,\"product\":{\"brandId\":4,\"content\":\"<p>这是一块可爱的香皂</p>\",\"createdAt\":1614951489149,\"id\":8,\"merchantId\":21,\"name\":\"刷子\",\"params\":[{\"label\":\"规格\",\"value\":\"200*4000\"}],\"price\":3,\"priority\":1,\"sequence\":\"010101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/m/604231e04731815558ab52bdr1ywidbg.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"},{\"label\":\"尺寸\",\"value\":\"200*300\"}],\"price\":3,\"sno\":\"21345\",\"stock\":23},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/16/b/60509d33d663ca5931319932p9oeze0k.png\"],\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"},{\"label\":\"尺寸\",\"value\":\"1800*600\"}],\"price\":500,\"sno\":\"31243543\",\"stock\":123}],\"status\":1},\"productSno\":\"31243543\"}]','{\"code\":\"410105\",\"createdAt\":1615207576091,\"detail\":\"北三环\",\"id\":8,\"isDefault\":1,\"mobile\":\"18303800683\",\"name\":\"王二娘\",\"updateAt\":1615250427104,\"userId\":7}',1,'[{\"id\":21,\"realPrice\":20000},{\"id\":18,\"realPrice\":35000},{\"id\":15,\"realPrice\":0},{\"id\":14,\"realPrice\":100000},{\"id\":13,\"realPrice\":50000},{\"id\":12,\"realPrice\":500},{\"id\":11,\"realPrice\":1}]');

/*!40000 ALTER TABLE `trade` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ui
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ui`;

CREATE TABLE `ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `components` text,
  `created_at` bigint(20) NOT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `title` varchar(20) NOT NULL DEFAULT '',
  `type` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `ui` WRITE;
/*!40000 ALTER TABLE `ui` DISABLE KEYS */;

INSERT INTO `ui` (`id`, `components`, `created_at`, `is_default`, `title`, `type`)
VALUES
	(4,'[{\"key\":\"BANNER\",\"list\":[{\"img\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/u/6042353b04abb65c9f835458wsntnh62.png\",\"act\":\"NONE\",\"cindex\":0,\"index\":-1,\"type\":\"BANNER\"},{\"img\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/m/6045d1666baaf92adb6293f9aluafby3.png\",\"act\":\"NONE\",\"cindex\":0,\"index\":-1,\"type\":\"BANNER\"},{\"img\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/p/6045d1796baaf92adb6293faw4jsxvc5.png\",\"act\":\"NONE\",\"cindex\":0,\"index\":-1,\"type\":\"BANNER\"},{\"img\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/2/6045d1876baaf92adb6293fbzhsb6x2h.png\",\"act\":\"PRODUCT\",\"cindex\":0,\"payload\":{\"createdAt\":1615184730637,\"sequence\":\"050302\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/q/6045c28428d9591c22e27144652re354.png\"],\"sno\":\"2\",\"price\":1899900,\"params\":[{\"label\":\"材质\",\"value\":\"金属\"},{\"label\":\"颜色\",\"value\":\"米色\"}],\"stock\":2341232},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/n/6045c2c128d9591c22e27146p0fnh16g.png\"],\"sno\":\"123\",\"price\":12900,\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"},{\"label\":\"颜色\",\"value\":\"橘色\"}],\"stock\":11111}],\"merchantId\":25,\"price\":12900,\"brandId\":9,\"name\":\"木之物高级多功能收纳盒木之物高级多功能收纳盒木之物高级多功能收纳盒\",\"id\":17,\"params\":[{\"label\":\"产地\",\"value\":\"义乌\"},{\"label\":\"材质\",\"value\":\"金属&陶瓷&玻璃\"}],\"priority\":1,\"content\":\"<ol><li><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/n/6045c33928d9591c22e271487w2cr4b0.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/d/6045c31628d9591c22e27147igl7c8s1.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1},\"index\":-1,\"type\":\"BANNER\"}],\"listStyle\":1,\"title\":\"轮播图\"},{\"key\":\"NAV\",\"list\":[{\"cindex\":1,\"icon\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/o/6042356504abb65c9f835459rulgdw2n.png\",\"name\":\"111\",\"index\":-1,\"type\":\"case\"},{\"cindex\":1,\"icon\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/f/604235bd04abb65c9f83545ag1hm0v7f.png\",\"name\":\"222\",\"index\":-1,\"type\":\"atlas\"},{\"cindex\":1,\"icon\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/9/604235c904abb65c9f83545bl3yr7j5e.png\",\"name\":\"333\",\"index\":-1,\"type\":\"atlas\"},{\"cindex\":1,\"icon\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/t/604235d704abb65c9f83545ctxbi3xcz.png\",\"name\":\"444\",\"index\":-1,\"type\":\"atlas\"},{\"cindex\":1,\"icon\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/z/604235e304abb65c9f83545dnm8hjy8x.png\",\"name\":\"555\",\"index\":-1,\"type\":\"article\"}],\"listStyle\":1,\"title\":\"二级导航\"},{\"key\":\"ARTICLE\",\"list\":[{\"collectNum\":0,\"authorImg\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/2/1/603dd315b588f697ac2b339ckq1690bq.jpeg\",\"authorId\":4,\"title\":\"厨房配置十大技巧\",\"content\":\"<p>厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光</p>\",\"picture\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/l/60459c394900966ad9e5d7a8ip467ogm.png\",\"pageView\":12222,\"createdAt\":1615174724434,\"authorName\":\"余晋\",\"intro\":\"厨房配置十大技巧让你的厨房闪闪发光\",\"id\":5,\"status\":1,\"supportNum\":0},{\"collectNum\":1,\"authorImg\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/2/1/603dd315b588f697ac2b339ckq1690bq.jpeg\",\"authorId\":4,\"title\":\"文章测试6QQ王\",\"content\":\"<p>今年2月</p><p>知名音乐人赵英俊、演员吴孟达</p><p>先后因肝癌离世</p><p>也让大家再次重视起肝癌这一疾病</p><p>吴孟达从发现肝癌到去世</p><p>中间只隔了两个月</p><p>大多数肝癌患者被发现时</p><p>已经到了中晚期</p><p>对于肝癌</p><p>我们该如何早发现、早治疗呢？</p><p>我国肝癌发病率高 为第二大致命肿瘤</p><p>统计数据显示，中国每年新发肝癌约40万例，占到全球50%以上，2020年，肝癌成为我国发病率第五的恶性肿瘤。此外，肝癌也是仅次于胰腺癌的第二大致命肿瘤，5年生存率不到15%。</p><p>医生表示：肝癌早期缺乏特异性的症状，比如上腹比较饱胀、食欲不好等一些非典型症状。早期症状比较隐匿，很多病人发现的时候都到了中晚期，治疗比较棘手，晚期一般生存期在三到六个月。</p><p>高危因素：肝炎病毒感染</p><p>长期酗酒、黄曲霉素污染等</p><p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/e/6042293504abb65c9f83543e38rgpsjl.png\\\" class=\\\"fr-fic fr-dii\\\"></p><p>专家介绍，肝癌隐匿性较强，但并非无迹可寻。一般来说，肝癌有&ldquo;三步曲&rdquo;：乙肝、肝硬化、肝癌。哪些人容易患上这一疾病呢？高危因素除了肝炎病毒感染外，还有长期酗酒、肥胖、黄曲霉素污染等等。</p><p>第一种是有乙肝、丙肝这类肝炎病毒感染病人</p><p>第二种是经常酗酒</p><p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/b/6042294004abb65c9f83543fl765yxgd.jpg\\\" class=\\\"fr-fic fr-dii\\\"></p><p>第三种是有非脂肪性肝炎、肝硬化的病人</p><p>第四种是经常食用黄曲霉素污染的水源、食物</p><p>高危人群半年内应接受&ldquo;防癌体检筛查&rdquo;</p><p>与一般人相比，有乙肝病史者患肝癌的风险增加10倍以上，食用霉变的玉米、花生，也有致癌作用。目前，肝癌治疗的重点是&ldquo;早发现、早诊断、早治疗&rdquo;。医生建议，高危人群应每3到6个月到医院接受一次&ldquo;防癌体检筛查&rdquo;。值得关注的是，随着医疗水平不断提高，部分晚期肝癌患者可以长期生存。</p><p>尽量戒酒戒烟，酒精对肝脏会有很大的损伤；部分肝癌病人，后面会出现肝硬化、消化道出血，这部分病人要注意饮食上清淡，吃一些容易消化的东西，粗糙的一些食物容易引起出血。</p><p>小编提醒</p><p>大家在饮食上要注意清淡、新鲜</p><p>少吃辛辣、油腻的食物</p><p>在生活习惯方面</p><p>避免经常熬夜、过于劳累</p><p>情绪上也要尽量保持乐观</p>\",\"picture\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/n/6045e4136baaf92be98f79361z0myunq.png\",\"pageView\":1,\"createdAt\":1614948865115,\"authorName\":\"余晋\",\"intro\":\"头一次见这么舒适的卫生间布置，原来大家都是这么做的，头一次见这么舒适的卫生间\",\"id\":4,\"status\":1,\"supportNum\":1}],\"listStyle\":1,\"title\":\"推荐文章\"},{\"key\":\"SCENE\",\"list\":[{\"createdAt\":1615180427056,\"img\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/h/6045b25f4900966d84df548fbph650q3.png\",\"subHeading\":\"高端的浴室，往往采用最朴素的搭配\",\"id\":5,\"authorId\":4,\"title\":\"浴室风格\",\"type\":4,\"content\":\"<p>浴室风格浴室风格浴室风格浴室风格浴室风格浴室风格</p><p>浴室风格浴室风格</p><p>浴室风格浴室风格</p><p>浴室风格浴室风格浴室风格</p><p><br></p><p>浴室风格浴室风格浴室风格浴室风格浴室风格</p>\",\"products\":[{\"createdAt\":1615019754039,\"sequence\":\"010302\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/3/60433e7428d9591c22e27136da3eocpq.png\"],\"sno\":\"2\",\"price\":109900,\"params\":[{\"label\":\"尺寸\",\"value\":\"80*80\"},{\"label\":\"颜色\",\"value\":\"绿色\"}],\"stock\":137108}],\"merchantId\":25,\"price\":109900,\"brandId\":7,\"name\":\"布艺绿色摩登色彩一人坐高档产品沙发\",\"id\":14,\"params\":[{\"label\":\"产地\",\"value\":\"法国\"}],\"priority\":1,\"content\":\"<ol><li><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/w/60433ee428d9591c22e271370ust8dvi.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1},{\"createdAt\":1615019405024,\"sequence\":\"040105\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/w/60433cd228d9591c22e27131h7mt2rzb.png\"],\"sno\":\"2\",\"price\":19900,\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"},{\"label\":\"尺寸\",\"value\":\"20cm\"}],\"stock\":100000}],\"merchantId\":25,\"price\":19900,\"brandId\":8,\"name\":\"澳洲考拉摆件小闹钟全球购\",\"id\":13,\"params\":[{\"label\":\"材质\",\"value\":\"塑胶\"},{\"label\":\"机芯\",\"value\":\"瑞士\"},{\"label\":\"产地\",\"value\":\"澳洲进口\"}],\"priority\":1,\"content\":\"<ol><li><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/g/60433dd828d9591c22e27135map6lrh9.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1},{\"createdAt\":1615019132605,\"sequence\":\"030202\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/i/60433bbc28d9591c22e2712fnrd9gvks.png\"],\"sno\":\"1\",\"price\":29900,\"params\":[{\"label\":\"颜色\",\"value\":\"黄色\"}],\"stock\":100}],\"merchantId\":25,\"price\":29900,\"brandId\":8,\"name\":\"咖啡机复古黄色小资情调咖啡机\",\"id\":12,\"params\":[{\"label\":\"材质\",\"value\":\"金属\"},{\"label\":\"产地\",\"value\":\"广州\"},{\"label\":\"其他\",\"value\":\"没有\"}],\"priority\":1,\"content\":\"<ol><li><span style=\\\"font-size: 16px;\\\"><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/f/60433c0428d9591c22e27130qe7dsf0q.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Affinity&nbsp;Photo&nbsp;1.9.0.199 进行，采用内置基准版本 1900。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Logic&nbsp;Pro&nbsp;10.6.0 进行，采用一个包含多条音轨的项目，每条音轨均应用一个 Amp Designer 插件实例。播放时逐条加载音轨，直至中央处理器超载为止。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器和 Intel Iris Plus Graphics 645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一个时长 10 秒的项目，项目包含分辨率为 3840x2160、帧率为 30 fps 的 Apple&nbsp;ProRes 422 视频。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片、16GB RAM 和 2TB 固态硬盘的 13 英寸&nbsp;MacBook&nbsp;Pro 系统进行了此项测试。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一个时长为 2 分钟的项目，项目包含分辨率为 8192x4320、帧率为 23.98 fps 的 8K Apple ProRes 422 HQ 媒体。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器和 Intel&nbsp;Iris&nbsp;Plus&nbsp;Graphics&nbsp;645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用 Unity&nbsp;2018.3.6f1 进行，采用《Book of the Dead》演示，分辨率设为 1440x900。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器和 Intel&nbsp;Iris&nbsp;Plus&nbsp;Graphics&nbsp;645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Shapr3D&nbsp;3.45.0 进行，采用一个 288.2MB 的模型。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器和 Intel&nbsp;Iris&nbsp;Plus&nbsp;Graphics&nbsp;645 图形处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用 Shadow of the Tomb Raider 1.0.1，采用内置基准、1440x900 分辨率和中等设置。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Xcode&nbsp;12.2 和 Create&nbsp;ML&nbsp;2.0 进行，并在 app 中创建一个动作分类模型。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片、8GB RAM 和 512GB 固态硬盘的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试。测试 Apple&nbsp;TV app 影片播放时的电池续航时间，是通过播放高清 1080p 内容得出的，测试时显示屏亮度从最小亮度开始点击 8 次。此类服务可能仅适用于部分地区和语言。电池续航时间依使用情况和设置的不同可能有所差异。详情请参阅&nbsp;<a href=\\\"https://www.apple.com.cn/batteries/\\\">apple.com.cn/batteries</a>。</span></li><li><span style=\\\"font-size: 16px;\\\">1TB = 1 万亿字节；格式化之后的实际容量可能较小。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片、16GB RAM 和 2TB 固态硬盘的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试。测试使用 FIO&nbsp;3.23 进行，测试条件为 1024KB 请求大小，150GB 测试文件，IO 深度为 8。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</span></li><li><span style=\\\"font-size: 16px;\\\">速度依据理论上的数据吞吐率，并可能有所差异。</span></li><li><span style=\\\"font-size: 16px;\\\">屏幕尺寸为对角线长度。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片 (集成 8 核图形处理器)、8GB RAM 和 512GB 固态硬盘的 MacBook Air 系统进行了此项测试。测试 Apple TV app 影片播放时的电池续航时间，是通过播放高清 1080p 内容得出的，测试时显示屏亮度从最小亮度开始点击 8 次。此类服务可能仅适用于部分地区和语言。电池续航时间依使用情况和设置的不同可能有所差异。详情请参阅&nbsp;<a href=\\\"https://www.apple.com.cn/batteries/\\\">apple.com.cn/batteries</a>。</span></li><li><span style=\\\"font-size: 16px;\\\">Intel 处理器机型可选配最高达 32GB 内存和最高达 4TB 存储设备。1TB = 1 万亿字节；格式化之后的实际容量可能较小。</span></li><li><span style=\\\"font-size: 16px;\\\">Apple 于 2019 年 10 月使用试生产的配备 2.3GHz 8 核 Intel Core i9 处理器、16GB RAM 和 1TB 固态硬盘的 16 英寸 MacBook&nbsp;Pro 系统进行了此项测试。测试无线上网操作时的电池续航时间，是通过无线浏览 25 个受欢迎的网站得出的，测试时显示屏调至最大亮度的 75%，或从最小亮度开始点击 12 次。测试 Apple TV app 影片播放时的电池续航时间，是通过播放高清 1080p 内容得出的，测试时显示屏调至最大亮度的 75%，或从最小亮度开始点击 12 次。此类服务可能仅适用于部分地区和语言。测试待机时的电池续航时间，是通过让系统连接至无线网络并登录 iCloud 账户，进入待机模式的同时保持打开 Safari 浏览器和邮件应用软件，以及将所有系统设置设定为默认得出的。电池续航时间依使用情况和设置的不同可能有所差异。详情请参阅&nbsp;<a href=\\\"https://www.apple.com.cn/batteries/\\\">apple.com.cn/batteries</a>。</span></li><li><span style=\\\"font-size: 16px;\\\"><span data-pricing-loaded=\\\"\\\" data-product-template=\\\"${credit.display.smart} 的折抵金额以状况良好的 ${ productName }计算得出。\\\" data-tradein-product=\\\"mbp-13-tradein\\\">RMB&nbsp;3600 的折抵金额以状况良好的 MacBook Pro i7 3.5GHz 13 英寸 (2017 年中) 512GB 固态硬盘计算得出。</span>实际折抵金额取决于设备的状况、配置、制造年份，以及发售国家或地区。年满 18 周岁及以上者才能享受此项折抵换购服务。并非所有设备都符合折抵换购条件。Apple&nbsp;Store 零售店不提供电脑产品的折抵换购服务。Apple 的<a href=\\\"https://reuserecycle.ifengpai.com/mac/reuserecycle\\\" rel=\\\"nofollow\\\" target=\\\"_blank\\\">折抵服务合作伙伴</a>将提供关于符合条件设备的折抵与回收的更多信息。可能需要遵循限定条款和条件。所支付金额基于所收到的设备状况与在估算折抵金额时你所提供的描述是否相符。Apple 或其折抵服务合作伙伴保留出于任何原因拒绝或限制任何设备 (及其数量) 的权利。</span></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1},{\"createdAt\":1614996722024,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"sno\":\"1\",\"price\":12999,\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"stock\":123},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"sno\":\"2\",\"price\":1599900,\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"stock\":234}],\"merchantId\":24,\"price\":12999,\"brandId\":6,\"name\":\"MacBook Pro M1\",\"id\":11,\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"priority\":1,\"content\":\"<p><span data-pricing-loaded=\\\"\\\" data-product-template=\\\"${credit.display.smart} 的折抵金额以状况良好的 ${ productName }计算得出。\\\" data-tradein-product=\\\"mbp-13-tradein\\\">RMB 3600 的折抵金额以状况良好的 MacBook Pro i7 3.5GHz 13 英寸 (2017 年中) 512GB 固态硬盘计算得出。</span>实际折抵金额取决于设备的状况、配置、制造年份，以及发售国家或地区。年满 18 周岁及以上者才能享受此项折抵换购服务。并非所有设备都符合折抵换购条件。Apple&nbsp;Store 零售店不提供电脑产品的折抵换购服务。Apple 的<a href=\\\"https://reuserecycle.ifengpai.com/mac/reuserecycle\\\" rel=\\\"nofollow\\\" target=\\\"_blank\\\">折抵服务合作伙伴</a>将提供关于符合条件设备的折抵与回收的更多信息。可能需要遵循限定条款和条件。所支付金额基于所收到的设备状况与在估算折抵金额时你所提供的描述是否相符。Apple 或其折抵服务合作伙伴保留出于任何原因拒绝或限制任何设备 (及其数量) 的权利。</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1},{\"createdAt\":1614996579415,\"sequence\":\"030201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/9/6042e206b29004228a3c4f6c2kfemlku.png\"],\"sno\":\"1\",\"price\":1449900,\"params\":[{\"label\":\"尺寸\",\"value\":\"13英寸\"},{\"label\":\"颜色\",\"value\":\"银色\"}],\"stock\":666},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042e360b29004228a3c4f6dv4xw7ywu.png\"],\"sno\":\"2\",\"price\":1899900,\"params\":[{\"label\":\"尺寸\",\"value\":\"16英寸\"},{\"label\":\"颜色\",\"value\":\"灰色\"}],\"stock\":766}],\"merchantId\":24,\"price\":1449900,\"brandId\":6,\"name\":\"apple MacBook Pro\",\"id\":10,\"params\":[{\"label\":\"端口\",\"value\":\"四个雷雳 3\"}],\"priority\":1,\"content\":\"<ol><li>Apple 于 2020 年 10 月使用试生产的配备 Apple M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel Core i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。开源项目使用预发行版 Xcode 12.2 及 Apple Clang 12.0.0、Ninja 1.10.0.git 和 CMake 3.16.5 构建。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li>Apple 于 2020 年 10 月使用试生产的配备 Apple&nbsp;M1 芯片的 13 英寸 MacBook&nbsp;Pro 系统，以及已上市的配备 1.7GHz 4 核 Intel&nbsp;Core&nbsp;i7 处理器的 13 英寸 MacBook&nbsp;Pro 系统进行了此项测试，所有系统均配置 16GB RAM 和 2TB 固态硬盘。测试使用预发行版 Final&nbsp;Cut&nbsp;Pro&nbsp;10.5 进行，采用一段时长 55 秒的剪辑片段，该片段包含 4K&nbsp;Apple&nbsp;ProRes&nbsp;RAW 媒体，分辨率为 4096x2160，帧率为 59.94 fps，并转码为 Apple&nbsp;ProRes&nbsp;422。性能测试在特定电脑系统上进行，能够大致反映 MacBook&nbsp;Pro 的性能。</li><li><br></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1}],\"status\":1},{\"createdAt\":1615016892132,\"img\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/6/6043328a3dff57183c44abbc2lalzgmo.png\",\"subHeading\":\"每次看日剧总是惊叹那些煮妇们的收纳能力\",\"id\":4,\"authorId\":5,\"title\":\"10个超简单的收纳方法！\",\"type\":4,\"content\":\"<p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t11.baidu.com/it/u=450840916,3459095237&fm=173&app=25&f=JPEG?w=640&h=360&s=02839C4D4C2D293E5884D42A03007049\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\"></span></p><p><span style=\\\"font-size: 16px;\\\">*日剧《我的家里空无一物》中橱柜的杯具收纳，就连每隔杯子的间距都是一致的</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t11.baidu.com/it/u=2825914612,715516593&fm=173&app=25&f=JPEG?w=640&h=426&s=37FA7D859862789E518D19F203005030\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\"></span></p><p><span style=\\\"font-size: 16px;\\\">*日剧《面包和汤和猫咪好天气》中仅仅有条的厨房</span></p><p><span style=\\\"font-size: 16px;\\\">看到杂乱的家，想收拾却无从下手？或者苦恼小户型怎么能收下超多的生活用品？不是你做不到只是你没有掌握收纳的诀窍。接下来介绍的10个收纳方法，会让你茅塞顿开，成为收纳达人指日可待。</span></p><p><span style=\\\"font-size: 16px;\\\">1.空间的立体利用</span></p><p><span style=\\\"font-size: 16px;\\\">家里会有很多橱柜空间很深，如果放满了里面很不好拿放，放不满空间就浪费了一半。像这样的立体空间我们可以在空间内放一些可以前后滑动的小筐筐，充分利用空间的同时也可以做好分类，方便拿放。</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t12.baidu.com/it/u=82148021,3276484885&fm=173&app=25&f=JPEG?w=640&h=959&s=D128BB57440146EC06BDE56B0300B06B\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">空间的立体利用</span></p><p><span style=\\\"font-size: 16px;\\\">2.餐桌的边边角角要充分利用</span></p><p><span style=\\\"font-size: 16px;\\\">其实，无论房间面积多小都会多多少少有一些空间被我们忽略，如果把这些空间利用起来，就会变出好多的空间收纳。餐厅的桌子底下就可以用来收纳书、杂志、文具等。同样，厨房的柜子也可以在凹进去的地方做一些改造变成收纳，这样既可以做装饰又可以收纳一些自己平常看的书籍或者小物件。</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t10.baidu.com/it/u=1269434967,1034622585&fm=173&app=25&f=JPEG?w=640&h=427&s=D72426E2CB322E881E19543C03001048\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">餐桌的边边角角要充分利用</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t12.baidu.com/it/u=1963199735,3528879088&fm=173&app=25&f=JPEG?w=640&h=959&s=B428FE176643534F1E82A0750300506B\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">餐桌的边边角角要充分利用</span></p><p><span style=\\\"font-size: 16px;\\\">3.灵活运用死角</span></p><p><span style=\\\"font-size: 16px;\\\">利用死角进行收纳的诀窍是，如果不说那里放了东西就不会有人看的出来！例如客厅沙发后面挂装饰画的地方可以设置一个加盖的木板凹槽，里面收纳好东西后盖上盖子就看不出来。</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t10.baidu.com/it/u=750199491,244264368&fm=173&app=25&f=JPEG?w=640&h=427&s=CD1A2FD77EFB1F8E72B871730300E070\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">灵活运用死角</span></p><p><span style=\\\"font-size: 16px;\\\">4.使用场所就是收纳场所</span></p><p><span style=\\\"font-size: 16px;\\\">收纳不是把东西随便的放在一起，而是为了更方便的使用。所以我们在收纳的时候要秉承一个原则，在哪里使用就尽量在哪里收纳。比如我们洗漱要用的毛巾、牙刷、沐浴露等，我们就可以在洗漱的就近用一些隔断或者橱柜，把这些东西放在一起，这样在洗澡前，就不用再去卧室取，而是直接在浴室一个柜子里就能拿全东西。</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t10.baidu.com/it/u=2375220090,3153935732&fm=173&app=25&f=JPEG?w=640&h=959&s=EE7822D4634B5EEE33E5A0710300F072\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">使用场所就是收纳场所</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t10.baidu.com/it/u=588426162,1801002218&fm=173&app=25&f=JPEG?w=640&h=959&s=C6518B747EF7769E8408786F0300E060\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">使用场所就是收纳场所</span></p><p><span style=\\\"font-size: 16px;\\\">5.使用活动的柜子，使小家电可滑动</span></p><p><span style=\\\"font-size: 16px;\\\">电饭煲、烤面包机、煮蛋器、搅拌机等一系列的厨房小家电如果放在一些可以滑动的小柜子里就会使厨房清爽很多，而且使用超级方便，再也不用人钻到柜子里去拿最里面的家电了。</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t10.baidu.com/it/u=2727461109,976249022&fm=173&app=25&f=JPEG?w=640&h=872&s=CE48B3560ED256DA86B1F14C0300E072\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">使用活动的柜子，使小家电可滑动</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t12.baidu.com/it/u=3314816390,2864178883&fm=173&app=25&f=JPEG?w=640&h=959&s=4D302BD5A677438A54999D760300D071\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">使用活动的柜子，使小家电可滑动</span></p><p><span style=\\\"font-size: 16px;\\\">6.充分利用洗衣机上方的空间</span></p><p><span style=\\\"font-size: 16px;\\\">洗衣机的上方空间也不要浪费，放一些隔断就可以把洗衣液、衣架等相关物品放在上面。</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t12.baidu.com/it/u=1905103913,855716081&fm=173&app=25&f=JPEG?w=640&h=959&s=ADB87B942737438E1AF5F8730300F070\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">充分利用洗衣机上方的空间</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t12.baidu.com/it/u=245139629,1233305821&fm=173&app=25&f=JPEG?w=640&h=959&s=C6538276731067DE876434C703007060\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">充分利用洗衣机上方的空间</span></p><p><span style=\\\"font-size: 16px;\\\">7.万能的挂钩可以增加很多空间收纳</span></p><p><span style=\\\"font-size: 16px;\\\">很多柜子的门内侧是一个通常被忽略的空间，如果在门的内侧挂一些S形的挂钩就可以挂很多的小物件，而且关上门之后什么都看不到。同样的道理，储藏室的清洁工具也可以这样收纳。</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t12.baidu.com/it/u=3653944748,2143472280&fm=173&app=25&f=JPEG?w=640&h=959&s=C2F0AD7757135FDA885D556203007060\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">万能的挂钩可以增加很多空间收纳</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t11.baidu.com/it/u=948990184,703456527&fm=173&app=25&f=JPEG?w=640&h=959&s=46619A541B737B98D48151410300A0E1\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">万能的挂钩可以增加很多空间收纳</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t12.baidu.com/it/u=2468948237,229945673&fm=173&app=25&f=JPEG?w=640&h=959&s=ED3A3BD736AE21BB5BB4A12303007051\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">万能的挂钩可以增加很多空间收纳</span></p><p><span style=\\\"font-size: 16px;\\\">8.磁铁吸附收纳</span></p><p><span style=\\\"font-size: 16px;\\\">现在已经有很多人在利用磁铁吸附收纳刀具等金属物品。其实有很多的金属调味料瓶子也可以利用磁铁吸附在墙上，这样就可以节约桌面上的空间，而且也会很漂亮的。</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t10.baidu.com/it/u=2395048782,3377837868&fm=173&app=25&f=JPEG?w=640&h=427&s=8EC1B25617767F8010D8C15E010040F3\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">磁铁吸附收纳</span></p><p><span style=\\\"font-size: 16px;\\\">9.妙用文具盒</span></p><p><span style=\\\"font-size: 16px;\\\">女生会有很多的包包，我们可以利用很多文具盒、塑料篮作为包包的收纳工具，这样包包可以竖着放，不易变形。厨房可以用文具盒或者塑料篮放在橱柜的顶部，不常用的一些可以放在里面。</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t12.baidu.com/it/u=3338266838,1608220155&fm=173&app=25&f=JPEG?w=640&h=413&s=0021DD10106244AA8868E1DF010080E2\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">妙用文具盒</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t12.baidu.com/it/u=2738756504,2987448281&fm=173&app=25&f=JPEG?w=640&h=959&s=E008DF108837738AABA5AD5B030010E3\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">妙用文具盒</span></p><p><span style=\\\"font-size: 16px;\\\">10.秉承&ldquo;使用时才出现的原则&rdquo;</span></p><p><span style=\\\"font-size: 16px;\\\">这个叫&ldquo;备胎&rdquo;收纳方法。使用的时候就出现，平常就默默的呆着，不被发现。这样的家会更加整洁。很多开放式的厨房很多东西都会裸露在外面，客人看到可能会不太美观或者主人在休息的时候看到会有一定的紧张感。这时候可以做一个推拉的挡板挡起来。</span></p><p><span style=\\\"font-size: 16px;\\\"><img data-fr-image-pasted=\\\"true\\\" data-loadfunc=\\\"0\\\" src=\\\"https://t10.baidu.com/it/u=3095548938,1225817542&fm=173&app=25&f=JPEG?w=640&h=851&s=54D83AD7CA5756CA12D0756E03004073\\\" data-loaded=\\\"0\\\" class=\\\"fr-fic fr-dii\\\">秉承&ldquo;使用时才出现的原则&rdquo;</span></p><div data-reply-id=\\\"1107425719584347013\\\"><br></div>\",\"products\":[{\"createdAt\":1614951489149,\"sequence\":\"010101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/m/604231e04731815558ab52bdr1ywidbg.png\"],\"sno\":\"21345\",\"price\":3,\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"}],\"stock\":23}],\"merchantId\":21,\"price\":3,\"brandId\":4,\"name\":\"刷子\",\"id\":8,\"params\":[{\"label\":\"规格\",\"value\":\"200*4000\"}],\"priority\":1,\"content\":\"<p>这是一块可爱的香皂</p>\",\"status\":1},{\"createdAt\":1614951461099,\"sequence\":\"020101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/h/6042340d04abb65c9f8354544zkw5flx.png\"],\"sno\":\"12020\",\"price\":1200,\"params\":[{\"label\":\"111\",\"value\":\"222\"},{\"label\":\"333\",\"value\":\"444\"}],\"stock\":120}],\"merchantId\":22,\"price\":1200,\"brandId\":5,\"name\":\"测试商品\",\"id\":7,\"params\":[{\"label\":\"qeqw\",\"value\":\"qweqweqweq\"}],\"priority\":1,\"content\":\"<p>sadasdasd</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1},{\"createdAt\":1615185790492,\"sequence\":\"050201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/s/6045c7e4237f5929482e8e8eeeijdw55.png\"],\"sno\":\"123131\",\"price\":2990,\"params\":[{\"label\":\"尺寸\",\"value\":\"40cm\"}],\"stock\":12222}],\"merchantId\":25,\"price\":2990,\"brandId\":8,\"name\":\"垃圾桶精致塑胶盆多套组合经济实用\",\"id\":19,\"params\":[{\"label\":\"材料\",\"value\":\"塑胶\"}],\"priority\":1,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/o/6045c5e228d9591c22e2714csedzrf9g.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1},{\"createdAt\":1615185789653,\"sequence\":\"050202\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045c59a28d9591c22e2714aixs8e7u6.png\"],\"sno\":\"123131\",\"price\":2990,\"params\":[{\"label\":\"尺寸\",\"value\":\"40cm\"}],\"stock\":12222}],\"merchantId\":25,\"price\":2990,\"brandId\":8,\"name\":\"精致塑胶洗脸盆多套组合经济实用\",\"id\":18,\"params\":[{\"label\":\"材料\",\"value\":\"塑胶\"}],\"priority\":1,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/o/6045c5e228d9591c22e2714csedzrf9g.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1}],\"status\":1}],\"listStyle\":1,\"subHeading\":\"好玩有趣，应有尽有\",\"title\":\"情景购\"},{\"key\":\"MERCHANT\",\"list\":[{\"createdAt\":1614950877455,\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/q/604231d004abb65c9f83544cq0ke4gsr.png\"],\"mobile\":\"15182243486\",\"name\":\"JINX的商户\",\"logo\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/v/6042319a04abb65c9f83544bmhfc4ehk.png\",\"location\":{\"code\":\"410184\",\"lng\":113.740772,\"poiaddress\":\"河南省郑州市新郑市人民路西段186号\",\"detail\":\"湖南长沙郑州大学\",\"poiname\":\"新郑市人民政府\",\"lat\":34.395692},\"id\":22,\"productNum\":1,\"sequences\":[\"020000\"],\"title\":\"JINX的商户\",\"status\":2},{\"createdAt\":1614950831825,\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/k/604231934731815558ab52bcw9ohiczy.png\"],\"mobile\":\"86-18336793750\",\"name\":\"蚂蚁牙嘿嘿\",\"logo\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/s/6042316a4731815558ab52bbspod3156.png\",\"location\":{\"code\":\"410184\",\"lng\":113.74161,\"poiaddress\":\"郑州市\",\"detail\":\"电商大厦\",\"poiname\":\"我的位置\",\"lat\":34.39605},\"id\":21,\"productNum\":1,\"sequences\":[\"010000\"],\"title\":\"蚂蚁牙嘿嘿\",\"status\":2},{\"createdAt\":1614993896342,\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/q/6042d9cfa7a4b70f22a91727y4uj0c1s.png\"],\"lastModify\":1614994769010,\"mobile\":\"18303800683\",\"name\":\"AppleStore\",\"logo\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/e/6042d91ca7a4b70f22a91726bxc2x95i.png\",\"location\":{\"code\":\"410103\",\"lng\":113.662862382,\"poiaddress\":\"河南省郑州市二七区民主路10号郑州万象城2层\",\"detail\":\"万象城2l\",\"poiname\":\"Apple 郑州万象城\",\"lat\":34.754927256},\"id\":23,\"productNum\":1,\"sequences\":[\"030000\"],\"title\":\"AppleStore\",\"status\":1},{\"createdAt\":1614995115091,\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/3/6042de04b29004228a3c4f69udd0n6bv.png\"],\"lastModify\":1614995211547,\"mobile\":\"18437929292\",\"name\":\"apple官方旗舰店\",\"logo\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/u/6042de84b29004228a3c4f6ap0hcnrgj.png\",\"location\":{\"code\":\"410184\",\"lng\":113.727792,\"poiaddress\":\"河南省郑州市新郑市环西路\",\"detail\":\"电商大商B座\",\"poiname\":\"华南城电商产业园\",\"lat\":34.610659},\"id\":24,\"productNum\":2,\"sequences\":[\"030000\"],\"title\":\"apple官方旗舰店\",\"status\":1},{\"createdAt\":1615015698244,\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/7/60432efe3dff57183c44abb2chsbgvc3.png\"],\"lastModify\":1615192090273,\"mobile\":\"0379-12345678\",\"name\":\"测试的店铺全品类\",\"logo\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/j/60432ecb3dff57183c44abb1rxadk0sf.png\",\"location\":{\"code\":\"410102\",\"lng\":113.740772,\"poiaddress\":\"河南省郑州市新郑市人民路西段186号\",\"detail\":\"这里是他的详细地址特别长中原区商城\",\"poiname\":\"新郑市人民政府\",\"lat\":34.395692},\"id\":25,\"productNum\":10,\"sequences\":[\"010000\",\"020000\",\"030000\",\"040000\",\"050000\"],\"title\":\"测试的店铺全品类\",\"status\":1}],\"listStyle\":1,\"subHeading\":\"好生活从周边开始\",\"title\":\"推荐商家\"},{\"key\":\"AD\",\"list\":[{\"img\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/o/6042363104abb65c9f83545eaiiq4ycd.png\",\"act\":\"NONE\",\"cindex\":6,\"index\":-1,\"type\":\"AD\"}],\"listStyle\":1,\"title\":\"广告位\"},{\"key\":\"BESTBUY\",\"list\":[{\"createdAt\":1614951489149,\"sequence\":\"010101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/m/604231e04731815558ab52bdr1ywidbg.png\"],\"sno\":\"21345\",\"price\":3,\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"}],\"stock\":23}],\"merchantId\":21,\"price\":3,\"brandId\":4,\"name\":\"刷子\",\"id\":8,\"params\":[{\"label\":\"规格\",\"value\":\"200*4000\"}],\"priority\":1,\"content\":\"<p>这是一块可爱的香皂</p>\",\"status\":1},{\"createdAt\":1615185790492,\"sequence\":\"050201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/s/6045c7e4237f5929482e8e8eeeijdw55.png\"],\"sno\":\"123131\",\"price\":2990,\"params\":[{\"label\":\"尺寸\",\"value\":\"40cm\"}],\"stock\":12222}],\"merchantId\":25,\"price\":2990,\"brandId\":8,\"name\":\"垃圾桶精致塑胶盆多套组合经济实用\",\"id\":19,\"params\":[{\"label\":\"材料\",\"value\":\"塑胶\"}],\"priority\":1,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/o/6045c5e228d9591c22e2714csedzrf9g.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1},{\"createdAt\":1615184730637,\"sequence\":\"050302\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/q/6045c28428d9591c22e27144652re354.png\"],\"sno\":\"2\",\"price\":1899900,\"params\":[{\"label\":\"材质\",\"value\":\"金属\"},{\"label\":\"颜色\",\"value\":\"米色\"}],\"stock\":2341232},{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/n/6045c2c128d9591c22e27146p0fnh16g.png\"],\"sno\":\"123\",\"price\":12900,\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"},{\"label\":\"颜色\",\"value\":\"橘色\"}],\"stock\":11111}],\"merchantId\":25,\"price\":12900,\"brandId\":9,\"name\":\"木之物高级多功能收纳盒木之物高级多功能收纳盒木之物高级多功能收纳盒\",\"id\":17,\"params\":[{\"label\":\"产地\",\"value\":\"义乌\"},{\"label\":\"材质\",\"value\":\"金属&陶瓷&玻璃\"}],\"priority\":1,\"content\":\"<ol><li><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/n/6045c33928d9591c22e271487w2cr4b0.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/d/6045c31628d9591c22e27147igl7c8s1.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1},{\"createdAt\":1615019754039,\"sequence\":\"010302\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/3/60433e7428d9591c22e27136da3eocpq.png\"],\"sno\":\"2\",\"price\":109900,\"params\":[{\"label\":\"尺寸\",\"value\":\"80*80\"},{\"label\":\"颜色\",\"value\":\"绿色\"}],\"stock\":137108}],\"merchantId\":25,\"price\":109900,\"brandId\":7,\"name\":\"布艺绿色摩登色彩一人坐高档产品沙发\",\"id\":14,\"params\":[{\"label\":\"产地\",\"value\":\"法国\"}],\"priority\":1,\"content\":\"<ol><li><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/w/60433ee428d9591c22e271370ust8dvi.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1},{\"createdAt\":1615019405024,\"sequence\":\"040105\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/w/60433cd228d9591c22e27131h7mt2rzb.png\"],\"sno\":\"2\",\"price\":19900,\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"},{\"label\":\"尺寸\",\"value\":\"20cm\"}],\"stock\":100000}],\"merchantId\":25,\"price\":19900,\"brandId\":8,\"name\":\"澳洲考拉摆件小闹钟全球购\",\"id\":13,\"params\":[{\"label\":\"材质\",\"value\":\"塑胶\"},{\"label\":\"机芯\",\"value\":\"瑞士\"},{\"label\":\"产地\",\"value\":\"澳洲进口\"}],\"priority\":1,\"content\":\"<ol><li><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/g/60433dd828d9591c22e27135map6lrh9.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1},{\"createdAt\":1615185789653,\"sequence\":\"050202\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045c59a28d9591c22e2714aixs8e7u6.png\"],\"sno\":\"123131\",\"price\":2990,\"params\":[{\"label\":\"尺寸\",\"value\":\"40cm\"}],\"stock\":12222}],\"merchantId\":25,\"price\":2990,\"brandId\":8,\"name\":\"精致塑胶洗脸盆多套组合经济实用\",\"id\":18,\"params\":[{\"label\":\"材料\",\"value\":\"塑胶\"}],\"priority\":1,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/o/6045c5e228d9591c22e2714csedzrf9g.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1}],\"listStyle\":1,\"subHeading\":\"场景购买，懂你所懂\",\"title\":\"热销\"},{\"key\":\"ARTICLE\",\"list\":[{\"collectNum\":1,\"authorImg\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/2/1/603dd315b588f697ac2b339ckq1690bq.jpeg\",\"authorId\":4,\"title\":\"文章测试6QQ王\",\"content\":\"<p>今年2月</p><p>知名音乐人赵英俊、演员吴孟达</p><p>先后因肝癌离世</p><p>也让大家再次重视起肝癌这一疾病</p><p>吴孟达从发现肝癌到去世</p><p>中间只隔了两个月</p><p>大多数肝癌患者被发现时</p><p>已经到了中晚期</p><p>对于肝癌</p><p>我们该如何早发现、早治疗呢？</p><p>我国肝癌发病率高 为第二大致命肿瘤</p><p>统计数据显示，中国每年新发肝癌约40万例，占到全球50%以上，2020年，肝癌成为我国发病率第五的恶性肿瘤。此外，肝癌也是仅次于胰腺癌的第二大致命肿瘤，5年生存率不到15%。</p><p>医生表示：肝癌早期缺乏特异性的症状，比如上腹比较饱胀、食欲不好等一些非典型症状。早期症状比较隐匿，很多病人发现的时候都到了中晚期，治疗比较棘手，晚期一般生存期在三到六个月。</p><p>高危因素：肝炎病毒感染</p><p>长期酗酒、黄曲霉素污染等</p><p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/e/6042293504abb65c9f83543e38rgpsjl.png\\\" class=\\\"fr-fic fr-dii\\\"></p><p>专家介绍，肝癌隐匿性较强，但并非无迹可寻。一般来说，肝癌有&ldquo;三步曲&rdquo;：乙肝、肝硬化、肝癌。哪些人容易患上这一疾病呢？高危因素除了肝炎病毒感染外，还有长期酗酒、肥胖、黄曲霉素污染等等。</p><p>第一种是有乙肝、丙肝这类肝炎病毒感染病人</p><p>第二种是经常酗酒</p><p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/b/6042294004abb65c9f83543fl765yxgd.jpg\\\" class=\\\"fr-fic fr-dii\\\"></p><p>第三种是有非脂肪性肝炎、肝硬化的病人</p><p>第四种是经常食用黄曲霉素污染的水源、食物</p><p>高危人群半年内应接受&ldquo;防癌体检筛查&rdquo;</p><p>与一般人相比，有乙肝病史者患肝癌的风险增加10倍以上，食用霉变的玉米、花生，也有致癌作用。目前，肝癌治疗的重点是&ldquo;早发现、早诊断、早治疗&rdquo;。医生建议，高危人群应每3到6个月到医院接受一次&ldquo;防癌体检筛查&rdquo;。值得关注的是，随着医疗水平不断提高，部分晚期肝癌患者可以长期生存。</p><p>尽量戒酒戒烟，酒精对肝脏会有很大的损伤；部分肝癌病人，后面会出现肝硬化、消化道出血，这部分病人要注意饮食上清淡，吃一些容易消化的东西，粗糙的一些食物容易引起出血。</p><p>小编提醒</p><p>大家在饮食上要注意清淡、新鲜</p><p>少吃辛辣、油腻的食物</p><p>在生活习惯方面</p><p>避免经常熬夜、过于劳累</p><p>情绪上也要尽量保持乐观</p>\",\"picture\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/w/604229fa04abb65c9f835442jq8wsm4j.png\",\"pageView\":1,\"createdAt\":1614948865115,\"authorName\":\"余晋\",\"intro\":\"文章测试6QQ王文章测试\",\"id\":4,\"status\":1,\"supportNum\":1},{\"collectNum\":1,\"authorImg\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/2/1/603dd315b588f697ac2b339ckq1690bq.jpeg\",\"authorId\":4,\"title\":\"文章测试3QQ王\",\"content\":\"<p>今年2月</p><p>知名音乐人赵英俊、演员吴孟达</p><p>先后因肝癌离世</p><p>也让大家再次重视起肝癌这一疾病</p><p>吴孟达从发现肝癌到去世</p><p>中间只隔了两个月</p><p>大多数肝癌患者被发现时</p><p>已经到了中晚期</p><p>对于肝癌</p><p>我们该如何早发现、早治疗呢？</p><p>我国肝癌发病率高 为第二大致命肿瘤</p><p>统计数据显示，中国每年新发肝癌约40万例，占到全球50%以上，2020年，肝癌成为我国发病率第五的恶性肿瘤。此外，肝癌也是仅次于胰腺癌的第二大致命肿瘤，5年生存率不到15%。</p><p>医生表示：肝癌早期缺乏特异性的症状，比如上腹比较饱胀、食欲不好等一些非典型症状。早期症状比较隐匿，很多病人发现的时候都到了中晚期，治疗比较棘手，晚期一般生存期在三到六个月。</p><p>高危因素：肝炎病毒感染</p><p>长期酗酒、黄曲霉素污染等</p><p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/e/6042293504abb65c9f83543e38rgpsjl.png\\\" class=\\\"fr-fic fr-dii\\\"></p><p>专家介绍，肝癌隐匿性较强，但并非无迹可寻。一般来说，肝癌有&ldquo;三步曲&rdquo;：乙肝、肝硬化、肝癌。哪些人容易患上这一疾病呢？高危因素除了肝炎病毒感染外，还有长期酗酒、肥胖、黄曲霉素污染等等。</p><p>第一种是有乙肝、丙肝这类肝炎病毒感染病人</p><p>第二种是经常酗酒</p><p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/b/6042294004abb65c9f83543fl765yxgd.jpg\\\" class=\\\"fr-fic fr-dii\\\"></p><p>第三种是有非脂肪性肝炎、肝硬化的病人</p><p>第四种是经常食用黄曲霉素污染的水源、食物</p><p>高危人群半年内应接受&ldquo;防癌体检筛查&rdquo;</p><p>与一般人相比，有乙肝病史者患肝癌的风险增加10倍以上，食用霉变的玉米、花生，也有致癌作用。目前，肝癌治疗的重点是&ldquo;早发现、早诊断、早治疗&rdquo;。医生建议，高危人群应每3到6个月到医院接受一次&ldquo;防癌体检筛查&rdquo;。值得关注的是，随着医疗水平不断提高，部分晚期肝癌患者可以长期生存。</p><p>尽量戒酒戒烟，酒精对肝脏会有很大的损伤；部分肝癌病人，后面会出现肝硬化、消化道出血，这部分病人要注意饮食上清淡，吃一些容易消化的东西，粗糙的一些食物容易引起出血。</p><p>小编提醒</p><p>大家在饮食上要注意清淡、新鲜</p><p>少吃辛辣、油腻的食物</p><p>在生活习惯方面</p><p>避免经常熬夜、过于劳累</p><p>情绪上也要尽量保持乐观</p>\",\"picture\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/5/604229d704abb65c9f835441rav5j4au.png\",\"pageView\":1,\"createdAt\":1614948828628,\"authorName\":\"余晋\",\"intro\":\"我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介\",\"id\":3,\"status\":1,\"supportNum\":1},{\"collectNum\":1,\"authorImg\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/2/1/603dd315b588f697ac2b339ckq1690bq.jpeg\",\"authorId\":4,\"title\":\"文章测试2QQ王\",\"content\":\"<p>今年2月</p><p>知名音乐人赵英俊、演员吴孟达</p><p>先后因肝癌离世</p><p>也让大家再次重视起肝癌这一疾病</p><p>吴孟达从发现肝癌到去世</p><p>中间只隔了两个月</p><p>大多数肝癌患者被发现时</p><p>已经到了中晚期</p><p>对于肝癌</p><p>我们该如何早发现、早治疗呢？</p><p>我国肝癌发病率高 为第二大致命肿瘤</p><p>统计数据显示，中国每年新发肝癌约40万例，占到全球50%以上，2020年，肝癌成为我国发病率第五的恶性肿瘤。此外，肝癌也是仅次于胰腺癌的第二大致命肿瘤，5年生存率不到15%。</p><p>医生表示：肝癌早期缺乏特异性的症状，比如上腹比较饱胀、食欲不好等一些非典型症状。早期症状比较隐匿，很多病人发现的时候都到了中晚期，治疗比较棘手，晚期一般生存期在三到六个月。</p><p>高危因素：肝炎病毒感染</p><p>长期酗酒、黄曲霉素污染等</p><p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/e/6042293504abb65c9f83543e38rgpsjl.png\\\" class=\\\"fr-fic fr-dii\\\"></p><p>专家介绍，肝癌隐匿性较强，但并非无迹可寻。一般来说，肝癌有&ldquo;三步曲&rdquo;：乙肝、肝硬化、肝癌。哪些人容易患上这一疾病呢？高危因素除了肝炎病毒感染外，还有长期酗酒、肥胖、黄曲霉素污染等等。</p><p>第一种是有乙肝、丙肝这类肝炎病毒感染病人</p><p>第二种是经常酗酒</p><p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/b/6042294004abb65c9f83543fl765yxgd.jpg\\\" class=\\\"fr-fic fr-dii\\\"></p><p>第三种是有非脂肪性肝炎、肝硬化的病人</p><p>第四种是经常食用黄曲霉素污染的水源、食物</p><p>高危人群半年内应接受&ldquo;防癌体检筛查&rdquo;</p><p>与一般人相比，有乙肝病史者患肝癌的风险增加10倍以上，食用霉变的玉米、花生，也有致癌作用。目前，肝癌治疗的重点是&ldquo;早发现、早诊断、早治疗&rdquo;。医生建议，高危人群应每3到6个月到医院接受一次&ldquo;防癌体检筛查&rdquo;。值得关注的是，随着医疗水平不断提高，部分晚期肝癌患者可以长期生存。</p><p>尽量戒酒戒烟，酒精对肝脏会有很大的损伤；部分肝癌病人，后面会出现肝硬化、消化道出血，这部分病人要注意饮食上清淡，吃一些容易消化的东西，粗糙的一些食物容易引起出血。</p><p>小编提醒</p><p>大家在饮食上要注意清淡、新鲜</p><p>少吃辛辣、油腻的食物</p><p>在生活习惯方面</p><p>避免经常熬夜、过于劳累</p><p>情绪上也要尽量保持乐观</p>\",\"picture\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/5/604229a804abb65c9f835440ge5s3zl9.png\",\"pageView\":1,\"createdAt\":1614948790993,\"authorName\":\"余晋\",\"intro\":\"我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是测试文章简介\",\"id\":2,\"status\":1,\"supportNum\":1},{\"collectNum\":1,\"authorImg\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/2/1/603dd315b588f697ac2b339ckq1690bq.jpeg\",\"authorId\":4,\"title\":\"测试文章QQ王\",\"content\":\"<p>今年2月</p><p>知名音乐人赵英俊、演员吴孟达</p><p>先后因肝癌离世</p><p>也让大家再次重视起肝癌这一疾病</p><p>吴孟达从发现肝癌到去世</p><p>中间只隔了两个月</p><p>大多数肝癌患者被发现时</p><p>已经到了中晚期</p><p>对于肝癌</p><p>我们该如何早发现、早治疗呢？</p><p>我国肝癌发病率高 为第二大致命肿瘤</p><p>统计数据显示，中国每年新发肝癌约40万例，占到全球50%以上，2020年，肝癌成为我国发病率第五的恶性肿瘤。此外，肝癌也是仅次于胰腺癌的第二大致命肿瘤，5年生存率不到15%。</p><p>医生表示：肝癌早期缺乏特异性的症状，比如上腹比较饱胀、食欲不好等一些非典型症状。早期症状比较隐匿，很多病人发现的时候都到了中晚期，治疗比较棘手，晚期一般生存期在三到六个月。</p><p>高危因素：肝炎病毒感染</p><p>长期酗酒、黄曲霉素污染等</p><p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/e/6042293504abb65c9f83543e38rgpsjl.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p>专家介绍，肝癌隐匿性较强，但并非无迹可寻。一般来说，肝癌有&ldquo;三步曲&rdquo;：乙肝、肝硬化、肝癌。哪些人容易患上这一疾病呢？高危因素除了肝炎病毒感染外，还有长期酗酒、肥胖、黄曲霉素污染等等。</p><p>第一种是有乙肝、丙肝这类肝炎病毒感染病人</p><p>第二种是经常酗酒</p><p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/b/6042294004abb65c9f83543fl765yxgd.jpg\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p>第三种是有非脂肪性肝炎、肝硬化的病人</p><p>第四种是经常食用黄曲霉素污染的水源、食物</p><p>高危人群半年内应接受&ldquo;防癌体检筛查&rdquo;</p><p>与一般人相比，有乙肝病史者患肝癌的风险增加10倍以上，食用霉变的玉米、花生，也有致癌作用。目前，肝癌治疗的重点是&ldquo;早发现、早诊断、早治疗&rdquo;。医生建议，高危人群应每3到6个月到医院接受一次&ldquo;防癌体检筛查&rdquo;。值得关注的是，随着医疗水平不断提高，部分晚期肝癌患者可以长期生存。</p><p>尽量戒酒戒烟，酒精对肝脏会有很大的损伤；部分肝癌病人，后面会出现肝硬化、消化道出血，这部分病人要注意饮食上清淡，吃一些容易消化的东西，粗糙的一些食物容易引起出血。</p><p>小编提醒</p><p>大家在饮食上要注意清淡、新鲜</p><p>少吃辛辣、油腻的食物</p><p>在生活习惯方面</p><p>避免经常熬夜、过于劳累</p><p>情绪上也要尽量保持乐观</p>\",\"picture\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/g/6042281c04abb65c9f83543dafzn274q.png\",\"pageView\":1,\"createdAt\":1614948696694,\"authorName\":\"余晋\",\"intro\":\"测试文章简介测试文章QQ王\",\"id\":1,\"status\":1,\"supportNum\":1},{\"collectNum\":0,\"authorImg\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/2/1/603dd315b588f697ac2b339ckq1690bq.jpeg\",\"authorId\":4,\"title\":\"厨房配置十大技巧\",\"content\":\"<p>厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光厨房配置十大技巧让你的厨房闪闪发光</p>\",\"picture\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/l/60459c394900966ad9e5d7a8ip467ogm.png\",\"pageView\":12222,\"createdAt\":1615174724434,\"authorName\":\"余晋\",\"intro\":\"厨房配置十大技巧让你的厨房闪闪发光\",\"id\":5,\"status\":1,\"supportNum\":0}],\"listStyle\":1,\"title\":\"推荐文章\"}]',1614951995250,1,'首页',1),
	(5,'[{\"key\":\"BANNER\",\"list\":[{\"img\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/m/6045d1bd6baaf92adb6293fcbsteeiod.png\",\"act\":\"NONE\",\"cindex\":0,\"index\":-1,\"type\":\"BANNER\"},{\"img\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/v/6045e6729655368014d756cdp5ju50f1.png\",\"act\":\"NONE\",\"cindex\":0,\"index\":-1,\"type\":\"BANNER\"}],\"listStyle\":1,\"title\":\"轮播图\"},{\"key\":\"BESTBUY\",\"list\":[{\"createdAt\":1615192670554,\"sequence\":\"040102\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045e2266baaf92be98f7931gwg47mnn.png\"],\"sno\":\"122112\",\"price\":37900,\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"}],\"stock\":6419741}],\"merchantId\":22,\"price\":37900,\"brandId\":7,\"name\":\"精致陶瓷两件花瓶摆件可插花\",\"id\":24,\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"priority\":1,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"status\":1},{\"createdAt\":1615192595060,\"sequence\":\"050303\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/k/6045e1ed6baaf92be98f7930v6t6j1x9.png\"],\"sno\":\"122112\",\"price\":1299900,\"params\":[{\"label\":\"材质\",\"value\":\"陶艺\"}],\"stock\":313}],\"merchantId\":22,\"price\":1299900,\"brandId\":4,\"name\":\"陶艺托盘三件套国际大牌阿玛尼\",\"id\":23,\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"priority\":1,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"status\":1},{\"createdAt\":1615192482718,\"sequence\":\"050304\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/9/6045e11e6baaf92be98f792czzkxc1f5.png\"],\"sno\":\"122112\",\"price\":29900,\"params\":[{\"label\":\"材质\",\"value\":\"乌木\"}],\"stock\":1331}],\"merchantId\":22,\"price\":29900,\"brandId\":8,\"name\":\"实木果盘坚果盘\",\"id\":22,\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"priority\":1,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/8/6045e1966baaf92be98f792fh3avbvch.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1},{\"createdAt\":1615191957747,\"sequence\":\"010503\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/p/6045df3d6baaf92be98f792aji2x9apg.png\"],\"sno\":\"122112\",\"price\":199900,\"params\":[{\"label\":\"材质\",\"value\":\"实木\"}],\"stock\":312}],\"merchantId\":25,\"price\":199900,\"brandId\":10,\"name\":\"创意茶几意大利设计师Mtojio独家新品\",\"id\":21,\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"priority\":1,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"status\":1},{\"createdAt\":1615191785072,\"sequence\":\"010302\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045de0e6baaf92be98f7927vb7fq4c8.png\"],\"sno\":\"122112\",\"price\":299900,\"params\":[{\"label\":\"材质\",\"value\":\"布艺\"}],\"stock\":3112321}],\"merchantId\":25,\"price\":299900,\"brandId\":7,\"name\":\"顾家精品布艺沙发意大利设计师独家设计\",\"id\":20,\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"priority\":1,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"status\":1},{\"createdAt\":1615185790492,\"sequence\":\"050201\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/s/6045c7e4237f5929482e8e8eeeijdw55.png\"],\"sno\":\"123131\",\"price\":2990,\"params\":[{\"label\":\"尺寸\",\"value\":\"40cm\"}],\"stock\":12222}],\"merchantId\":25,\"price\":2990,\"brandId\":8,\"name\":\"垃圾桶精致塑胶盆多套组合经济实用\",\"id\":19,\"params\":[{\"label\":\"材料\",\"value\":\"塑胶\"}],\"priority\":1,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/o/6045c5e228d9591c22e2714csedzrf9g.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1}],\"listStyle\":1,\"subHeading\":\"好玩有趣，应有尽有\",\"title\":\"创意设计\"}]',1614952046094,1,'新品上架',2),
	(6,'[{\"key\":\"BANNER\",\"list\":[{\"img\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/p/6045d1d46baaf92adb6293fdg4dlogda.png\",\"act\":\"NONE\",\"cindex\":0,\"index\":-1,\"type\":\"BANNER\"}],\"listStyle\":1,\"title\":\"轮播图\"},{\"key\":\"SECKILL\",\"list\":[{\"product\":{\"createdAt\":1614951461099,\"sequence\":\"020101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/h/6042340d04abb65c9f8354544zkw5flx.png\"],\"sno\":\"12020\",\"price\":1200,\"params\":[{\"label\":\"111\",\"value\":\"222\"},{\"label\":\"333\",\"value\":\"444\"}],\"stock\":120}],\"merchantId\":22,\"price\":1200,\"brandId\":5,\"name\":\"测试商品\",\"id\":7,\"params\":[{\"label\":\"qeqw\",\"value\":\"qweqweqweq\"}],\"priority\":1,\"content\":\"<p>sadasdasd</p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1},\"secKillSpec\":[{\"sno\":\"12020\",\"price\":0,\"num\":0}],\"productId\":7,\"id\":12,\"endAt\":1617630119000,\"title\":\"饮水机大放送\",\"startAt\":1614951779000,\"status\":1},{\"product\":{\"createdAt\":1614951489149,\"sequence\":\"010101\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/5/m/604231e04731815558ab52bdr1ywidbg.png\"],\"sno\":\"21345\",\"price\":3,\"params\":[{\"label\":\"颜色\",\"value\":\"白色\"}],\"stock\":23}],\"merchantId\":21,\"price\":3,\"brandId\":4,\"name\":\"刷子\",\"id\":8,\"params\":[{\"label\":\"规格\",\"value\":\"200*4000\"}],\"priority\":1,\"content\":\"<p>这是一块可爱的香皂</p>\",\"status\":1},\"secKillSpec\":[{\"sno\":\"21345\",\"price\":1,\"num\":11}],\"productId\":8,\"id\":11,\"endAt\":1617629905000,\"title\":\"家具大放送\",\"startAt\":1614951747000,\"status\":1},{\"product\":{\"createdAt\":1615019754039,\"sequence\":\"010302\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/3/60433e7428d9591c22e27136da3eocpq.png\"],\"sno\":\"2\",\"price\":109900,\"params\":[{\"label\":\"尺寸\",\"value\":\"80*80\"},{\"label\":\"颜色\",\"value\":\"绿色\"}],\"stock\":137108}],\"merchantId\":25,\"price\":109900,\"brandId\":7,\"name\":\"布艺绿色摩登色彩一人坐高档产品沙发\",\"id\":14,\"params\":[{\"label\":\"产地\",\"value\":\"法国\"}],\"priority\":1,\"content\":\"<ol><li><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/6/w/60433ee428d9591c22e271370ust8dvi.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></li></ol><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1},\"secKillSpec\":[{\"sno\":\"2\",\"price\":50000,\"num\":50}],\"productId\":14,\"id\":13,\"endAt\":1615252591000,\"title\":\"十周年店庆活动\",\"startAt\":1615166309000,\"status\":1},{\"product\":{\"createdAt\":1615192670554,\"sequence\":\"040102\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/w/6045e2266baaf92be98f7931gwg47mnn.png\"],\"sno\":\"122112\",\"price\":37900,\"params\":[{\"label\":\"材质\",\"value\":\"陶瓷\"}],\"stock\":6419741}],\"merchantId\":22,\"price\":37900,\"brandId\":7,\"name\":\"精致陶瓷两件花瓶摆件可插花\",\"id\":24,\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"priority\":1,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/e/6045de806baaf92be98f79299zaq0ktj.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/z/6045de7f6baaf92be98f7928x09tzh80.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\">\",\"status\":1},\"secKillSpec\":[{\"sno\":\"122112\",\"price\":35000,\"num\":50}],\"productId\":24,\"id\":18,\"endAt\":1618572409000,\"title\":\"陶瓷\",\"startAt\":1615202989000,\"status\":1},{\"product\":{\"createdAt\":1615192482718,\"sequence\":\"050304\",\"specs\":[{\"imgs\":[\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/9/6045e11e6baaf92be98f792czzkxc1f5.png\"],\"sno\":\"122112\",\"price\":29900,\"params\":[{\"label\":\"材质\",\"value\":\"乌木\"}],\"stock\":1331}],\"merchantId\":22,\"price\":29900,\"brandId\":8,\"name\":\"实木果盘坚果盘\",\"id\":22,\"params\":[{\"label\":\"产地\",\"value\":\"意大利\"}],\"priority\":1,\"content\":\"<p><img src=\\\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/3/8/8/6045e1966baaf92be98f792fh3avbvch.png\\\" style=\\\"width: 300px;\\\" class=\\\"fr-fic fr-dib\\\"></p><p data-f-id=\\\"pbf\\\" style=\\\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\\\">Powered by <a href=\\\"https://www.froala.com/wysiwyg-editor?pb=1\\\" title=\\\"Froala Editor\\\">Froala Editor</a></p>\",\"status\":1},\"secKillSpec\":[{\"sno\":\"122112\",\"price\":20000,\"num\":50}],\"productId\":22,\"id\":21,\"endAt\":1618486294000,\"title\":\"限时秒杀666\",\"startAt\":1615203274000,\"status\":1}],\"listStyle\":1,\"title\":\"秒杀活动\"}]',1614952257695,1,'限时特惠',3),
	(7,'[{\"key\":\"BANNER\",\"list\":[{\"img\":\"https://18303800683.oss-cn-beijing.aliyuncs.com/smart/file/2021/4/5/x/606a74b24d011413d12c468coe3zkxu0.png\",\"act\":\"NONE\",\"cindex\":0,\"index\":-1,\"type\":\"BANNER\"}],\"listStyle\":1,\"title\":\"轮播图\"}]',1617589442228,2,'111',1);

/*!40000 ALTER TABLE `ui` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `age` int(3) DEFAULT '18',
  `sex` tinyint(1) DEFAULT NULL COMMENT '??1??2??',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(200) DEFAULT '',
  `status` tinyint(1) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_mobile` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `age`, `sex`, `mobile`, `password`, `status`, `created_at`, `avatar`)
VALUES
	(4,'ef716615',NULL,NULL,'86-18336793750','75382d4c2e382475872c146d1e0becebd648f753e83efc5b7cb8b9ef9f332754',1,1614951942220,NULL),
	(5,'余晋',NULL,1,'86-15182245237','75382d4c2e382475872c146d1e0becebd648f753e83efc5b7cb8b9ef9f332754',1,1614992454184,NULL),
	(6,'hyt',NULL,1,'86-18437929292','75382d4c2e382475872c146d1e0becebd648f753e83efc5b7cb8b9ef9f332754',1,1614996846593,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/f/2021/3/6/p/6042e58bb29004228a3c4f6e19d3s2u7.png'),
	(7,'全世界最好的二嬢',NULL,2,'86-18303800683','75382d4c2e382475872c146d1e0becebd648f753e83efc5b7cb8b9ef9f332754',1,1614997409929,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/f/2021/3/9/1/6046d3098fc2f939c5254d7bc1sb6fkc.png'),
	(8,'奥利奥',NULL,2,'86-15021129897','75382d4c2e382475872c146d1e0becebd648f753e83efc5b7cb8b9ef9f332754',1,1615010347565,'https://18303800683.oss-cn-beijing.aliyuncs.com/smart/f/2021/3/8/b/6045d74d9655368014d756ccrdb5l2ds.png'),
	(9,'44c1112a',NULL,NULL,'86-17814645862','4d63ed9a83a12e78292c39b5e69891ed14d4750c43e09f285f0e07a18b6e376c',1,1615260450949,NULL),
	(10,'caafab0c',NULL,NULL,'86-15738888063','eb1faa3073b6c79070d0340ad3a43663bc4f9627fb858c6322d42385d773fe84',1,1615260512328,NULL),
	(11,'8c35552f',NULL,NULL,'86-18538381813','cae73b76e8c98ff7fe9a8c0ae77f18c9237f8f78c962262695c8ec6f90a93962',1,1615260542151,NULL);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_coupon
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_coupon`;

CREATE TABLE `user_coupon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `valid_thru` bigint(20) NOT NULL COMMENT '优惠券过期时间(us)',
  `coupon_id` bigint(20) NOT NULL COMMENT '优惠券id',
  `status` tinyint(2) NOT NULL COMMENT '用户优惠券使用状态/待使用/已使用/过期',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `get_at` bigint(20) NOT NULL COMMENT '用户获得优惠券时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_id_ccoupon_id` (`user_id`,`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `user_coupon` WRITE;
/*!40000 ALTER TABLE `user_coupon` DISABLE KEYS */;

INSERT INTO `user_coupon` (`id`, `valid_thru`, `coupon_id`, `status`, `user_id`, `get_at`)
VALUES
	(1,1617330131668,1,2,1,1614738131668),
	(2,1617330147927,2,2,1,1614738147927),
	(3,1615616954798,3,2,1,1614752954798),
	(4,1615099231968,4,1,1,1614753631968),
	(5,1623408527246,5,2,1,1614768527246),
	(6,1620098431995,6,1,1,1614914431995),
	(7,1615008918455,8,2,1,1614922518455),
	(8,1615809634502,10,1,1,1614945634502),
	(9,1615034675721,7,1,1,1614948275721),
	(10,1617601714208,11,2,6,1615009714208),
	(11,1616912466851,14,2,6,1615184466851),
	(12,1617782150736,11,1,8,1615190150736),
	(15,1616919690332,15,2,6,1615191690332),
	(22,1619517162336,17,2,6,1615197162336),
	(23,1622973167199,16,2,6,1615197167199),
	(26,1617799279984,13,1,6,1615207279984),
	(27,1622984114944,19,2,6,1615208114944),
	(28,1622120218599,18,2,6,1615208218599),
	(29,1622120224718,22,2,6,1615208224718),
	(30,1616073340125,20,2,6,1615209340125),
	(31,1617801362130,21,2,6,1615209362130),
	(32,1622985631429,23,2,6,1615209631429),
	(33,1616980457487,24,2,6,1615252457487),
	(34,1615347261147,26,1,11,1615260861147),
	(35,1616133416210,27,2,6,1615269416210),
	(36,1615365366601,26,2,6,1615278966601),
	(38,1617006983777,25,2,6,1615278983777),
	(39,1616151911338,28,1,5,1615287911338),
	(40,1616154951301,28,2,6,1615290951301),
	(41,1616203709752,29,2,6,1615339709752),
	(42,1615689216922,30,1,6,1615516416922),
	(43,1623292422635,31,1,6,1615516422635),
	(44,1623292702193,32,1,6,1615516702193),
	(45,1625884848273,33,1,6,1615516848273),
	(46,1615689701779,34,1,6,1615516901779),
	(47,1617244906753,35,1,6,1615516906753),
	(48,1618108969959,36,1,6,1615516969959),
	(49,1617245020012,37,1,6,1615517020012),
	(50,1616381060925,38,1,6,1615517060925),
	(51,1618973174627,39,1,6,1615517174627),
	(52,1616381278917,40,1,6,1615517278917),
	(53,1625885737118,41,1,6,1615517737118),
	(54,1617247685378,42,1,6,1615519685378),
	(55,1616383752748,43,1,6,1615519752748),
	(57,1616383883839,44,1,6,1615519883839),
	(58,1617247920207,45,1,6,1615519920207),
	(59,1618111933576,46,1,6,1615519933576),
	(60,1618385107191,47,1,6,1615793107191),
	(61,1617671787483,42,1,4,1615943787483),
	(62,1616809106818,43,1,4,1615945106818),
	(63,1617959753760,44,1,7,1617095753760);

/*!40000 ALTER TABLE `user_coupon` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_session`;

CREATE TABLE `user_session` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `token` varchar(300) DEFAULT NULL,
  `signin_at` bigint(20) NOT NULL,
  `expire_at` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user_session` WRITE;
/*!40000 ALTER TABLE `user_session` DISABLE KEYS */;

INSERT INTO `user_session` (`id`, `user_id`, `token`, `signin_at`, `expire_at`)
VALUES
	(1,1,'u4vIk5WzxQtunYoChMWqALXMAdqHdfmvz1xMgZbuxGj7obQoaVpJIVRfWOXuGnr0',1614651689079,1614738089079),
	(2,2,'J51X3kAL3TJt6jqGRd8macg0zFVC1ZTubjXfMkKYwzDFQnc9oQzEx2dgOmTZARh8',1614659176500,1614745576500),
	(3,1,'3e04fErHzO9w06DQkiNfVrA61hbIDPPOIv5lgPtWQD1QjP9LT2ISZVmFICIEJDk3',1614693357692,1614779757692),
	(4,1,'oxqIx8wsRbcRzvvGwmky0QGpVmYc10TGwjDbRD01gFR31XVjVKzAJ9wI4XL6LRvV',1614738122719,1614824522719),
	(5,2,'FIe6h0TK7cDby9jclskYDqzxb0hUUxACUKxOUGQ3t9Xr3AaAXosR5T6QRJe9ddcu',1614750941121,1614837341121),
	(6,3,'AQZ175vxcgKcMIAlfMx2MPdVcBMbAmMXe8fwwxG82yxBSVrPox8GI3QVQsgBB3Hy',1614766172971,1614852572971),
	(7,2,'MQJ8tNgezamzuzNBKIEpD3UleoTuJKep9BDQAby6ndI9Hj0eva5KfUVHydsCXrSx',1614823127071,1614909527071),
	(8,1,'7QgKKCVZVe6uZVLUciT0a3LWQPiJjl9waXzXQTjBGYhh2YGzcC57cRke3gbUJHfy',1614825274590,1614911674590),
	(9,2,'l6e3k5qrcpk8MHywC9Dbt35FT2dQUTxaCGSd8RW6wFSKoA5v8tv4rKcWCyAbPS9p',1614826452576,1614912852576),
	(10,2,'vn30tJnmYLrGgtilqcT9YWSdvbRtQyEqBNHYMqGvaMG92FRlbyGsJMEJBPeFaaLR',1614826457989,1614912857989),
	(11,2,'veFfG8xfVkSXSNEstN2t3blfkypO5286hRpWgTf8LQYPMIq0Ro8d8nVFEjiksBXw',1614826528850,1614912928850),
	(12,2,'S3aBSkE3PgDwyKFa3tHsZL1hJ3v3WQX2tkGZz317F2oGzCUZ2Ip8wblznAmQ7ytZ',1614826550288,1614912950288),
	(13,2,'rvBOU6Opn1fJeuI9S6WMWxeuZf6luVtNUnCV2vYLS1JvHIKMaud4pJ6IrlTyWe2o',1614826995352,1614913395352),
	(14,2,'exTJ8tnwWDu6QnxxwZXRRQz8CHiy0cwnCexPjSWNBAAS9BzhTFIGpzOBFq7K9LMd',1614828784596,1614915184596),
	(15,2,'z5YeNUFaYmKdXkKr6MgUn3MHlVINORYX9zAVh9PITyZMniQ91tmnefx2IEPMJhMY',1614828936314,1614915336314),
	(16,2,'FGugpyuknuZWTsrUDsSjahXKudaQGp27bApwZ5Zg2ST9pP1pWo9uSvaYfXtKPSCD',1614829099301,1614915499301),
	(17,2,'aykBbhGDfuGxwF43IqC49QAX9pZLHYx3Lj0fYqoWUUoh3tSjQw066BxtWdpHWVbm',1614831685330,1614918085330),
	(18,2,'C54dzgbgmHZYstw3QG7JjAVYGXD5hGFJC7crd678TZWjhKdK4cgdpCDCXaE6fFKg',1614831696301,1614918096301),
	(19,2,'AlSkg0Cx9N3vd5pZTayuc1BpJs9qEMW1W2HqXMrGuNprTn5QDI1qurHH1IkTTpDv',1614831969966,1614918369966),
	(20,3,'gmWJWkH9MuFINZrdvBzkCbphPpSoKzNRmGf3U9aGsH2V8GAE30hoTQ85mEHV8ndW',1614858718168,1614945118168),
	(21,1,'ZlOrsOtj2WXN2nMYDrA9xTZm7uKhjQTcLDtHYRQaLuvRXNypMSlb0eSxU91qbMUh',1614911804068,1614998204068),
	(22,2,'I2QaFLmJbUgnf5JNgIwoGkA3KFNHbS26zgxsxLwRnk6Rx52n7XCz650YPe4y6plq',1614923211835,1615009611835),
	(23,4,'v6yFwuP7yhp53LfIQ3K8a2KuxzPDKiAvWjQZ6CYdXUGkbTpm3hC9cyj3sngLSEZd',1614951944408,1615038344408),
	(24,4,'KjrKo7TKgB4aw5qltdkPGeTtzSLVM17hPqAsnxr43KfaTwi1cGdcETJAXHZRuipe',1614953205013,1615039605013),
	(25,4,'p6CQmkwuLppH1QhY15JocjhAKx5VmYt9sqwnqVaejRYyRhR9sPa5TyUCNacUpxk3',1614953210918,1615039610918),
	(26,5,'8pmw8SjNaD4MA5t6C00ZWWtvJFuNsvKeoGMVF5cB9BOF4OcSiQUM7VGjIsXHynlw',1614992457389,1615078857389),
	(27,6,'pgljooOXvlXguopfDbQUEYhWb0GRJVBQbDmQYcA66wolk4iJzecjmbrKqlrQ88KJ',1614996849721,1615083249721),
	(28,7,'1GLlpKhGvHEzqqFDGGm4KjjobJxjiDcwHVtlU6SXWFfr8LvofCzpxpTzZNG7x9JD',1614997411720,1615083811720),
	(29,6,'50PhDQ6uZuEV1yyFiFgJZyNPQZDWGpehElwQ9Utkq3LTuBXYEOzCN47MfBOx9skr',1615009533909,1615095933909),
	(30,4,'zCCW7WfCs05mrAwgD0rfrO05uc1g1zrUvHGRQkR8uiL6M4ZkHMBCQLL6ZmuXca3O',1615010264249,1615096664249),
	(31,8,'icOIG3VZOByXaoWfWN2NTQlAhnQOXzXtkyZx4lX2CbNtAxNLSY7yWKnqpLg5dSd6',1615010358048,1615096758048),
	(32,5,'MndxvJ4lUIitJ6MmRs9qccnkKWHPbt77pF1EmaxflBvGuWiXJ1eVFgjJuQuWQLcf',1615012685094,1615099085094),
	(33,5,'UuFzS1B11vqgGG1M5mWyczMNR8mVbCOkfvYLuG3YtdONSeyAMmLeOgC6e5qAFqhu',1615012692750,1615099092750),
	(34,5,'lHF5Q0SmVujsvO5pnnoGEutCKuue5xZR3z9DlVqFT9MyBqMNO7JuKy0TcwIzr5S6',1615013077515,1615099477515),
	(35,5,'cWWnhKwBRsfjlNS8uhqnXqtTiJuTO1VYHLtAzxXVhyfXfKrDRqZRd50Sq6uGDtY4',1615013087985,1615099487985),
	(36,5,'v1dAVIg2aastCa31xHnrAHJVY7kMxD1H9ADxTrJSpMd6O3xhEszdF0gAqNbcP6xn',1615014258457,1615100658457),
	(37,5,'NxzZFJBstwBgfZsDGqmkDaT30Ur7GGdEYkFGiIDjlV2yQITinupTlBB8ldBtdHga',1615014431839,1615100831839),
	(38,5,'GbELLs9QFmG6MLwesrOvzCw0zOdHRdPWYY8yHt7xzjnP37bM7xpTYku3856ANjfK',1615014450206,1615100850206),
	(39,5,'gvEuOAcJc1BgFL1sbh87dDqUtV5BfVPCPyjzyJQNAcNoS4niAZcWRKw7x4EHbwGW',1615014615073,1615101015073),
	(40,7,'5McWvdEvvBT5FRjGy81ivW3ga3UdbUU7qjKMTh6G2SGyC3xFR7GotVBxQWKFrN8w',1615163899353,1615250299353),
	(41,6,'vW4L6WBR8KJFTkvSFYxtppJaFiR8Z1kaKyXnk9Z9ADDq62G2xGNXGwn5YK2syutD',1615164903515,1615251303515),
	(42,4,'Irp02qZ9hI98DKbjD3HSuUAAaN7NaJ3OLsx8byu4R1MCYqBGMe7pVskWZIrQk3Et',1615165028950,1615251428950),
	(43,5,'V8Vf6OFG7fbsLbYdvCHC6OFIzfSbo3yggMCJdgd3W468bM6LmmS5yF3pIKYGCNMI',1615165476251,1615251876251),
	(44,5,'v1xaEw4xxdlkDGiCoRaZVikzjjxmJvyWbmNP56xZR9idLTvz4e6sw8oiOjaHL04z',1615184968429,1615271368429),
	(45,8,'7I9AC1sB351nFO37pFo06tStOXBRoc8PcwhHSmEkbV55OUsgRSrZXnAN2EB90i24',1615189665826,1615276065826),
	(46,7,'nX9TaqRl03gFKw9oNC0q4RkZLMHgjUITGGJzNnBJ57Of9ay3aVg0dCc74XI2v8k9',1615206766140,1615293166140),
	(47,4,'8DMnmEmzP6hp7TrFqFXZmuZ2ibEXsydIlWa7zTuBE4NdTcBgEmnlw6yNPf442IGA',1615206953961,1615293353961),
	(48,6,'UJUZYVQVDmNBWL6I6VCEsogJcTaVCKXwCUwOzp51B7ug0pK6vuMQtAtEGDyHJk3G',1615251344990,1615337744990),
	(49,5,'ZrS2Euf797geIfA1txMEmTXeZKNLaqTTMFpkpWl6ji3PNIqxEi4KNuRNp6yByxzx',1615252706823,1615339106823),
	(50,9,'53Xoq73r5gDiQNDRvT8MTUkwVXlgoqhDp5zXHrlnDSbI0p0b7Ha8w6cfhmO3SWLG',1615260454588,1615346854588),
	(51,10,'fu9qyM6BG9JxF44mQIVfSJRy4HzeMS7pwmj3XSpFOUsMM2eIhMIjdeCPC7SsNsqJ',1615260514272,1615346914272),
	(52,11,'b9tz9duwpnZ3hTL50r1vHhyiWlEDnEix8VrIx6JC7lF3VBuhaqtbyVmye0FgWDIa',1615260543641,1615346943641),
	(53,6,'qNdVUTryp4JAOkrFnY5eRmkC7g45YBOTVgPFlmju3uKE6QFg3s4qygV7jyvzlMmT',1615260811912,1615347211912),
	(54,5,'QNEwVgDxc9TAgpL9nkDZJ6o0AA3lz3YjRcIssxAsZH8vs4YQCcjem8LacXoTFsSq',1615271450115,1615357850115),
	(55,7,'4lvNDJ02nPMLzVVBppkYTsKiYd7vek7bvZKSH1QaYAAXt0HR3yZUazSNrbIl0jo6',1615281140648,1615367540648),
	(56,4,'7IsUWyDW4NjHugbQlrbcrmFTJnNHOsgd18oZAQsm46BXKoWn6dYweNowSFsMGX45',1615285857776,1615372257776),
	(57,7,'LHQCQOGXYZX5DVCMYz2zhmZ9A13vFEU3HzwPn0KobloFsi5YuQxI8xYbI32Sy5lr',1615336849123,1615423249123),
	(58,6,'XvtUeZ4eXy5MPb2oy8ZBGdhbdiVOH9yi9CztYyo4kuGU5sSi1vmUWuLZlN5Ob94b',1615338402304,1615424802304),
	(59,4,'GZg8RPj9yVTderLOKHs3gXmIjceJ2Dx0F7RBqVfdv7LcOJK9VAJJS0qX6hNe5jwQ',1615338628674,1615425028674),
	(60,5,'Lo0lpMWB1XNDNosIsrCMDpPtzTFc4enVYWau6e0RjKBViy7hXGyb1w2x1I1skhDN',1615339219560,1615425619560),
	(61,5,'BZlmdTFE8KnxJnNuPo7fLQamHgYwMk5aHjuEa5ZuZTtomLg4imy3BO41hC6tMlvE',1615339420292,1615425820292),
	(62,6,'ZfKo0ZcstThyTwMprLsPhfzOjfRPaApb0ZGBLuYnPDIqqDRI3vFexQAfWmVcLK6o',1615340097467,1615426497467),
	(63,6,'o1PT2RrL0Q0en5PXgjRYKXEH939d4ux9W0hfD1M5t4udmEcqIRRuVv8ObMjlIawf',1615359572908,1615445972908),
	(64,4,'ICcwNKvmFGs69fXmoxkF82nJdEKf7eOFGYXkfBOuei9wzZK2mCkSSgGmHAVwnZp6',1615513011205,1615599411205),
	(65,5,'wwiM7EkNJ9XpuCZAQeL3yjdlwIi5F24w1HXjJYUqFaclZ1lxrXSX7hLvct5lmH4y',1615514068051,1615600468051),
	(66,6,'k0WhMiJtgxycwSX5Qh1L6Il8pO0yDx4Nv31ZEIzsWL8aHrC3s6YijXsY5V9a7lBs',1615515594859,1615601994859),
	(67,6,'ye7uOJpVlPfrXEvYfRi6xj025T9oH2g1syRAxcGuV0WiTWzZneSVThSXbxoemE00',1615519479442,1615605879442),
	(68,6,'5UnvALxsHmaAAhnufC7E6Gdtuw09qX6Le6qjrvLGtVmg9KXhDFmE4qsY707IGXhX',1615519481904,1615605881904),
	(69,6,'oz2k3FURTaRHxcWGxjdl5a7tSuib79xta5EmX9z8E4jrJY14SIUCP9KVsoN5vdMb',1615770514919,1615856914919),
	(70,4,'FPArkZetGykHQGSOJ09eCZaQcR4qLKbMvY0NDl2kToI7I01Q8k8N54Qic9cH44r7',1615775270769,1615861670769),
	(71,5,'6GqjqdnjXhYprpvTa46geNJ1rmPCPw3EB1ZGgA51WBhPTxZm7LZQ5ZwN4ubjLcWE',1615776288629,1615862688629),
	(72,5,'PHeyIVsfrz4NYYWV2VivNtHHzsZAwQewWlMTWjcIuWINeZlvjidlzohFRXb9i2bE',1615808395562,1615894795562),
	(73,5,'T3IzpFsE0zXctmh9zakQU1vjcGX0tzCE1NVluZ8issGX0QalVDyyRXWua4Czz9Nh',1615812976642,1615899376642),
	(74,5,'F6zaxzvI7HRanKIzkAuaZICC7R5kt5vJbf2iOq5Z8IEKdUuuV1Y9rxVkUnPd9Tk5',1615813239561,1615899639561),
	(75,6,'DKmKxpdnCF022r4G62Ju8BzasySeOFw09oyiu6cVvqitXfdgdFend7FnIxOff1i7',1615813260843,1615899660843),
	(76,5,'D3gzmo6dU6Jar6EaeNyzBNi59RHDeZsUyToLlwVRITybNRbpl2srohdUeQkioiV4',1615876677610,1615963077610),
	(77,4,'Kwl1A2i1X5K1PWxy78q2cP83H6sJmVz121gdYJfSNzmmF7gk0NXQ4eU3ThEXX1JC',1615882086204,1615968486204),
	(78,4,'6kI8VtePRvNjbebHHjcrjafAMOIs6nZaTmi4mzheclKs7mfwCBzbQYSYgrH90nTs',1615882178173,1615968578173),
	(79,5,'kpObClrivxz2XTuWZtnKwPS5egEoDrLESmsebhRLyVp4HX2rqs4iupqrsKqiq0M4',1615882837107,1615969237107),
	(80,4,'YM2WHWcXaSE6fmBqiqSzm1DalWbrq1bjw7jD6nPzPR8uWD0pjH2KYz94F2DQK2m8',1615885838652,1615972238652),
	(81,4,'7ddj44qMxjCNWSx0IYVO8wMFM5IAZBXrDKQcaKWvkwN3ZWAJyiLrnxyw0qXeTYuK',1615886130531,1615972530531),
	(82,6,'3WNUhr9uUJwZhdRVDJfQcxfF7MIrQayiU4at6yhlBqndIEf2eJ15GBQhvaeBm9Dn',1615887114127,1615973514127),
	(83,6,'LwEDWJruasjN5lemGGTJmREgoSrzOTzOQXGuO7FQwYhztacK9TdnTXEM73IZ8Rcy',1615887272259,1615973672259),
	(84,6,'AJiDjC5Kn3ikI1MxAVripYz18vRu1VuFzURz32uCmqAQnayE0wROEco3rttw4iCV',1615952825321,1616039225321),
	(85,5,'Oh9gtCjLffgZ9WrGhPAWkAANwr118UV0LGbCpoIyZfdSMOX3mGPYKaYEiieGa8QI',1615970280404,1616056680404),
	(86,5,'XymBUqft2IExRIxIQJC0I96QjSzrIBXy0MeIGDTYWzVttw8Dh6a2QBIv49rGBWNL',1616650343062,1616736743062),
	(87,5,'hEUIU8v31wtcH0Zfd7JkYSphTRpL4pG8irjOk7zoWzwoedqs0BP1Z7BJ8At1blyK',1616744192686,1616830592686),
	(88,4,'8BXJ9jacz702YnECj5jnNRONv5F1lnkFSC2vUGIIxUDMIfoDOxqclJzPNuAKAlN3',1616754530832,1616840930832),
	(89,6,'1nrdPmaNBRYYbOcIgaeP5eGhswZPT9W0xfu3BlmW8PpxxzmLSLu2ZgEWjVyVYIQP',1616930590667,1617016990667),
	(90,4,'ZuE4eflinNeX5BRHBCEpnbrDbYFZHDljRZPFcOJbZ1NI8FQaxQLKpaG2C8nL0joi',1617071220190,1617157620190),
	(91,7,'uk81LHLPxLkDdTBsjb9JNT7Kfp4zWuXChBV76zXlOcw15N4ihQtjbfJfMm7CtirT',1617095588780,1617181988780),
	(92,5,'j7LbWvWyEIFr2S97iAcquplwUhWJU9YVx0cIz7EcDdPDR27cYJS96CsM2y3PPH3v',1617173127441,1617259527441),
	(93,4,'UJGrmL3KLBGp8415vxDKcej8SLvxql7w5ivHh2RIpoJ9BrnDCZ19fC5OM5NO05Xg',1617175547048,1617261947048),
	(94,6,'X2AKT3JBcVKUzOZM2g3UOTbiomhjr8gXeew85wEjy6hT5DQ4ww65fP34eVO5mq09',1617269796403,1617356196403),
	(95,7,'NP03LhN9k46hXawzX8OVH7ap0ItapgERrHCnQ4404jRTMVQIcJ7XyXTjXqdOnqbw',1617416144166,1617502544166),
	(96,6,'Piq52pCJ2BBH16gjlHelHTzB2jiZ9OsPATeIP508sSbHuAl5HRE65SMDpB48kXkf',1617589333851,1617675733851),
	(97,4,'XR8vDrAhIpCvkdglGSnUyysbQN1XsKzt07s527uY7sXntUuOG3LTTGmUy2eeirM1',1617689555927,1617775955927),
	(98,4,'0wbgikmnYOsiIuPQJoHfIkW67JXcg6nZ7Qh5bz3zweayzmx1qnICqzCHrnH6KSmA',1617689556811,1617775956811),
	(99,6,'tJn8rkxp8ZzLJCGe15p1nDOx8bW4UhM7gGNbV8kScgMKLddize0mO4YOSu7w6Nvg',1617690642245,1617777042245),
	(100,7,'5mwhmtvnJ5M6QhtGGZ1PgGxvPHgL0KmeQVLOt1LsYSXZN7bJ2vmeMBSlTQc43Bcl',1617697211505,1617783611505),
	(101,4,'0qxQ2ar9TOhuDew1Yn2s1TrsLL1dMRKHQ9e4YOXVV7L75J3qxxmDtpUPAkw77SgA',1617775930045,1617862330045),
	(102,4,'yIcRHZfbKiZeDNB9C5xD8tK0oAO0chML9PoWDQNLuBXOtpvE6l5WcOsEvepcbvKS',1617775930488,1617862330488),
	(103,4,'GTRTqSnhnbuPSzc1J65cW82GBHWIb9BgP9NyWXb1ATtJMoLeV5EL8lYQyCEN3Ouc',1617775930589,1617862330589),
	(104,4,'blE0oVCW4CDWwGkAEf7y7AxacgVHIPzEP1WGLe0oYkuuU3FfSwJPhDsdRxgmYPwr',1617775930605,1617862330605),
	(105,4,'6CBIilD7hXzEOD5r8J39daY0GPmF1oCiUyCPr3GTVP0Defov2DwuVKW0Ems8WXQ4',1617775930606,1617862330606),
	(106,4,'AxL4nvTyTn4Eazwvb8Rdw7GbmPEBgkG4svvTJKBtpgsrG6ZKi1PGGSbVfJMtXlfh',1617775930643,1617862330643),
	(107,5,'B3OrKG1671nPi1yemtgPVye8gpwJ5qApLcGseN4hGXZiTOTZ2UMn0aQZdrqbPkCq',1617845251267,1617931651267),
	(108,7,'wZ3YVAe9AuAfY0IBwHIRvd4H1yfDnF7F5klesUlKzabVsbvAbP6mtg43MgEhlDvp',1617862384886,1617948784886),
	(109,6,'1cMVkVIjGuZh8z1kASHdIwND69DFFRUgt8Pkqq34SA0XIIUM4ywWiO4bZkHGYppk',1617870955409,1617957355409),
	(110,6,'OrnZyjoofD2dE7ooQJQB11YXXevsmmu1TmSoRalxDNxwXVH9MMC4CgvtRbcPXsvp',1617870955429,1617957355429),
	(111,6,'y3jLUyTGi7hylfBp3lxFRPFDheMj2Hl2SKuC8kfTwr3jFicNyMtdPCqdsDPnhQ0B',1617870962796,1617957362796),
	(112,4,'HlHoqqxdQuFmUsLlRO35rokQoYueG5GNe8zJAClDgFTWJFSdG8sjMSa8g9u4KXUu',1617933532029,1618019932029),
	(113,4,'fWCivgJYVxtJDxWOOQvB3B8Bqhpgmitz8onoRb4z23rRlO8cAz7XKDtWjA4I2zh4',1618470869021,1618557269021),
	(114,6,'pRTEGpU3T6AxEuObKiCW2SVPR5sVdrkYKxWf8vOL1NDVbmOh0ekX1OIvbp1V24VF',1618747773692,1618834173692),
	(115,6,'AKlJeI6gemllyue7Zo1TSWc3XktIztcIbmNasr7VZzyNISjPyQgxCQ5ffMoSsU7T',1618836418642,1618922818642),
	(116,6,'XQ3dAKjf0uy6NyBb8QpgbWVpbBJujxErcst9X4bi4aDR53N1HTUDbCAl5oukm4Ps',1618836723180,1618923123180),
	(117,4,'UTMjX6LGQCfrvIQqaZt2alZhuf4jjoiQOvgGTuAwp4UhFY8uhORHz8Q43eUv2QSE',1618989962911,1619076362911),
	(118,4,'JryaTp7osvNc3bBuEIVWxzKVV8SNK2O22f82TSPDWXgC1wzTaAXa1KJnilKOf81Y',1618989965606,1619076365606),
	(119,6,'09q61FTLl607izq7dTp04IWRz0KSZmkCg5cP28Vw7IgTowLe8QP0867VmL2VieXX',1618990808849,1619077208849),
	(120,4,'xYxeVHSMRBbGymAGp954J61W9nXh7SSoeemt9STHhmiGZ0T6RQhMtMCMJ8kBYQNs',1619148402138,1619234802138),
	(121,4,'Em6Brp2GSXHI51Zq6pYttux6bi2YOhyScHWRChnCwK0P8p6lDHkcvPvUNbNG8MjE',1619148413164,1619234813164),
	(122,5,'Tn00gg2kOYywiTXj8qhz9NuH7iI3aN1rAj14a97pIiMaFXteeAT1anIDlSxLN4Hi',1619601854962,1619688254962),
	(123,7,'bDVXxe6J7RELaV5Y7q1MN4EbXsXOQlkAnDm2zCgO3PJ3GyI2VdWpO6FJqD6ChROg',1619674241172,1619760641172),
	(124,7,'Bwy7hvVaTLuPgkaU93yth9Ua0RQfCHrWBKB9Y06T4Uck3AN2FsVB9t2Wq0QCIMAr',1619774549249,1619860949249),
	(125,5,'dJwFk2zjv0E43HdJ2epgMZa35V4xDd92rpSZj1u4CBmLO0EpYGZq6xfvjfIylIkk',1620219262939,1620305662939),
	(126,5,'MtorRw94dWtzC7SwrBeaWWfA3DuRGmwLdJK8pGclupm9ndtU3lHrerfwOzEHkmot',1620219407323,1620305807323),
	(127,7,'HuDZReiumWHePfX1gVFMmqh3holAYOyn5aXjkexUL0XuP4Se7TIeXfo373sU82Sb',1620281004513,1620367404513),
	(128,4,'C2bVm0mBj4qQ5fcJSlFTtSeCXHT9o3113WalpYtuvFYKblMHThPWblU5CkixdRmD',1620636815416,1620723215416),
	(129,4,'kjvRGv07231QwdUZdL9yUToOjQ0fnHSbHVQy5hvBnJSEhWan6nkWyiqkg7Pb8uno',1621586902123,1621673302123);

/*!40000 ALTER TABLE `user_session` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
