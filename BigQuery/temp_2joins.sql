SELECT
  pc.*,
  COUNT(pm.pm_user_id) AS total_members
FROM
  `molten-method-230908.ghtorrent_top20.project_commits` pc
JOIN
  `molten-method-230908.ghtorrent_top20.project_members` pm
ON
  pc.id = pm.pm_repo_id
GROUP BY
  pc.id,
  pc.url,
  pc.country_code,
  pc.name,
  pc.description,
  pc.total_commits
ORDER BY
  pc.total_commits DESC