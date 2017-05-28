DROP DATABASE IF EXISTS salemanage;
CREATE DATABASE salemanage;
USE salemanage;

-- 客户信息
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
	`id` varchar(36) NOT NULL,
	`name` varchar(36) NOT NULL,
	`cell` varchar(20),
	`address` varchar(140),
	`comment` tinytext,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `customer` WRITE;

UNLOCK TABLES;

-- 分销信息
DROP TABLE IF EXISTS `distributor`;
CREATE TABLE `distributor` (
	`id` varchar(36) NOT NULL,
	`name` varchar(36) NOT NULL,
	`level` enum('AGENT_TOP', 'AGENT_SECOND', 'AGENT_THIRD') NOT NULL COMMENT '0 总代\n1 分销\n2 1级代理',
	`join_date` date NOT NULL,
	`cell` varchar(20),
	`address` varchar(140),
	`comment` tinytext,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `distributor` WRITE;

UNLOCK TABLES;

-- 发货信息
DROP TABLE IF EXISTS `shipment`;
CREATE TABLE `shipment` (
	`id` varchar(36) NOT NULL,
	`ship_date` date NOT NULL,
	`goods_size` enum('XXL_PANTS', 'XXL_DIAPER', 'XL_PANTS', 'XL_DIAPER', 'L_PANTS', 'L_DIAPER', 'M_DIAPER', 'S_DIAPER', 'NB_DIAPER') NOT NULL COMMENT '0 XXL拉拉裤\n1 XXL尿不湿\n2 XL拉拉裤\n3 XL尿不湿\n4 L拉拉裤\n5 L尿不湿\n6 M尿不湿\n7 S尿不湿\n8 NB尿不湿',
	`goods_count` tinyint NOT NULL,
	`goods_type` enum('CARTON', 'BAG', 'TRIAL') NOT NULL COMMENT '0 箱\n1 袋\n2 试用装',
	`goods_price` float NOT NULL,
	`receiver_name` varchar(20) NOT NULL,
	`receiver_address` tinytext NOT NULL,
	`express_company` varchar(36),
	`express_track_number` varchar(36),
	`express_cost` float,
	`comment` tinytext,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `shipment` WRITE;

UNLOCK TABLES;

-- 订货信息
DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
	`id` varchar(36) NOT NULL,
	`booking_date` date NOT NULL,
	`goods_size` enum('XXL_PANTS', 'XXL_DIAPER', 'XL_PANTS', 'XL_DIAPER', 'L_PANTS', 'L_DIAPER', 'M_DIAPER', 'S_DIAPER', 'NB_DIAPER') NOT NULL COMMENT '0 XXL拉拉裤\n1 XXL尿不湿\n2 XL拉拉裤\n3 XL尿不湿\n4 L拉拉裤\n5 L尿不湿\n6 M尿不湿\n7 S尿不湿\n8 NB尿不湿',
	`goods_count` tinyint NOT NULL,
	`goods_type` enum('CARTON', 'BAG', 'TRIAL') NOT NULL COMMENT '0 箱\n1 袋\n2 试用装',
	`goods_cost` float NOT NULL,
	`comment` tinytext,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `booking` WRITE;

UNLOCK TABLES;

-- 收货信息
DROP TABLE IF EXISTS `receipt`;
CREATE TABLE `receipt` (
	`id` varchar(36) NOT NULL,
	`receipt_date` date NOT NULL,
	`goods_size` enum('XXL_PANTS', 'XXL_DIAPER', 'XL_PANTS', 'XL_DIAPER', 'L_PANTS', 'L_DIAPER', 'M_DIAPER', 'S_DIAPER', 'NB_DIAPER') NOT NULL COMMENT '0 XXL拉拉裤\n1 XXL尿不湿\n2 XL拉拉裤\n3 XL尿不湿\n4 L拉拉裤\n5 L尿不湿\n6 M尿不湿\n7 S尿不湿\n8 NB尿不湿',
	`goods_count` tinyint NOT NULL,
	`goods_type` enum('CARTON', 'BAG', 'TRIAL') NOT NULL COMMENT '0 箱\n1 袋\n2 试用装',
	`goods_cost` float NOT NULL,
	`comment` tinytext,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `receipt` WRITE;

UNLOCK TABLES;