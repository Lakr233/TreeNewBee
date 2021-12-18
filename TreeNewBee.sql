DROP DATABASE IF EXISTS `tree_new_bee`;
CREATE DATABASE `tree_new_bee`;
USE `tree_new_bee`;

DROP TABLE IF EXISTS `v`;
CREATE TABLE `v` (
  `new_bee` varchar(255) NOT NULL,
  PRIMARY KEY (`new_bee`)
);

DROP TABLE IF EXISTS `n2`;
CREATE TABLE `n2` (
  `new_bee` varchar(255) NOT NULL,
  PRIMARY KEY (`new_bee`)
);

DROP TABLE IF EXISTS `n3`;
CREATE TABLE `n3` (
  `new_bee` varchar(255) NOT NULL,
  PRIMARY KEY (`new_bee`)
);

DROP TABLE IF EXISTS `n4`;
CREATE TABLE `n4` (
  `new_bee` varchar(255) NOT NULL,
  PRIMARY KEY (`new_bee`)
);

INSERT INTO `v` VALUES ('皮实'),('复盘'),('赋能'),('加持'),('沉淀'),('倒逼'),('落地'),('串联'),('协同'),('反哺'),('兼容'),('包装'),('重组'),('履约'),('响应'),('量化'),('发力'),('布局'),('联动'),('细分'),('梳理'),('输出'),('加速'),('共建'),('共创'),('支撑'),('融合'),('解耦'),('聚合'),('集成'),('对标'),('对齐'),('聚焦'),('抓手'),('拆解'),('拉通'),('抽象'),('摸索'),('提炼'),('打通'),('吃透'),('迁移'),('分发'),('分层'),('封装'),('辐射'),('围绕'),('复用'),('渗透'),('扩展'),('开拓'),('给到'),('死磕'),('破圈');
INSERT INTO `n2` VALUES ('漏斗'),('中台'),('闭环'),('打法'),('纽带'),('矩阵'),('刺激'),('规模'),('场景'),('维度'),('格局'),('形态'),('生态'),('话术'),('体系'),('认知'),('玩法'),('体感'),('感知'),('调性'),('心智'),('战役'),('合力'),('赛道'),('基因'),('因子'),('模型'),('载体'),('横向'),('通道'),('补位'),('链路'),('试点');
INSERT INTO `n3` VALUES ('新生态'),('感知度'),('颗粒度'),('方法论'),('组合拳'),('引爆点'),('点线面'),('精细化'),('差异化'),('平台化'),('结构化'),('影响力'),('耦合性'),('易用性'),('便捷性'),('一致性'),('端到端'),('短平快'),('护城河');
INSERT INTO `n4` VALUES ('底层逻辑'),('顶层设计'),('交付价值'),('生命周期'),('价值转化'),('强化认知'),('资源倾斜'),('完善逻辑'),('抽离透传'),('复用打法'),('商业模式'),('快速响应'),('定性定量'),('关键路径'),('去中心化'),('结果导向'),('垂直领域'),('归因分析'),('体验度量'),('信息屏障');

SET @v := (SELECT GROUP_CONCAT(new_bee) FROM (SELECT new_bee FROM v ORDER BY rand() LIMIT 6) AS tmp);
SET @n2 := (SELECT GROUP_CONCAT(new_bee) FROM (SELECT new_bee FROM n2 ORDER BY rand() LIMIT 7) AS tmp);
SET @n3 := (SELECT GROUP_CONCAT(new_bee) FROM (SELECT new_bee FROM n3 ORDER BY rand() LIMIT 7) AS tmp);
SET @n4 := (SELECT GROUP_CONCAT(new_bee) FROM (SELECT new_bee FROM n4 ORDER BY rand() LIMIT 12) AS tmp);

DROP FUNCTION IF EXISTS get_new_bee;
delimiter ;;
CREATE FUNCTION get_new_bee(new_bee_arr varchar(255), idx int) RETURNS varchar(10)
NO SQL
BEGIN
  RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(new_bee_arr, ',', idx), ',', -1);
END
;;
delimiter ;

SELECT CONCAT(
  get_new_bee(@n4, 1), '是', get_new_bee(@v, 1), get_new_bee(@n4, 2), '，', get_new_bee(@v, 2), '行业', get_new_bee(@n3, 1), '。',
  get_new_bee(@n4, 3), '是', get_new_bee(@v, 3), get_new_bee(@n2, 1), get_new_bee(@n4, 4), '，通过', get_new_bee(@n3, 2), '和', get_new_bee(@n3, 3), '达到', get_new_bee(@n3, 4), '。',
  get_new_bee(@n4, 5), '是在', get_new_bee(@n4, 6), '采用', get_new_bee(@n2, 2), '打法达成', get_new_bee(@n4, 7), '。',
  get_new_bee(@n4, 8), get_new_bee(@n4, 9), '作为', get_new_bee(@n2, 3), '为产品赋能，', get_new_bee(@n4, 10), '作为', get_new_bee(@n2, 4), '的评判标准。',
  '亮点是', get_new_bee(@n2, 5), '，优势是', get_new_bee(@n2, 6), '。',
  get_new_bee(@v, 4), '整个', get_new_bee(@n4, 11), '，', get_new_bee(@v, 5), get_new_bee(@n2, 7), get_new_bee(@v, 6), get_new_bee(@n4, 12), '。',
  get_new_bee(@n3, 5), '是', get_new_bee(@n3, 6), '达到', get_new_bee(@n3, 7), '标准。' 
) AS tree_new_bee;

DROP DATABASE `tree_new_bee`;