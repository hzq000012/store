/*
 Navicat Premium Data Transfer

 Source Server         : 服务器
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 121.196.205.160:3306
 Source Schema         : store

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 17/04/2020 14:41:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (2, '下沙', '1234567', '杭州3', 10);
INSERT INTO `address` VALUES (3, '浙江', '181881', 'yh', 10);
INSERT INTO `address` VALUES (7, '浙江省杭州市江干区金沙湖得信早城8幢', '13758038017', '夏磊', 7);
INSERT INTO `address` VALUES (18, '浙江省杭州市江干区金沙湖得信早城8幢', '13758038017', '张三', 9);
INSERT INTO `address` VALUES (21, '浙江省杭州市下沙区', '18312345678', '张雪震', 9);

-- ----------------------------
-- Table structure for discounts
-- ----------------------------
DROP TABLE IF EXISTS `discounts`;
CREATE TABLE `discounts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) NULL DEFAULT NULL,
  `indate` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '过期时间',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `limit` int(11) NULL DEFAULT NULL COMMENT '限制',
  `isvaild` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '优惠券的获得者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discounts
-- ----------------------------
INSERT INTO `discounts` VALUES (1, 60, '2019-6-14', '2019-9-14', 300, 1, 9);
INSERT INTO `discounts` VALUES (3, 60, '2019-9-9', '2019-8-9', 300, 0, 9);
INSERT INTO `discounts` VALUES (4, 90, '2019-9-6', '2019-8-6', 300, 0, 9);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `gs_id` int(11) NOT NULL AUTO_INCREMENT,
  `shoe_id` int(11) NULL DEFAULT NULL COMMENT '对应的鞋',
  `size` double NULL DEFAULT NULL COMMENT '尺寸',
  `is_sell` int(11) NULL DEFAULT 0 COMMENT '是否卖出0未出售1已售出',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `create_user` int(11) NULL DEFAULT NULL COMMENT '商品所有人',
  `courier` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '配送快递',
  PRIMARY KEY (`gs_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 24, 35, 0, 700.00, 1, NULL);
INSERT INTO `goods` VALUES (2, 24, 35.5, 0, 700.00, 7, NULL);
INSERT INTO `goods` VALUES (3, 24, 36, 0, 700.00, 7, NULL);
INSERT INTO `goods` VALUES (4, 24, 36.5, 0, 700.00, 7, NULL);
INSERT INTO `goods` VALUES (5, 24, 37, 0, 700.00, 7, NULL);
INSERT INTO `goods` VALUES (6, 24, 37.5, 0, 700.00, 7, NULL);
INSERT INTO `goods` VALUES (7, 24, 38, 0, 700.00, 7, NULL);
INSERT INTO `goods` VALUES (8, 24, 38.5, 0, 700.00, 7, NULL);
INSERT INTO `goods` VALUES (9, 24, 39, 0, 700.00, 7, NULL);
INSERT INTO `goods` VALUES (10, 24, 39.5, 0, 700.00, 7, NULL);
INSERT INTO `goods` VALUES (11, 24, 40, 0, 700.00, 9, NULL);
INSERT INTO `goods` VALUES (13, 24, 35, 0, 800.00, 7, NULL);
INSERT INTO `goods` VALUES (14, 24, 35.5, 0, 800.00, 9, NULL);
INSERT INTO `goods` VALUES (15, 25, 37, 0, 800.00, 9, NULL);
INSERT INTO `goods` VALUES (16, 26, 36.5, 0, 800.00, 9, NULL);
INSERT INTO `goods` VALUES (17, 27, 37, 0, 800.00, 7, NULL);
INSERT INTO `goods` VALUES (18, 24, 37.5, 0, 800.00, 7, NULL);
INSERT INTO `goods` VALUES (19, 24, 38, 0, 800.00, 7, NULL);
INSERT INTO `goods` VALUES (20, 25, 36, 0, 800.01, 7, NULL);
INSERT INTO `goods` VALUES (21, 25, 36, 0, 800.00, 9, NULL);
INSERT INTO `goods` VALUES (22, 26, 39.5, 0, 800.00, 7, NULL);
INSERT INTO `goods` VALUES (113, 25, 36, 0, 400.00, 9, NULL);
INSERT INTO `goods` VALUES (114, 25, 37, 0, 900.00, 9, NULL);

-- ----------------------------
-- Table structure for goods_bulk
-- ----------------------------
DROP TABLE IF EXISTS `goods_bulk`;
CREATE TABLE `goods_bulk`  (
  `gsb_id` int(11) NOT NULL AUTO_INCREMENT,
  `shoe_id` int(11) NULL DEFAULT NULL COMMENT '对应的鞋',
  `size` double NULL DEFAULT NULL COMMENT '尺寸',
  `is_sell` int(11) NULL DEFAULT NULL COMMENT '是否卖出',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `create_user` int(11) NULL DEFAULT NULL COMMENT '商品所有人',
  `create_time` varchar(0) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`gsb_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_bulk
-- ----------------------------
INSERT INTO `goods_bulk` VALUES (1, 24, 36, 1, 600.00, 7, '');
INSERT INTO `goods_bulk` VALUES (2, 24, 36, 1, 600.00, 7, '');
INSERT INTO `goods_bulk` VALUES (3, 24, 36.5, 1, 650.00, 7, NULL);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `read` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '0未读1已读',
  `notice_information` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, 98, '0', '132', '2019-10-01 14:57:16');
INSERT INTO `notice` VALUES (4, 99, '0', '123', '2019-10-16 14:57:20');
INSERT INTO `notice` VALUES (5, 97, '0', NULL, '2019-12-04 11:32:58');
INSERT INTO `notice` VALUES (6, 95, '0', NULL, '2019-12-04 14:47:39');
INSERT INTO `notice` VALUES (7, 43, '0', NULL, '2019-12-04 14:47:56');
INSERT INTO `notice` VALUES (8, 98, '0', NULL, '2019-12-04 14:48:49');
INSERT INTO `notice` VALUES (9, 98, '0', NULL, '2019-12-04 14:52:28');
INSERT INTO `notice` VALUES (10, 103, '0', NULL, '2019-12-04 16:18:37');
INSERT INTO `notice` VALUES (11, 95, '0', NULL, '2019-12-04 16:22:35');
INSERT INTO `notice` VALUES (12, 37, '0', NULL, '2019-12-04 16:25:14');
INSERT INTO `notice` VALUES (13, 36, '0', NULL, '2019-12-04 16:29:44');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `gs_id` int(11) NULL DEFAULT NULL,
  `order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '订单号',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT 0 COMMENT '0 待付款 1已付款（未发货） 2已发货（未收货）3已收货（订单完成）4取消订单 5转移的订单',
  `address_id` int(11) NULL DEFAULT NULL,
  `buy_user_id` int(11) NOT NULL COMMENT '购买人ID',
  `sell_user_id` int(11) NOT NULL COMMENT '卖家ID',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '最终价格',
  `trackingnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '快递单号',
  `want_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `transferbuy_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '转移订单后的买家',
  `transfersell_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '转移订单后的卖家',
  `transferprice` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '转移订单后的价格',
  PRIMARY KEY (`order_id`, `order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 144 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (34, 1, '1567666645751', '2019-09-05 02:57:25', 4, 7, 7, 9, 200.00, 'asdad123132213', '', '1', '1', '0');
INSERT INTO `order` VALUES (36, 5, '1567737417691', '2019-09-06 10:36:57', 5, 7, 7, 1, 700.00, NULL, '', '9', '7', '1234');
INSERT INTO `order` VALUES (37, 7, '1567740410111', '2019-09-06 11:26:50', 1, 7, 7, 9, 700.00, NULL, '', '145', '7', '111');
INSERT INTO `order` VALUES (38, 8, '1567821744180', '2019-09-07 10:02:24', 1, 7, 9, 1, 700.00, NULL, '', '7', NULL, '800');
INSERT INTO `order` VALUES (39, 9, '1567822128113', '2019-09-07 10:08:48', 5, 7, 9, 7, 700.00, 'asdad123132213', '', '9', '9', '444');
INSERT INTO `order` VALUES (42, 12, '1567825199056', '2019-09-07 10:59:59', 0, 7, 7, 1, 700.00, NULL, '', NULL, NULL, '0');
INSERT INTO `order` VALUES (43, 13, '1567825759045', '2019-09-07 11:09:19', 1, 7, 7, 1, 700.00, NULL, '', '9', NULL, '999');
INSERT INTO `order` VALUES (45, 16, '1567826297795', '2019-09-07 11:18:17', 1, 7, 7, 1, 700.00, NULL, '', NULL, NULL, '0');
INSERT INTO `order` VALUES (46, 17, '1567826375575', '2019-09-07 11:19:35', 5, 7, 7, 7, 700.00, 'asdad123132213', '', '9', '7', '1234');

-- ----------------------------
-- Table structure for order_bulk
-- ----------------------------
DROP TABLE IF EXISTS `order_bulk`;
CREATE TABLE `order_bulk`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `gs_id` int(11) NULL DEFAULT NULL,
  `order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL COMMENT '0：未付款 1：已付款',
  `address_id` int(11) NULL DEFAULT NULL,
  `buy_user_id` int(11) NULL DEFAULT NULL,
  `sell_user_id` int(11) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `trackingnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `want_id` int(11) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shoe
-- ----------------------------
DROP TABLE IF EXISTS `shoe`;
CREATE TABLE `shoe`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '鞋名字',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型',
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '品牌',
  `sell_num` int(11) NULL DEFAULT NULL COMMENT '销售量',
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货号',
  `img` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '图片',
  `sale_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '发售价格',
  `sale_created` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '发售日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoe
-- ----------------------------
INSERT INTO `shoe` VALUES (24, '海鲜礼包', 1, NULL, 60, 'AO1017-100', 'https://imageshoe.oss-cn-hangzhou.aliyuncs.com/%E5%9B%BE%E7%89%87/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200417121001.jpg', 600.00, '2019-09-10 04:12:55');
INSERT INTO `shoe` VALUES (25, ' 简版OW 休闲板鞋', 1, NULL, 90, 'AJ7747-300', 'https://imageshoe.oss-cn-hangzhou.aliyuncs.com/%E5%9B%BE%E7%89%87/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200417121017.jpg', 1.00, NULL);
INSERT INTO `shoe` VALUES (26, '磁力 机能 解构 板鞋 ', 1, NULL, 777, 'AO1531-101', 'https://imageshoe.oss-cn-hangzhou.aliyuncs.com/%E5%9B%BE%E7%89%87/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200417121023.jpg', 5.00, NULL);
INSERT INTO `shoe` VALUES (27, ' 磁力机能解构板鞋', 1, NULL, 0, 'AO1531-300', 'https://imageshoe.oss-cn-hangzhou.aliyuncs.com/%E5%9B%BE%E7%89%87/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200417121026.jpg', 40.00, '2019-09-07 11:19:35');

-- ----------------------------
-- Table structure for shoe_bulk
-- ----------------------------
DROP TABLE IF EXISTS `shoe_bulk`;
CREATE TABLE `shoe_bulk`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '鞋名字',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型',
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '品牌',
  `sell_num` int(11) NULL DEFAULT NULL COMMENT '销售量',
  `number` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '货号',
  `img` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '图片',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoe_bulk
-- ----------------------------
INSERT INTO `shoe_bulk` VALUES (1, 'SACAL x NIKE 联名 LDV WAFFLEDAYBREAK', '2019-8-2', NULL, 'NIKE', 10, 'JI23455', NULL, 2000.00);
INSERT INTO `shoe_bulk` VALUES (2, 'SACAL x NIKE 联名 LDV WAFFLEDAYBREAK', '2019-8-2', NULL, 'NIKE', 10, 'JI23455', NULL, 2000.00);
INSERT INTO `shoe_bulk` VALUES (3, 'SACAL x NIKE 联名 LDV WAFFLEDAYBREAK', '2019-8-2', NULL, 'NIKE', 10, 'JI23455', NULL, 2000.00);
INSERT INTO `shoe_bulk` VALUES (4, 'SACAL x NIKE 联名 LDV WAFFLEDAYBREAK', '2019-8-2', NULL, 'NIKE', 10, 'JI23455', NULL, 2000.00);
INSERT INTO `shoe_bulk` VALUES (5, 'SACAL x NIKE 联名 LDV WAFFLEDAYBREAK', '2019-8-2', NULL, 'NIKE', 10, 'JI23455', NULL, 2000.00);
INSERT INTO `shoe_bulk` VALUES (6, 'SACAL x NIKE 联名 LDV WAFFLEDAYBREAK', '2019-8-2', NULL, 'NIKE', 10, 'JI23455', NULL, 2000.00);
INSERT INTO `shoe_bulk` VALUES (7, 'SACAL x NIKE 联名 LDV WAFFLEDAYBREAK', '2019-8-2', NULL, 'NIKE', 10, 'JI23455', NULL, 2000.00);
INSERT INTO `shoe_bulk` VALUES (8, 'SACAL x NIKE 联名 LDV WAFFLEDAYBREAK', '2019-8-2', NULL, 'NIKE', 10, 'JI23455', NULL, 2000.00);
INSERT INTO `shoe_bulk` VALUES (9, 'SACAL x NIKE 联名 LDV WAFFLEDAYBREAK', '2019-8-2', NULL, 'NIKE', 10, 'JI23455', NULL, 2000.00);
INSERT INTO `shoe_bulk` VALUES (10, 'SACAL x NIKE 联名 LDV WAFFLEDAYBREAK', '2019-8-2', NULL, 'NIKE', 10, 'JI23455', NULL, 2000.00);

-- ----------------------------
-- Table structure for store_position
-- ----------------------------
DROP TABLE IF EXISTS `store_position`;
CREATE TABLE `store_position`  (
  `id` int(11) NOT NULL COMMENT '店铺ID',
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '定位',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `isvaild` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_position
-- ----------------------------
INSERT INTO `store_position` VALUES (1, '店铺1', '120.328, 30.313', NULL, NULL);
INSERT INTO `store_position` VALUES (2, '店铺2', '119.328, 29.313', NULL, NULL);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '类型名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '球鞋');
INSERT INTO `type` VALUES (2, '女鞋');
INSERT INTO `type` VALUES (3, '休闲鞋');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'https://imageshoe.oss-cn-hangzhou.aliyuncs.com/%E5%A4%B4%E5%83%8F/QQ%E5%9B%BE%E7%89%8720190928141339.jpg' COMMENT '头像',
  `nicheng` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '常住地',
  `store_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '商铺名称',
  `store_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '商铺地址',
  `address_id` int(11) NULL DEFAULT NULL COMMENT '收货信息',
  `invitation_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '邀请码',
  `is_invitation` int(11) NULL DEFAULT NULL COMMENT '是否被邀请',
  `card_front` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '身份证正面',
  `card_reverse` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '身份证反面',
  `score` int(11) NULL DEFAULT NULL COMMENT '征信分',
  `balance` decimal(19, 4) NULL DEFAULT 0.0000 COMMENT '余额',
  `user_AliPay` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户支付宝',
  `integral` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '用户积分',
  `inviter_invitation_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '注册时填写的邀请码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 148 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (7, '18352906621', '111111', NULL, 'https://imageshoe.oss-cn-hangzhou.aliyuncs.com/%E5%A4%B4%E5%83%8F/QQ%E5%9B%BE%E7%89%8720190928141339.jpg', '123', NULL, '勇往直前', NULL, NULL, 'SS132672', 0, NULL, NULL, NULL, -23600.0100, NULL, '0', NULL);
INSERT INTO `user` VALUES (8, '18352906623', '111111', NULL, 'https://imageshoe.oss-cn-hangzhou.aliyuncs.com/%E5%A4%B4%E5%83%8F/QQ%E5%9B%BE%E7%89%8720190928141339.jpg', '321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, '0', NULL);
INSERT INTO `user` VALUES (9, '13758038018', '111111', NULL, 'https://imageshoe.oss-cn-hangzhou.aliyuncs.com/%E5%A4%B4%E5%83%8F/QQ%E5%9B%BE%E7%89%8720190928141339.jpg', '555', NULL, '无印良品小铺1', NULL, 2, '123456', 0, NULL, NULL, NULL, -1198.6100, NULL, '0', NULL);
INSERT INTO `user` VALUES (11, '18352906625', '111111', NULL, 'https://imageshoe.oss-cn-hangzhou.aliyuncs.com/%E5%A4%B4%E5%83%8F/QQ%E5%9B%BE%E7%89%8720190928141339.jpg', '111', NULL, NULL, NULL, NULL, '0', 0, NULL, NULL, NULL, 700000.0000, NULL, '0', NULL);
INSERT INTO `user` VALUES (139, '18352906626', '111111', NULL, 'https://imageshoe.oss-cn-hangzhou.aliyuncs.com/%E5%A4%B4%E5%83%8F/QQ%E5%9B%BE%E7%89%8720190928141339.jpg', '用户457385', NULL, NULL, NULL, NULL, 'SS470636', 0, NULL, NULL, NULL, -800.0000, NULL, '0', NULL);
INSERT INTO `user` VALUES (143, '15394217250', '66569677', NULL, 'https://imageshoe.oss-cn-hangzhou.aliyuncs.com/%E5%A4%B4%E5%83%8F/QQ%E5%9B%BE%E7%89%8720190928141339.jpg', '用户005618', NULL, NULL, NULL, NULL, 'SS676704', 0, NULL, NULL, NULL, 0.0000, NULL, '0', NULL);
INSERT INTO `user` VALUES (145, '18352906629', '111111', NULL, 'https://imageshoe.oss-cn-hangzhou.aliyuncs.com/%E5%A4%B4%E5%83%8F/QQ%E5%9B%BE%E7%89%8720190928141339.jpg', '用户626631', NULL, NULL, NULL, NULL, 'SS464761', 0, NULL, NULL, NULL, -400.0000, NULL, '0', NULL);
INSERT INTO `user` VALUES (146, '18968328562', 'whj013579', NULL, 'https://imageshoe.oss-cn-hangzhou.aliyuncs.com/%E5%A4%B4%E5%83%8F/QQ%E5%9B%BE%E7%89%8720190928141339.jpg', '用户160426', NULL, NULL, NULL, NULL, 'SS105847', 0, NULL, NULL, NULL, 0.0000, NULL, '0', NULL);
INSERT INTO `user` VALUES (147, '17306489278', '66569677', NULL, 'https://imageshoe.oss-cn-hangzhou.aliyuncs.com/%E5%A4%B4%E5%83%8F/QQ%E5%9B%BE%E7%89%8720190928141339.jpg', '用户314717', NULL, NULL, NULL, NULL, 'SS831867', 0, NULL, NULL, NULL, 0.0000, NULL, '0', NULL);

-- ----------------------------
-- Table structure for want_buy
-- ----------------------------
DROP TABLE IF EXISTS `want_buy`;
CREATE TABLE `want_buy`  (
  `want_id` int(11) NOT NULL AUTO_INCREMENT,
  `shoe_id` int(11) NULL DEFAULT NULL COMMENT '求购鞋子id',
  `size` double NULL DEFAULT NULL COMMENT '尺码',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `is_sell` int(11) NULL DEFAULT 0 COMMENT '是否卖出0没卖出1卖出',
  `create_user` int(11) NULL DEFAULT NULL COMMENT '求购人',
  `address_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收货地址ID',
  PRIMARY KEY (`want_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of want_buy
-- ----------------------------
INSERT INTO `want_buy` VALUES (1, 24, 36, 800.00, 1, 7, '1');
INSERT INTO `want_buy` VALUES (2, 24, 38, 800.00, 0, 9, '3');
INSERT INTO `want_buy` VALUES (3, 25, 37, 700.00, 1, 7, '2');
INSERT INTO `want_buy` VALUES (4, 24, 36, 300.00, 0, 9, '1');
INSERT INTO `want_buy` VALUES (5, 25, 36, 900.00, 0, 7, '1');
INSERT INTO `want_buy` VALUES (6, 25, 37, 1200.00, 1, 9, '1');
INSERT INTO `want_buy` VALUES (7, 25, 37, 1000.00, 0, 9, '2');
INSERT INTO `want_buy` VALUES (8, 25, 36, 1200.00, 0, 9, '1');

-- ----------------------------
-- Table structure for withdrawalrecord
-- ----------------------------
DROP TABLE IF EXISTS `withdrawalrecord`;
CREATE TABLE `withdrawalrecord`  (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提现记录时间',
  `withdrawal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户提现金额',
  `add` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '获得的钱',
  `minus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '支出的钱',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of withdrawalrecord
-- ----------------------------
INSERT INTO `withdrawalrecord` VALUES (1, 7, '2019-09-11 01:53:49', '500', '0', '0');
INSERT INTO `withdrawalrecord` VALUES (2, 7, '2019-09-19 01:53:49', '0', '300', '0');
INSERT INTO `withdrawalrecord` VALUES (21, 6, '2019-10-10 11:26:19', '0', '0', '1');
INSERT INTO `withdrawalrecord` VALUES (24, 7, '2019-10-10 14:47:05', '0', '0', '400');
INSERT INTO `withdrawalrecord` VALUES (25, 9, '2019-10-10 14:47:05', '0', '400', '0');
INSERT INTO `withdrawalrecord` VALUES (29, 7, '2019-10-10 16:46:04', '01000', '0', '0');
INSERT INTO `withdrawalrecord` VALUES (30, 7, '2019-10-10 16:51:32', '01', '0', '0');
INSERT INTO `withdrawalrecord` VALUES (31, 7, '2019-10-10 16:56:24', '1', '0', '0');
INSERT INTO `withdrawalrecord` VALUES (32, 9, '2019-10-11 14:00:20', '0', '0', '1200');
INSERT INTO `withdrawalrecord` VALUES (33, 7, '2019-10-11 14:00:21', '0', '1200', '0');
INSERT INTO `withdrawalrecord` VALUES (34, 9, '2019-10-11 14:13:44', '0', '0', '1000');
INSERT INTO `withdrawalrecord` VALUES (35, 7, '2019-10-11 14:13:44', '0', '1000', '0');
INSERT INTO `withdrawalrecord` VALUES (36, 7, '2019-10-11 15:06:02', '0', '0', '400');
INSERT INTO `withdrawalrecord` VALUES (37, 9, '2019-10-11 15:06:02', '0', '400', '0');
INSERT INTO `withdrawalrecord` VALUES (38, 7, '2019-10-11 15:15:18', '0', '0', '400');
INSERT INTO `withdrawalrecord` VALUES (39, 9, '2019-10-11 15:15:18', '0', '400', '0');
INSERT INTO `withdrawalrecord` VALUES (40, 7, '2019-12-12 14:40:56', '0', '0', '800');

SET FOREIGN_KEY_CHECKS = 1;
