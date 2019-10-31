SELECT count(id) as total_users
FROM `modular-sorter-256519.stackoverflow.users_usa`
order by total_users desc
------------------------------
--Delete from
DELETE FROM `modular-sorter-256519.stackoverflow.users_usa` WHERE
location='Mexico' or
location='Paris' or
location='Lebanon' or
location='lebanon' or
location='Berlin' or
location='Amsterdam' or
location='Peru' or
location='Ontario' or
location='Vancouver' or
location='Manchester' or
location='Rome' or
location='Holland' or
location='Athens' or
location='athens' or
location='Milan' or
location='cairo' or
location='Cairo' or
location='Cambridge' or
location='Oxford' or
location='Birmingham' or
location='mexico' or
location='berlin' or
location='moscow' or
location='Moscow' or
location='peru' or
location='Niagara Falls' or
location='ottawa' or
location='milan' or
location='ontario' or
location='belfast' or
location='mexico' or
location='paris' or
location='lebanon' or
location='lebanon' or
location='berlin' or
location='amsterdam' or
location='peru' or
location='ontario' or
location='vancouver' or
location='manchester' or
location='rome' or
location='holland' or
location='athens' or
location='athens' or
location='milan' or
location='cairo' or
location='cairo' or
location='cambridge' or
location='oxford' or
location='birmingham' or
location='mexico' or
location='berlin' or
location='moscow' or
location='moscow' or
location='peru' or
location='niagara falls' or
location='ottawa' or
location='milan' or
location='ontario' or
location='belfast'
----------------------------
SELECT t.*,u.location--count(t.id) as total 
FROM `modular-sorter-256519.stackoverflow.users_usa` u
join `modular-sorter-256519.stackoverflow.posts_tag_wiki_excerpt` b on u.id = b.owner_user_id
join `modular-sorter-256519.stackoverflow.tags` t on b.id = t.excerpt_post_id 
-----------------------------
SELECT t.*,u.location--count(t.id) as total 
FROM `modular-sorter-256519.stackoverflow.users_usa` u
join `modular-sorter-256519.stackoverflow.posts_tag_wiki_excerpt` b on u.id = b.owner_user_id
join `modular-sorter-256519.stackoverflow.tags` t on b.id = t.excerpt_post_id 
order by t.count desc
-------------------------------
SELECT b.title,b.body,b.tags,b.answer_count,b.comment_count,b.score,u.location,t.*--count(t.id) as total 
FROM `modular-sorter-256519.stackoverflow.users_usa` u
-------------------------------
SELECT
  MIN(date) AS min_date,
  MAX(date) AS max_date,
  MIN(class) AS min_class_value,
  MAX(class) AS max_class_value,
  MIN(tag_based) AS min_tag_based,
  MAX(tag_based) AS max_tag_based
FROM
  `modular-sorter-256519.stackoverflow.badges`
join `modular-sorter-256519.stackoverflow.posts_tag_wiki` b on u.id = b.owner_user_id
join `modular-sorter-256519.stackoverflow.tags` t on b.id = t.wiki_post_id 
order by t.count desc
------------------------------------
--INSERT INTO `modular-sorter-256519.stackoverflow.users` VALUES (7450866,'Nikita Popov',null,null,'2017-01-21 16:21:39.320 UTC','2019-08-08 09:41:31.203 UTC','saint petersburg',40,33,0,67,'https://lh3.googleusercontent.com/-PHqZ7qXLGp0/AAAAAAAAAAI/AAAAAAAAbY8/xIIH8p2-YQs/photo.jpg?sz=128','https://t.me/NikitaPopov');

DELETE FROM `modular-sorter-256519.stackoverflow.users` where location = 'saint petersburg' or location = 'SAINT PETERSBURG'
--------------------------------------
SELECT AVG(length(text)) as avg,min(creation_date),max(creation_date),min(score),max(score)
FROM `modular-sorter-256519.stackoverflow.comments`
--------------------------------------
SELECT
  AVG(LENGTH(body)) AS avg_text,
  AVG(comment_count) AS avg_comments,
  MIN(creation_date) AS MinDate,
  MAX(creation_date) AS MaxDate,
  MIN(score) AS MinScore,
  MAX(score) AS MaxScore,
  MIN(post_type_id) AS Min_post_type_id,
  MAX(post_type_id) AS Max_post_type_id
FROM
  `modular-sorter-256519.stackoverflow.posts_answers`
-----------------------------------------------
SELECT
  AVG(LENGTH(body)) AS avg_text,
  AVG(comment_count) AS avg_comments,
  Avg(CAST(answer_count AS int64)) as avg_answer,
  MIN(creation_date) AS MinDate,
  MAX(creation_date) AS MaxDate,
  MIN(score) AS MinScore,
  MAX(score) AS MaxScore,
  MIN(post_type_id) AS Min_post_type_id,
  MAX(post_type_id) AS Max_post_type_id,
  Avg(view_count) as avg_views
FROM
  `modular-sorter-256519.stackoverflow.posts_questions` 
------------------------------------------------------
SELECT
  MIN(creation_date) as min_creationDate,
  MAX(creation_date) as max_creationDate,
  MIN(vote_type_id) as min_views,
  MAX(vote_type_id) as max_views
FROM
  `modular-sorter-256519.stackoverflow.votes`