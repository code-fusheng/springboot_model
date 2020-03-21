/*
 Navicat Premium Data Transfer

 Source Server         : linux175.24.45.179
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : 175.24.45.179:3306
 Source Schema         : clms

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 21/03/2020 11:43:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cl_article
-- ----------------------------
DROP TABLE IF EXISTS `cl_article`;
CREATE TABLE `cl_article`  (
  `article_id` int(31) NOT NULL AUTO_INCREMENT COMMENT '文章id编号',
  `article_title` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章标题',
  `article_author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `article_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章图片',
  `article_content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文章内容',
  `article_good` int(11) NOT NULL DEFAULT 0 COMMENT '文章点赞量',
  `article_read` int(11) NOT NULL DEFAULT 0 COMMENT '文章阅读量',
  `article_collection` int(11) NOT NULL DEFAULT 0 COMMENT '文章收藏量',
  `article_type` int(11) NOT NULL COMMENT '文章分类',
  `article_comment` int(11) NOT NULL DEFAULT 0 COMMENT '文章评论',
  `article_source` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章来源',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_enabled` int(1) NOT NULL DEFAULT 1 COMMENT '是否启用（0否1是 默认1）',
  `is_deleted` int(1) NOT NULL DEFAULT 0 COMMENT '是否删除（0否1是 默认0）',
  `version` int(11) NOT NULL DEFAULT 1 COMMENT '乐观锁',
  PRIMARY KEY (`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cl_log
-- ----------------------------
DROP TABLE IF EXISTS `cl_log`;
CREATE TABLE `cl_log`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `log_url` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求路径',
  `log_params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '参数',
  `log_status` int(1) NOT NULL DEFAULT 1 COMMENT '访问状态，1正常0异常',
  `log_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '异常信息',
  `log_method` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求方式，get、post等',
  `log_time` bigint(20) NOT NULL DEFAULT 0 COMMENT '响应时间',
  `log_result` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '返回值',
  `log_ip` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求ip',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `created_by` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '接口访问日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cl_xx
-- ----------------------------
DROP TABLE IF EXISTS `cl_xx`;
CREATE TABLE `cl_xx`  (
  `xx_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'xxid标识',
  `xx_name` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'xx名字',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `version` int(11) NOT NULL DEFAULT 1 COMMENT '乐观锁',
  `is_enabled` int(1) NOT NULL DEFAULT 1 COMMENT '是否启用（0否1是 默认1）',
  `is_deleted` int(1) NOT NULL DEFAULT 0 COMMENT '是否删除（0否1是 默认0）',
  PRIMARY KEY (`xx_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
