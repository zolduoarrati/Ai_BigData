-- what is the total number of participants in each project
select project_id, count(*) total_number_of_user_by_project from (
	select distinct project_id, committer_id from commits
) a group by project_id order by 2 desc



-- create index ix_p1 on pull_requests (head_repo_id)
-- create index ix_p2 on pull_requests (base_repo_id)

-- what is total number of pull per project
select p.id, p.name, x pull_requests_per_project from projects p
left join (
	select head_repo_id, count(*) x from pull_requests
	group by head_repo_id
) pp on p.id = pp.head_repo_id
order by x desc

-- create index ix_pull_request_history1 on pull_request_history (action)
-- create index ix_pull_request_history2 on pull_request_history (id)
-- create index ix_pull_request_history3 on pull_request_history (pull_request_id)
-- what is total number of pull per project (merded/not merged)
select p.id project_id, p.name, accepted, not_accepted from (
	select pull_request_id, 
		sum(case when action in ('closed','merged') then 1 else 0 end) as accepted, 
		sum(case when action in ('opened') then 1 else 0 end) as not_accepted
	from pull_request_history
	group by pull_request_id
) t 
inner join projects p on t.pull_request_id = p.id
order by accepted desc


-- create index ix_w on watchers(repo_id)
select p.id, p.name, watchers_per_project from projects p
left join (
	select repo_id, count(*) watchers_per_project from watchers
	group by repo_id
) pp on p.id = pp.repo_id
order by watchers_per_project desc

-- locations of watchers
select w.user_id, login, location from watchers w
inner join projects p on w.repo_id = p.id
inner join users u on w.user_id = u.id

-- count of locations
select w.user_id, login, location from watchers w
inner join projects p on w.repo_id = p.id
inner join users u on w.user_id = u.id

-- create index ix_location on users(location)
select location, count(*) count_of_location from watchers w
inner join projects p on w.repo_id = p.id
inner join users u on w.user_id = u.id
group by location order by 2 desc
