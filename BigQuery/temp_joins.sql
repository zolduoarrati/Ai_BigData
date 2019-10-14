"""
Created on Wed Oct  9 11:54:44 2019
@author: EZolduoarrati
"""
SELECT
  pr.id,
  pr.url,
  pr.country_code,
  pr.name,
  pr.description,
  COUNT(c.c_id) AS total_commits,
  COUNT(cm.cm_id) AS total_commits_comments,
  COUNT(DISTINCT prm.pm_user_id) AS total_users,
  COUNT(prq.pl_id) AS total_pull_request,
  COUNT(w.w_user_id) AS total_watchers,
  COUNT(pl.pl_project_id) AS total_languages,
  COUNT(DISTINCT i.i_id) AS total_issues,
  COUNT(ic.ic_issue_id) AS total_issue_comments
FROM
  `molten-method-230908.ghtorrent_top20.users` u
JOIN
  `molten-method-230908.ghtorrent_top20.projects` pr
ON
  u.id = pr.owner_id
  --join `molten-method-230908.ghtorrent_top20.commits` c on pr.id=c.c_project_id
JOIN
  `molten-method-230908.ghtorrent_top20.commit_comments` cm
ON
  c.c_id=cm.cm_commit_id
  --join `molten-method-230908.ghtorrent_top20.project_members` prm on pr.id=prm.pm_repo_id
  --join `molten-method-230908.ghtorrent_top20.pull_requests` prq on pr.id=prq.pl_head_repo_id
  --join `molten-method-230908.ghtorrent_top20.watchers` w on pr.id=w.w_repo_id
  --join `molten-method-230908.ghtorrent_top20.project_languages` pl on pr.id=pl.pl_project_id
  --join `molten-method-230908.ghtorrent_top20.issues` i on pr.id=i.i_repo_id
  --join `molten-method-230908.ghtorrent_top20.issue_comments` ic on i.i_id=ic.ic_issue_id
GROUP BY
  pr.id,
  pr.url,
  pr.country_code,
  pr.name,
  pr.description
ORDER BY
  pr.country_code DESC