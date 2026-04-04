-- ----------------------------
-- canyinguanli database init
-- ----------------------------
CREATE DATABASE IF NOT EXISTS `canyinguanli` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `canyinguanli`;

-- ----------------------------
-- Table: users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(200) DEFAULT NULL,
  `password` VARCHAR(200) DEFAULT NULL,
  `role` VARCHAR(200) DEFAULT NULL,
  `addtime` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table: token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `userid` INT DEFAULT NULL,
  `username` VARCHAR(200) DEFAULT NULL,
  `tablename` VARCHAR(200) DEFAULT NULL,
  `role` VARCHAR(200) DEFAULT NULL,
  `token` VARCHAR(200) DEFAULT NULL,
  `expiratedtime` DATETIME DEFAULT NULL,
  `addtime` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table: config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(200) DEFAULT NULL,
  `value` VARCHAR(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table: dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `dic_code` VARCHAR(200) DEFAULT NULL,
  `dic_name` VARCHAR(200) DEFAULT NULL,
  `code_index` INT DEFAULT NULL,
  `index_name` VARCHAR(200) DEFAULT NULL,
  `super_id` INT DEFAULT NULL,
  `beizhu` VARCHAR(200) DEFAULT NULL,
  `create_time` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table: yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(200) DEFAULT NULL,
  `password` VARCHAR(200) DEFAULT NULL,
  `yonghu_name` VARCHAR(200) DEFAULT NULL,
  `yonghu_phone` VARCHAR(200) DEFAULT NULL,
  `yonghu_id_number` VARCHAR(200) DEFAULT NULL,
  `yonghu_photo` VARCHAR(200) DEFAULT NULL,
  `sex_types` INT DEFAULT NULL,
  `yonghu_email` VARCHAR(200) DEFAULT NULL,
  `new_money` DOUBLE DEFAULT NULL,
  `yonghu_sum_jifen` DOUBLE DEFAULT NULL,
  `yonghu_new_jifen` DOUBLE DEFAULT NULL,
  `huiyuandengji_types` INT DEFAULT NULL,
  `create_time` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table: yuangong
-- ----------------------------
DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE `yuangong` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(200) DEFAULT NULL,
  `password` VARCHAR(200) DEFAULT NULL,
  `yuangong_name` VARCHAR(200) DEFAULT NULL,
  `yuangong_phone` VARCHAR(200) DEFAULT NULL,
  `yuangong_id_number` VARCHAR(200) DEFAULT NULL,
  `yuangong_photo` VARCHAR(200) DEFAULT NULL,
  `sex_types` INT DEFAULT NULL,
  `yuangong_email` VARCHAR(200) DEFAULT NULL,
  `create_time` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table: gongyingshang
-- ----------------------------
DROP TABLE IF EXISTS `gongyingshang`;
CREATE TABLE `gongyingshang` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `gongyingshang_name` VARCHAR(200) DEFAULT NULL,
  `gongyingshang_phone` VARCHAR(200) DEFAULT NULL,
  `gongyingshang_email` VARCHAR(200) DEFAULT NULL,
  `gongyingshang_types` INT DEFAULT NULL,
  `gongyingshang_money` DOUBLE DEFAULT NULL,
  `gongyingshang_content` VARCHAR(200) DEFAULT NULL,
  `create_time` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table: caipin
-- ----------------------------
DROP TABLE IF EXISTS `caipin`;
CREATE TABLE `caipin` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `caipin_uuid_number` VARCHAR(200) DEFAULT NULL,
  `caipin_name` VARCHAR(200) DEFAULT NULL,
  `caipin_photo` VARCHAR(200) DEFAULT NULL,
  `caipin_types` INT DEFAULT NULL,
  `caipin_price` INT DEFAULT NULL,
  `caipin_kucun_number` INT DEFAULT NULL,
  `caipin_old_money` DOUBLE DEFAULT NULL,
  `caipin_new_money` DOUBLE DEFAULT NULL,
  `caipin_clicknum` INT DEFAULT NULL,
  `caipin_content` VARCHAR(200) DEFAULT NULL,
  `shangxia_types` INT DEFAULT NULL,
  `caipin_delete` INT DEFAULT NULL,
  `create_time` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table: caipin_collection
-- ----------------------------
DROP TABLE IF EXISTS `caipin_collection`;
CREATE TABLE `caipin_collection` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `caipin_id` INT DEFAULT NULL,
  `yonghu_id` INT DEFAULT NULL,
  `caipin_collection_types` INT DEFAULT NULL,
  `insert_time` DATETIME DEFAULT NULL,
  `create_time` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table: caipin_commentback
-- ----------------------------
DROP TABLE IF EXISTS `caipin_commentback`;
CREATE TABLE `caipin_commentback` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `caipin_id` INT DEFAULT NULL,
  `yonghu_id` INT DEFAULT NULL,
  `caipin_commentback_text` VARCHAR(200) DEFAULT NULL,
  `insert_time` DATETIME DEFAULT NULL,
  `reply_text` VARCHAR(200) DEFAULT NULL,
  `update_time` DATETIME DEFAULT NULL,
  `create_time` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table: caipin_order
-- ----------------------------
DROP TABLE IF EXISTS `caipin_order`;
CREATE TABLE `caipin_order` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `caipin_order_uuid_number` VARCHAR(200) DEFAULT NULL,
  `caipin_id` INT DEFAULT NULL,
  `yonghu_id` INT DEFAULT NULL,
  `buy_number` INT DEFAULT NULL,
  `caipin_order_time` DATETIME DEFAULT NULL,
  `caipin_order_true_price` DOUBLE DEFAULT NULL,
  `caipin_order_types` INT DEFAULT NULL,
  `caipin_order_payment_types` INT DEFAULT NULL,
  `insert_time` DATETIME DEFAULT NULL,
  `create_time` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table: forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `forum_name` VARCHAR(200) DEFAULT NULL,
  `yonghu_id` INT DEFAULT NULL,
  `yuangong_id` INT DEFAULT NULL,
  `users_id` INT DEFAULT NULL,
  `forum_content` VARCHAR(200) DEFAULT NULL,
  `super_ids` INT DEFAULT NULL,
  `forum_state_types` INT DEFAULT NULL,
  `insert_time` DATETIME DEFAULT NULL,
  `update_time` DATETIME DEFAULT NULL,
  `create_time` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table: news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `news_name` VARCHAR(200) DEFAULT NULL,
  `news_types` INT DEFAULT NULL,
  `news_photo` VARCHAR(200) DEFAULT NULL,
  `insert_time` DATETIME DEFAULT NULL,
  `news_content` VARCHAR(200) DEFAULT NULL,
  `create_time` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table: single_seach
-- ----------------------------
DROP TABLE IF EXISTS `single_seach`;
CREATE TABLE `single_seach` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `single_seach_name` VARCHAR(200) DEFAULT NULL,
  `single_seach_types` INT DEFAULT NULL,
  `single_seach_content` VARCHAR(200) DEFAULT NULL,
  `create_time` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- INSERT TEST DATA
-- ============================================================

-- ----------------------------
-- admin user
-- ----------------------------
INSERT INTO `users` (`username`, `password`, `role`, `addtime`) VALUES
('admin', 'admin', '管理员', NOW());

-- ----------------------------
-- test yonghu (user)
-- ----------------------------
INSERT INTO `yonghu` (`username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `yonghu_sum_jifen`, `yonghu_new_jifen`, `huiyuandengji_types`, `create_time`) VALUES
('yonghu1', '123456', '测试用户1', '13800138001', '110101199001011234', 'http://localhost:8080/canyinguanli/upload/yonghu1.jpg', 1, 'yonghu1@qq.com', 1000.0, 100.0, 100.0, 1, NOW());

-- ----------------------------
-- test yuangong (employee)
-- ----------------------------
INSERT INTO `yuangong` (`username`, `password`, `yuangong_name`, `yuangong_phone`, `yuangong_id_number`, `yuangong_photo`, `sex_types`, `yuangong_email`, `create_time`) VALUES
('yuangong1', '123456', '测试员工1', '13800138002', '110101199002021234', 'http://localhost:8080/canyinguanli/upload/yuangong1.jpg', 1, 'yuangong1@qq.com', NOW());

-- ----------------------------
-- test gongyingshang (supplier)
-- ----------------------------
INSERT INTO `gongyingshang` (`gongyingshang_name`, `gongyingshang_phone`, `gongyingshang_email`, `gongyingshang_types`, `gongyingshang_money`, `gongyingshang_content`, `create_time`) VALUES
('测试供应商1', '13800138003', '蔬菜', 1, 500.0, '新鲜蔬菜供应', NOW()),
('测试供应商2', '13800138004', '肉类', 2, 800.0, '优质肉类供应', NOW());

-- ----------------------------
-- config
-- ----------------------------
INSERT INTO `config` (`name`, `value`) VALUES
('faceFile', 'http://localhost:8080/canyinguanli/upload/'),
('轮播图1', 'http://localhost:8080/canyinguanli/upload/config1.jpg'),
('轮播图2', 'http://localhost:8080/canyinguanli/upload/config2.jpg'),
('轮播图3', 'http://localhost:8080/canyinguanli/upload/config3.jpg');

-- ----------------------------
-- test caipin (dishes)
-- ----------------------------
INSERT INTO `caipin` (`caipin_uuid_number`, `caipin_name`, `caipin_photo`, `caipin_types`, `caipin_price`, `caipin_kucun_number`, `caipin_old_money`, `caipin_new_money`, `caipin_clicknum`, `caipin_content`, `shangxia_types`, `caipin_delete`, `create_time`) VALUES
('CP0001', '宫保鸡丁', 'http://localhost:8080/canyinguanli/upload/caipin1.jpg', 1, 10, 100, 38.0, 28.0, 0, '经典川菜宫保鸡丁', 1, 1, NOW()),
('CP0002', '鱼香肉丝', 'http://localhost:8080/canyinguanli/upload/caipin2.jpg', 1, 8, 100, 32.0, 25.0, 0, '传统川菜鱼香肉丝', 1, 1, NOW()),
('CP0003', '红烧排骨', 'http://localhost:8080/canyinguanli/upload/caipin3.jpg', 2, 15, 50, 58.0, 45.0, 0, '红烧排骨色泽红亮', 1, 1, NOW()),
('CP0004', '清蒸鲈鱼', 'http://localhost:8080/canyinguanli/upload/caipin4.jpg', 3, 20, 30, 68.0, 55.0, 0, '新鲜鲈鱼清蒸', 1, 1, NOW()),
('CP0005', '番茄蛋汤', 'http://localhost:8080/canyinguanli/upload/caipin5.jpg', 4, 5, 200, 18.0, 12.0, 0, '家常番茄蛋花汤', 1, 1, NOW());

-- ----------------------------
-- test news
-- ----------------------------
INSERT INTO `news` (`news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
('下周长者餐配送时间调整通知', 1, 'http://localhost:8080/canyinguanli/upload/news1.jpg', NOW(), '<p>因周一早间后厨设备例行检修，下周一早餐配送时间调整为 8:00 至 9:30，其余时段保持不变。</p><p>请已预约的长者和家属提前关注站内提醒，取餐点位不变。</p>', NOW()),
('春季营养菜单上新公告', 2, 'http://localhost:8080/canyinguanli/upload/news2.jpg', NOW(), '<p>本周起食堂新增低盐炖汤、杂粮软饭和高蛋白蒸菜组合，方便牙口较弱和控糖需求的长者选择。</p><p>欢迎到菜品页查看每天的推荐餐单。</p>', NOW()),
('清明节期间食堂开放安排', 1, 'http://localhost:8080/canyinguanli/upload/news3.jpg', NOW(), '<p>清明节假期食堂正常提供午餐和晚餐，早餐窗口暂停一天。</p><p>节日期间线上订餐与线下取餐服务照常开放。</p>', NOW()),
('长者健康讲座报名开启', 2, 'http://localhost:8080/canyinguanli/upload/news4.jpg', NOW(), '<p>本周五下午将在社区活动室开展高血压人群日常饮食管理专题讲座。</p><p>报名后可获得一份适老营养餐搭配手册。</p>', NOW()),
('志愿者助餐服务招募公告', 1, 'http://localhost:8080/canyinguanli/upload/news5.jpg', NOW(), '<p>食堂正在招募周末助餐志愿者，服务内容包括协助打餐、引导排队和关怀独居长者。</p><p>有意向的居民可在联系我们页面查看报名方式。</p>', NOW()),
('本月满意度回访问卷发布', 2, 'http://localhost:8080/canyinguanli/upload/news6.jpg', NOW(), '<p>为了持续改进菜品口味与配送体验，食堂上线了四月满意度问卷。</p><p>提交问卷后，系统会优先记录您的口味建议和服务需求。</p>', NOW());

-- ----------------------------
-- test forum
-- ----------------------------
INSERT INTO `forum` (`forum_name`, `yonghu_id`, `yuangong_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
('有没有适合控糖长者的套餐推荐？', NULL, NULL, 1, '<p>最近家里老人需要控制血糖，想了解食堂里哪些套餐更适合日常稳定食用，欢迎管理员或有经验的家属分享。</p>', 0, 1, NOW(), NOW(), NOW()),
('中午高峰期取餐排队建议', NULL, NULL, 1, '<p>建议大家尽量提前十分钟到达取餐点，最近中午 11:30 到 12:00 人较多，提前到场会更从容。</p>', 0, 1, NOW(), NOW(), NOW()),
('希望增加软烂一点的家常菜', NULL, NULL, 1, '<p>不少长者更喜欢软烂好咀嚼的菜品，比如炖豆腐、蒸蛋和南瓜羹，建议后续每周固定安排几次。</p>', 0, 1, NOW(), NOW(), NOW()),
('欢迎反馈送餐和口味体验', NULL, NULL, 1, '<p>如果您对送餐速度、分量搭配或口味有建议，可以直接在论坛回复，我们会按周汇总并持续优化。</p>', 0, 1, NOW(), NOW(), NOW());

-- ----------------------------
-- test single_seach
-- ----------------------------
INSERT INTO `single_seach` (`single_seach_name`, `single_seach_types`, `single_seach_content`, `create_time`) VALUES
('食堂介绍', 1, '<p>社区老年食堂以热饭热菜、营养均衡、服务贴心为目标，为周边长者提供堂食、订餐和送餐服务。</p><p>食堂坚持少油少盐、荤素搭配、软硬适中的适老化烹饪原则，每日根据季节和长者需求调整菜单。</p><p>目前已开通线上订餐、窗口取餐和志愿者协助送餐三种服务方式，方便行动不便或独居长者按需选择。</p>', NOW()),
('联系我们', 2, '<p>服务电话：400-800-1234</p><p>食堂地址：社区综合服务中心一层长者助餐点</p><p>营业时间：早餐 07:30-09:00，午餐 11:00-13:00，晚餐 17:00-18:30</p><p>如需团体订餐、送餐协助或志愿服务报名，可在工作时间来电咨询。</p>', NOW());

-- ----------------------------
-- dictionary entries
-- ----------------------------
INSERT INTO `dictionary` (`dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
-- sex_types 性别
('sex_types', '性别', 1, '男', NULL, NULL, NOW()),
('sex_types', '性别', 2, '女', NULL, NULL, NOW()),

-- caipin_types 菜品类型
('caipin_types', '菜品类型', 1, '川菜', NULL, NULL, NOW()),
('caipin_types', '菜品类型', 2, '粤菜', NULL, NULL, NOW()),
('caipin_types', '菜品类型', 3, '鲁菜', NULL, NULL, NOW()),
('caipin_types', '菜品类型', 4, '汤类', NULL, NULL, NOW()),

-- shangxia_types 是否上架
('shangxia_types', '是否上架', 1, '上架', NULL, NULL, NOW()),
('shangxia_types', '是否上架', 2, '下架', NULL, NULL, NOW()),

-- caipin_order_types 订单类型
('caipin_order_types', '订单类型', 1, '已支付', NULL, NULL, NOW()),
('caipin_order_types', '订单类型', 2, '已取消', NULL, NULL, NOW()),
('caipin_order_types', '订单类型', 3, '已完成', NULL, NULL, NOW()),
('caipin_order_types', '订单类型', 4, '已退款', NULL, NULL, NOW()),

-- caipin_order_payment_types 支付类型
('caipin_order_payment_types', '支付类型', 1, '余额支付', NULL, NULL, NOW()),
('caipin_order_payment_types', '支付类型', 2, '积分支付', NULL, NULL, NOW()),

-- caipin_collection_types 收藏类型
('caipin_collection_types', '收藏类型', 1, '收藏', NULL, NULL, NOW()),
('caipin_collection_types', '收藏类型', 2, '赞', NULL, NULL, NOW()),
('caipin_collection_types', '收藏类型', 3, '踩', NULL, NULL, NOW()),

-- forum_state_types 帖子状态
('forum_state_types', '帖子状态', 1, '正常', NULL, NULL, NOW()),
('forum_state_types', '帖子状态', 2, '封禁', NULL, NULL, NOW()),

-- news_types 公告类型
('news_types', '公告类型', 1, '通知公告', NULL, NULL, NOW()),
('news_types', '公告类型', 2, '活动公告', NULL, NULL, NOW()),

-- gongyingshang_types 供应物品类型
('gongyingshang_types', '供应物品类型', 1, '蔬菜', NULL, NULL, NOW()),
('gongyingshang_types', '供应物品类型', 2, '肉类', NULL, NULL, NOW()),
('gongyingshang_types', '供应物品类型', 3, '海鲜', NULL, NULL, NOW()),
('gongyingshang_types', '供应物品类型', 4, '调料', NULL, NULL, NOW()),

-- huiyuandengji_types 会员等级
('huiyuandengji_types', '会员等级', 1, '普通会员', NULL, NULL, NOW()),
('huiyuandengji_types', '会员等级', 2, '银卡会员', NULL, NULL, NOW()),
('huiyuandengji_types', '会员等级', 3, '金卡会员', NULL, NULL, NOW()),

-- single_seach_types 单页数据类型
('single_seach_types', '单页数据类型', 1, '关于我们', NULL, NULL, NOW()),
('single_seach_types', '单页数据类型', 2, '联系方式', NULL, NULL, NOW()),
('single_seach_types', '单页数据类型', 3, '经营理念', NULL, NULL, NOW()),

-- isdefault_types 是否默认
('isdefault_types', '是否', 1, '是', NULL, NULL, NOW()),
('isdefault_types', '是否', 2, '否', NULL, NULL, NOW()),

-- caipin_delete 逻辑删除
('caipin_delete_types', '逻辑删除', 1, '未删除', NULL, NULL, NOW()),
('caipin_delete_types', '逻辑删除', 2, '已删除', NULL, NULL, NOW());
