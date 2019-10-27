select * from dbo.commit_1000_developers td
join dbo.commit_comments  dc
on td.user_id = dc.user_id
where td.country_code like 'ru'
order by td.user_id desc;