/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : zhxy_db

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 27/05/2024 12:03:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `portrait_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES (101, 'admin', '男', '21232f297a57a5a743894a0e4a801fc3', '111111@qq.com', '13866666666', '湘潭', 'upload/default.jpg');
INSERT INTO `tb_admin` VALUES (102, 'admin1', '男', '21232f297a57a5a743894a0e4a801fc3', '333333@qq.com', '13866666666', '湘潭', 'upload/default.jpg');
-- ----------------------------
-- Table structure for tb_clazz
-- ----------------------------
DROP TABLE IF EXISTS `tb_clazz`;
CREATE TABLE `tb_clazz`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number` int(3) NULL DEFAULT NULL,
  `introducation` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `headmaster` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_clazz
-- ----------------------------
INSERT INTO `tb_clazz` VALUES (1, '计算机科学与技术一班', 30, '计算机科学与技术一班', '欧', 'ou@qq.com', '13866666666', '22计算机科学与技术一班');
INSERT INTO `tb_clazz` VALUES (2, '计算机科学与技术二班', 28, '计算机科学与技术二班', '申', 'shen@qq.com', '13866666666', '22计算机科学与技术二班');
INSERT INTO `tb_clazz` VALUES (3, '计算机科学与技术三班', 35, '计算机科学与技术三班', '叶', 'ye@qq.com', '13866666666', '22计算机科学与技术三班');
INSERT INTO `tb_clazz` VALUES (4, '计算机科学与技术四班', 30, '计算机科学与技术四班', '杨', 'yang@qq.com', '13866666666', '22计算机科学与技术四班');

-- ----------------------------
-- Table structure for tb_grade
-- ----------------------------
DROP TABLE IF EXISTS `tb_grade`;
CREATE TABLE `tb_grade`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `manager` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introducation` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_grade
-- ----------------------------
INSERT INTO `tb_grade` VALUES (1, '22级', '申', 'shen@qq.com', '13866666666', '大学二年级');

-- ----------------------------
-- Table structure for tb_student
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introducation` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `portrait_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `clazz_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES (1, '1001', '叶伟轩', '男', 'e10adc3949ba59abbe56e057f20f883e', '1930721926@qq.com', '13866666666', '湖南湘潭', '1', 'upload/default.jpg', '22计算机科学与技术三班');
INSERT INTO `tb_student` VALUES (2, '1002', '欧锦聪', '男', 'e10adc3949ba59abbe56e057f20f883e', '1256075513@qq.com', '13866666666', '湖南湘潭', '2', 'upload/default.jpg', '22计算机科学与技术三班');
INSERT INTO `tb_student` VALUES (3, '1003', '申林斌', '男', 'e10adc3949ba59abbe56e057f20f883e', '3588847064@qq.com', '13866666666', '湖南湘潭', '3', 'upload/default.jpg', '22计算机科学与技术三班');
INSERT INTO `tb_student` VALUES (4, '1004', '杨黄燊', '男', 'e10adc3949ba59abbe56e057f20f883e', '3575789958@qq.com', '13866666666', '湖南湘潭', '4', 'upload/default.jpg', '22计算机科学与技术三班');

-- ----------------------------
-- Table structure for tb_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `portrait_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `clazz_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------
INSERT INTO `tb_teacher` VALUES (1, '101', '欧', '男', 'e10adc3949ba59abbe56e057f20f883e', 'ou@163.com', '13866666666', '湖南湘潭', 'upload/default.jpg', '22计算机科学与技术一班');
INSERT INTO `tb_teacher` VALUES (2, '102', '叶', '男', 'e10adc3949ba59abbe56e057f20f883e', 'ye@163.com', '13866666666', '湖南湘潭', 'upload/default.jpg', '22计算机科学与技术二班');
INSERT INTO `tb_teacher` VALUES (3, '103', '申', '男', 'e10adc3949ba59abbe56e057f20f883e', 'shen@163.com', '13866666666', '湖南湘潭', 'upload/default.jpg', '22计算机科学与技术三班');
INSERT INTO `tb_teacher` VALUES (4, '104', '杨', '男', 'e10adc3949ba59abbe56e057f20f883e', 'yang@163.com', '13866666666', '湖南湘潭', 'upload/default.jpg', '22计算机科学与技术四班');


SET FOREIGN_KEY_CHECKS = 1;
