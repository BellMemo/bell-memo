CREATE TABLE `memo_data` (
  `id` binary(36) NOT NULL COMMENT '主键ID',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL DEFAULT '' COMMENT '内容',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主表';

CREATE TABLE `memo_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) NOT NULL COMMENT ‘标签名称,
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签表';

CREATE TABLE `memo_tag_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tag_id` int(10) NOT NULL COMMENT '标签id',
  `memo_id` ibinary(36) NOT NULL COMMENT '备忘录id',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签关联表';