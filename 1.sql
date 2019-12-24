/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : localhost:3306
 Source Schema         : papermanage

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 21/10/2019 15:15:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_code
-- ----------------------------
DROP TABLE IF EXISTS `t_code`;
CREATE TABLE `t_code`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `codeName` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `codeTypeName` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parCode` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sequenceNum` bigint(5) NULL DEFAULT NULL,
  `createdBy` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creationDate` datetime NULL DEFAULT NULL,
  `modifyBy` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifyDate` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_code
-- ----------------------------
INSERT INTO `t_code` VALUES (1, 'l1', '名著', '应用性', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_code` VALUES (2, 'l2', '诗歌', '理论性', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_code` VALUES (3, 'l3', '小说', '理论性', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_paper
-- ----------------------------
DROP TABLE IF EXISTS `t_paper`;
CREATE TABLE `t_paper`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` bigint(10) NOT NULL,
  `paperSummary` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paperPath` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createdBy` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creationDate` datetime NULL DEFAULT NULL,
  `modifyBy` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifyDate` datetime NULL DEFAULT NULL,
  `fileName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_paper
-- ----------------------------
INSERT INTO `t_paper` VALUES (1, '论文1', 1, '论文论文', '1', '1', '2019-09-09 00:00:00', '1', '2019-12-09 00:00:00', '论文1');
INSERT INTO `t_paper` VALUES (2, '论文2', 2, '林文222222', '1', '2', '2019-09-08 00:00:00', '2', '2019-09-10 00:00:00', '论文2');
INSERT INTO `t_paper` VALUES (3, '论文3', 3, '摘要', '1', '3', '2019-10-16 00:00:00', '3', '2019-10-16 00:00:00', '论文3');
INSERT INTO `t_paper` VALUES (4, '论文4', 1, '1212', '1', '1', '2019-10-21 15:06:41', '1', '2019-10-21 15:06:44', '1');
INSERT INTO `t_paper` VALUES (5, '论文5', 2, '124253', '1', '2', '2019-10-21 15:07:13', '2', '2019-10-21 15:07:16', '453453');
INSERT INTO `t_paper` VALUES (6, '论文6', 2, '453534', '1', '1', '2019-10-21 15:07:41', '3', '2019-10-21 15:07:46', '4576795');
INSERT INTO `t_paper` VALUES (7, '论文7', 3, '54', '1', '2', '2019-10-21 15:08:03', '2', '2019-10-21 15:08:09', '4567567');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userCode` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userName` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userPassword` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` bigint(10) NOT NULL,
  `birthday` date NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userRole` bigint(20) NOT NULL,
  `paperNum` bigint(20) NULL DEFAULT NULL,
  `createBy` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creationDate` datetime NULL DEFAULT NULL,
  `modifyBy` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifyDate` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', '系统管理员', 'admin', 2, '2003-07-06', '15555650879', '北京市海淀区', 1, 2, 'admin', '2019-09-09 00:00:00', 'admin', '2019-10-09 00:00:00');
INSERT INTO `t_user` VALUES (2, '123', '李明', '123', 1, '2002-09-09', '12323345322', '北京市海淀区', 2, 2, '123', '2019-09-09 00:00:00', '123', '2019-10-08 00:00:00');
INSERT INTO `t_user` VALUES (3, '456', '小红', '123', 2, '2008-02-16', '12121212121', '北京市朝阳区', 1, 2, '456', '2019-10-16 00:00:00', '456', '2019-10-16 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
