-- what is the total numbers of commits per user + name
select u.id as user_id, u.login, x number_fo_commits from users u
left join (
	select committer_id, count(*) x from commits 
	group by committer_id
) uu on uu.committer_id = u.id order by x desc

-- what is the proggraming languages used by each user
select distinct owner_id as user_id, language 
from projects where language is not null
order by owner_id


