/* 标题内容标签查询 */
SELECT 
  memo_data.id AS memo_id, 
  title, 
  content, 
  memo_tag.id AS tag_id, 
  `name` AS tag_name 
FROM 
  memo_data, 
  memo_tag 
WHERE 
  title LIKE "%xxx%" 
  OR content LIKE "%xxx%" 
  OR tag_name LIKE "%xxx%" 
ORDER BY 
  memo_data.updated DESC 
LIMIT 
  10;

/* 标签查询 */
SELECT 
  name, 
  memo_tag_data.id, 
  memo_tag_data.title 
FROM 
  memo_tag 
  LEFT JOIN memo_tag_data on memo_tag.id = memo_tag.tag_id 
  LEFT JOIN memo_data on memo_tag_data.id = memo_data.id 
WHERE 
  memo_tag.name LIKE "%xxx%" 
LIMIT 
  10;

/* 数据插入 */
INSERT INTO memo_data VALUES ("uuid", "title", "content", "created","updated");
INSERT INTO memo_tag VALUES ("name", "created","updated");
INSERT INTO memo_tag_data VALUES ("tag_id", "memo_id", "created","updated");

/* 数据更新 */
UPDATE memo_data SET content='xxx' WHERE id=1;