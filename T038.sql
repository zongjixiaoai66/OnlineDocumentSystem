/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t038`;
CREATE DATABASE IF NOT EXISTS `t038` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t038`;

DROP TABLE IF EXISTS `bumenxinxi`;
CREATE TABLE IF NOT EXISTS `bumenxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumen` varchar(200) NOT NULL COMMENT '部门',
  `renshu` int NOT NULL COMMENT '人数',
  `renyuanjiagou` longtext COMMENT '人员架构',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617346382778 DEFAULT CHARSET=utf8mb3 COMMENT='部门信息';

DELETE FROM `bumenxinxi`;
INSERT INTO `bumenxinxi` (`id`, `addtime`, `bumen`, `renshu`, `renyuanjiagou`) VALUES
	(21, '2021-04-02 06:39:35', '部门1', 1, '人员架构1'),
	(22, '2021-04-02 06:39:35', '部门2', 2, '人员架构2'),
	(23, '2021-04-02 06:39:35', '部门3', 3, '人员架构3'),
	(24, '2021-04-02 06:39:35', '部门4', 4, '人员架构4'),
	(25, '2021-04-02 06:39:35', '部门5', 5, '人员架构5'),
	(26, '2021-04-02 06:39:35', '部门6', 6, '人员架构6'),
	(1617346382777, '2021-04-02 06:53:02', '市场部', 20, '<p><img src="http://localhost:8080/springbootpkh49/upload/1617346381259.jpg"></p>');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootpkh49/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootpkh49/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootpkh49/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `gangwei`;
CREATE TABLE IF NOT EXISTS `gangwei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangwei` varchar(200) NOT NULL COMMENT '岗位',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gangwei` (`gangwei`)
) ENGINE=InnoDB AUTO_INCREMENT=1617346393893 DEFAULT CHARSET=utf8mb3 COMMENT='岗位';

DELETE FROM `gangwei`;
INSERT INTO `gangwei` (`id`, `addtime`, `gangwei`) VALUES
	(31, '2021-04-02 06:39:35', '岗位1'),
	(32, '2021-04-02 06:39:35', '岗位2'),
	(33, '2021-04-02 06:39:35', '岗位3'),
	(34, '2021-04-02 06:39:35', '岗位4'),
	(35, '2021-04-02 06:39:35', '岗位5'),
	(36, '2021-04-02 06:39:35', '岗位6'),
	(1617346389554, '2021-04-02 06:53:08', '专员'),
	(1617346393892, '2021-04-02 06:53:13', '主管');

DROP TABLE IF EXISTS `gonggaoxinxi`;
CREATE TABLE IF NOT EXISTS `gonggaoxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617346367507 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggaoxinxi`;
INSERT INTO `gonggaoxinxi` (`id`, `addtime`, `gonggaobiaoti`, `tupian`, `neirong`, `faburiqi`) VALUES
	(11, '2021-04-02 06:39:35', '公告标题1', 'http://localhost:8080/springbootpkh49/upload/gonggaoxinxi_tupian1.jpg', '内容1', '2021-04-02'),
	(12, '2021-04-02 06:39:35', '公告标题2', 'http://localhost:8080/springbootpkh49/upload/gonggaoxinxi_tupian2.jpg', '内容2', '2021-04-02'),
	(13, '2021-04-02 06:39:35', '公告标题3', 'http://localhost:8080/springbootpkh49/upload/gonggaoxinxi_tupian3.jpg', '内容3', '2021-04-02'),
	(14, '2021-04-02 06:39:35', '公告标题4', 'http://localhost:8080/springbootpkh49/upload/gonggaoxinxi_tupian4.jpg', '内容4', '2021-04-02'),
	(15, '2021-04-02 06:39:35', '公告标题5', 'http://localhost:8080/springbootpkh49/upload/gonggaoxinxi_tupian5.jpg', '内容5', '2021-04-02'),
	(16, '2021-04-02 06:39:35', '公告标题6', 'http://localhost:8080/springbootpkh49/upload/gonggaoxinxi_tupian6.jpg', '内容6', '2021-04-02'),
	(1617346367506, '2021-04-02 06:52:47', '公司文档在线下载', 'http://localhost:8080/springbootpkh49/upload/1617346355504.jpg', '<p>公司文档在线下载</p><p><img src="http://localhost:8080/springbootpkh49/upload/1617346365886.jpg"></p>', '2021-04-02');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'e1obeymqzgaq5dnji3p99rdg9x8dmxth', '2021-04-02 06:40:53', '2024-01-10 10:06:30'),
	(2, 41, '员工1', 'yuangong', '员工', '21was18elwacp2p9vpsx2ju4inu84f16', '2021-04-02 06:41:24', '2024-01-10 10:07:25'),
	(3, 1617346426234, '1', 'yuangong', '员工', 'sj8r162503dm4inro7s85jba9coq71wp', '2021-04-02 06:54:42', '2021-04-02 07:54:42');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-02 06:39:35');

DROP TABLE IF EXISTS `wendangxinxi`;
CREATE TABLE IF NOT EXISTS `wendangxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wendangmingcheng` varchar(200) NOT NULL COMMENT '文档名称',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `wendangjieshao` longtext COMMENT '文档介绍',
  `fujian` varchar(200) NOT NULL COMMENT '附件',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617346475917 DEFAULT CHARSET=utf8mb3 COMMENT='文档信息';

DELETE FROM `wendangxinxi`;
INSERT INTO `wendangxinxi` (`id`, `addtime`, `wendangmingcheng`, `leixing`, `wendangjieshao`, `fujian`, `faburiqi`) VALUES
	(51, '2021-04-02 06:39:35', '文档名称1', 'Word', '文档介绍1', 'http://localhost:8080/springbootpkh49/upload/1617346216078.pptx', '2021-04-02'),
	(52, '2021-04-02 06:39:35', '文档名称2', 'Word', '文档介绍2', '', '2021-04-02'),
	(53, '2021-04-02 06:39:35', '文档名称3', 'Word', '文档介绍3', '', '2021-04-02'),
	(55, '2021-04-02 06:39:35', '文档名称5', 'Word', '文档介绍5', '', '2021-04-02'),
	(56, '2021-04-02 06:39:35', '文档名称6', 'Word', '文档介绍6', '', '2021-04-02'),
	(1617346475916, '2021-04-02 06:54:35', '2021年中工作汇报PPT模板', 'PPT', '工作汇报PPT模板', 'http://localhost:8080/springbootpkh49/upload/1617346465322.pptx', '2021-04-02');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `gangwei` varchar(200) DEFAULT NULL COMMENT '岗位',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617346426235 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `addtime`, `yuangonggonghao`, `mima`, `yuangongxingming`, `xingbie`, `touxiang`, `bumen`, `gangwei`, `nianling`, `shouji`, `youxiang`, `shenfenzheng`) VALUES
	(41, '2021-04-02 06:39:35', '员工1', '123456', '员工姓名1', '男', 'http://localhost:8080/springbootpkh49/upload/yuangong_touxiang1.jpg', '部门1', '岗位1', 1, '13823888881', '773890001@qq.com', '440300199101010001'),
	(42, '2021-04-02 06:39:35', '员工2', '123456', '员工姓名2', '男', 'http://localhost:8080/springbootpkh49/upload/yuangong_touxiang2.jpg', '部门2', '岗位2', 2, '13823888882', '773890002@qq.com', '440300199202020002'),
	(43, '2021-04-02 06:39:35', '员工3', '123456', '员工姓名3', '男', 'http://localhost:8080/springbootpkh49/upload/yuangong_touxiang3.jpg', '部门3', '岗位3', 3, '13823888883', '773890003@qq.com', '440300199303030003'),
	(44, '2021-04-02 06:39:35', '员工4', '123456', '员工姓名4', '男', 'http://localhost:8080/springbootpkh49/upload/yuangong_touxiang4.jpg', '部门4', '岗位4', 4, '13823888884', '773890004@qq.com', '440300199404040004'),
	(45, '2021-04-02 06:39:35', '员工5', '123456', '员工姓名5', '男', 'http://localhost:8080/springbootpkh49/upload/yuangong_touxiang5.jpg', '部门5', '岗位5', 5, '13823888885', '773890005@qq.com', '440300199505050005'),
	(46, '2021-04-02 06:39:35', '员工6', '123456', '员工姓名6', '男', 'http://localhost:8080/springbootpkh49/upload/yuangong_touxiang6.jpg', '部门6', '岗位6', 6, '13823888886', '773890006@qq.com', '440300199606060006'),
	(1617346426234, '2021-04-02 06:53:46', '1', '1', '陈一', '女', 'http://localhost:8080/springbootpkh49/upload/1617346408141.jpg', '市场部', '专员', 25, '12345678978', '123@qq.com', '123456789789456123');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
