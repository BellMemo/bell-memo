/* 主表 */
CREATE TABLE IF NOT EXISTS `memo_data`  (
    /* 主键ID */
    `id` binary(36) NOT NULL,
    /* 标题 */
    `title` varchar(255) NOT NULL,
    /* 内容 */
    `content` text NOT NULL DEFAULT '',
    /* 创建时间 */
    `created` int(11) NOT NULL DEFAULT 0,
    /* 更新时间 */
    `updated` int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `memo_tag` (
    /* 主键ID */
    `id` binary(36) NOT NULL,
    /* 标签名 */
    `name` varchar(255) NOT NULL,
    /* 创建时间 */
    `created` int(11) NOT NULL DEFAULT 0,
    /* 更新时间 */
    `updated` int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `memo_tag_data` (
  /* 主键ID */
  `id` binary(36) NOT NULL, 
  /* 标签ID */
  `tag_id` binary(36) NOT NULL, 
  /* 记录ID */
  `memo_id` binary(36) NOT NULL, 
  /* 创建时间 */
  `created` int(11) NOT NULL DEFAULT 0, 
  /* 更新时间 */
  `updated` int(11) NOT NULL DEFAULT 0, 
  PRIMARY KEY (`id`)
);