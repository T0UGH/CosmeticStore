/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : cosmetic_store

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 30/06/2019 22:36:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart_item
-- ----------------------------
DROP TABLE IF EXISTS `cart_item`;
CREATE TABLE `cart_item`  (
  `cart_item_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`cart_item_id`) USING BTREE,
  INDEX `fk_c_p`(`product_id`) USING BTREE,
  INDEX `fk_c_u`(`user_id`) USING BTREE,
  CONSTRAINT `fk_c_p` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_c_u` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `fk_o_u`(`user_id`) USING BTREE,
  CONSTRAINT `fk_o_u` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (3, '2019-05-15 20:35:44', 'test1');
INSERT INTO `order` VALUES (4, '2019-05-15 20:36:09', 'test1');
INSERT INTO `order` VALUES (5, '2019-05-15 21:38:59', 'test1');

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`  (
  `order_item_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`order_item_id`) USING BTREE,
  INDEX `fk_oi_o`(`order_id`) USING BTREE,
  INDEX `fk_oi_p`(`product_id`) USING BTREE,
  CONSTRAINT `fk_oi_o` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_oi_p` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES (1, 12, 3);
INSERT INTO `order_item` VALUES (2, 12, 3);
INSERT INTO `order_item` VALUES (3, 14, 4);
INSERT INTO `order_item` VALUES (4, 15, 4);
INSERT INTO `order_item` VALUES (5, 12, 5);
INSERT INTO `order_item` VALUES (6, 12, 5);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `product_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_standard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_remain` int(11) NOT NULL,
  `product_price` float(10, 2) NOT NULL,
  `product_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`product_id`) USING BTREE,
  INDEX `product_name_index`(`product_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (12, '蓝色的瓶子', '瓶装', 10, 245.60, 'https://i.loli.net/2019/05/12/5cd7aee374dc1.jpg');
INSERT INTO `product` VALUES (13, '粉色的瓶子', '瓶装', 10, 189.79, 'https://i.loli.net/2019/05/12/5cd7aef52f57a.jpg');
INSERT INTO `product` VALUES (14, '小药丸', '盒装', 10, 200.00, 'https://i.loli.net/2019/05/12/5cd7af199fa26.jpg');
INSERT INTO `product` VALUES (15, '小瓶子', '瓶装', 10, 200.00, 'https://i.loli.net/2019/05/12/5cd7d9c396fb6.jpg');
INSERT INTO `product` VALUES (16, '大瓶子', '1L', 100, 120.30, 'https://i.loli.net/2019/05/12/5cd8256e58cef.jpg');
INSERT INTO `product` VALUES (17, '中号瓶子', '500ml', 10, 129.00, 'https://i.loli.net/2019/05/12/5cd825987454a.jpg');
INSERT INTO `product` VALUES (18, '瓶子组合', '略', 100, 258.38, 'https://i.loli.net/2019/05/12/5cd825b5889a2.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('test1', 'Neusoft123', 0, 'test1', 'address123', '13840123456');
INSERT INTO `user` VALUES ('test2', 'Neusoft123', 1, 'test2', 'add', '13840123456');
INSERT INTO `user` VALUES ('user', 'Neusoft123', 0, '李小明', '北京市', '13840123456');

SET FOREIGN_KEY_CHECKS = 1;
