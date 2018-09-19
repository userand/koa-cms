/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50710
 Source Host           : localhost:3306
 Source Schema         : juzi

 Target Server Type    : MySQL
 Target Server Version : 50710
 File Encoding         : 65001

 Date: 19/09/2018 19:23:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_id` int(11) NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `copyfrom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` tinyint(3) NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (49, '从koa-session中间件学习cookie与session', 1, NULL, '本站', '', '', 0, '', '<p style=\"margin-top: 1.5em; margin-bottom: 1.5em; color: rgb(51, 51, 51); font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJ', 1, '2018-08-31 17:52:15', NULL);
INSERT INTO `article` VALUES (52, '从koa-session中间件学习cookie与session', 1, NULL, '本站', 'asdf', 'asdf', 10, 'adf', '<p>1svgfsdf</p>', 1, '2018-08-31 18:24:57', NULL);
INSERT INTO `article` VALUES (53, '从koa-session中间件学习cookie与session', 1, NULL, '本站', 'asdf', 'asdf', 10, 'adf', '<p>1svgfsdf</p>', 1, '2018-08-31 18:25:02', NULL);
INSERT INTO `article` VALUES (54, '从koa-session中间件学习cookie与session', 1, NULL, '本站', 'asdf', 'asdf', 10, 'adf', '<p>1svgfsdf</p>', 1, '2018-08-31 18:25:07', NULL);
INSERT INTO `article` VALUES (56, '从koa-session中间件学习cookie与session', 1, NULL, '本站', 'asdf', 'asdf', 10, 'adf', '<p>1svgfsdf</p>', 1, '2018-08-31 18:25:15', NULL);
INSERT INTO `article` VALUES (57, '从koa-session中间件学习cookie与session', 1, NULL, '本站', 'asdf', 'asdf', 10, 'adf', '<p>1svgfsdf</p>', 1, '2018-08-31 18:25:19', NULL);
INSERT INTO `article` VALUES (59, '从koa-session中间件学习cookie与session', 1, NULL, '本站', 'asdf', 'asdf', 10, 'adf', '<p>1svgfsdf</p>', 1, '2018-08-31 18:25:29', NULL);
INSERT INTO `article` VALUES (60, '从koa-session中间件学习cookie与session', 1, NULL, '本站', 'asdf', 'asdf', 10, 'adf', '<p>1svgfsdf</p>', 1, '2018-08-31 18:25:34', NULL);
INSERT INTO `article` VALUES (66, '', 1, NULL, '本站', '', '', 0, '', '', 1, '2018-09-01 11:19:46', 'e04264a0-ad95-11e8-b5a8-6fd9238aba88');
INSERT INTO `article` VALUES (67, '', 1, NULL, '本站', '', '', 0, '', '', 1, '2018-09-01 11:19:49', 'e2001a30-ad95-11e8-b5a8-6fd9238aba88');

-- ----------------------------
-- Table structure for article_type
-- ----------------------------
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type`  (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(3) NULL DEFAULT NULL,
  `listorder` tinyint(10) NULL DEFAULT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'kk', 'aa41efe0a1b3eeb9bf303e4561ff8392');
INSERT INTO `users` VALUES (2, 'userand', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `users` VALUES (3, 'asdfas', '991d4860883cbdec8effc3f3a3b71bce');
INSERT INTO `users` VALUES (4, 'kksky', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `users` VALUES (5, 'mm', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `users` VALUES (6, 'adsfasdf', '05c12a287334386c94131ab8aa00d08a');
INSERT INTO `users` VALUES (7, 'adsf', '6168f305888c3d795e67c6de17bf8a21');
INSERT INTO `users` VALUES (8, 'adsf111', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `users` VALUES (9, 'adsf111', 'e10adc3949ba59abbe56e057f20f883e');

SET FOREIGN_KEY_CHECKS = 1;
