-- create index ix_issue_id on issues(reporter_id)
-- create index ix2_issue_id on issues(repo_id)
-- create index ix_issue_comments on issue_comments(issue_id)
-- create index ix_issue_comments_user_id on issue_comments(user_id)

--- what is total numbers of issuees created by each user
select user_id, login, sum(x) numbers_of_issuees from (
	select u.id user_id, p.id, x, u.login from projects p
	inner join (
		select repo_id, count(*) x from issues
		group by repo_id
	) as pp on p.id = pp.repo_id
	left join users u on p.owner_id = u.id
) a group by user_id, login order by numbers_of_issuees desc


-- what is the total number of comments by each of issue
select issue_id, count(*) number_comment_of_issue from issue_comments
group by issue_id order by 2 desc

-- what is total number of comments per user by issue
select user_id, count(*) number_comment_by_user from issue_comments
group by user_id order by 2 desc

