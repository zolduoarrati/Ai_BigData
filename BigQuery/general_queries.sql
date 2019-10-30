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
join `modular-sorter-256519.stackoverflow.posts_tag_wiki` b on u.id = b.owner_user_id
join `modular-sorter-256519.stackoverflow.tags` t on b.id = t.wiki_post_id 
order by t.count desc
------------------------------------
--INSERT INTO `modular-sorter-256519.stackoverflow.users` VALUES (7450866,'Nikita Popov',null,null,'2017-01-21 16:21:39.320 UTC','2019-08-08 09:41:31.203 UTC','saint petersburg',40,33,0,67,'https://lh3.googleusercontent.com/-PHqZ7qXLGp0/AAAAAAAAAAI/AAAAAAAAbY8/xIIH8p2-YQs/photo.jpg?sz=128','https://t.me/NikitaPopov');

DELETE FROM `modular-sorter-256519.stackoverflow.users` where location = 'saint petersburg' or location = 'SAINT PETERSBURG'
