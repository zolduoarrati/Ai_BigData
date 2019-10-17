SELECT
  pr.id,
  pr.url,
  pr.owner_id,
  pr.country_code,
  pr.name,
  pr.description,
  pc.total_commits total_commits,
  pi.total_issues total_issues,
  pm.total_members total_members,
  pl.total_languages total_languages,
  plq.total_pullrequests total_pullrequests,
  pw.total_watchers total_watchers
FROM
  `molten-method-230908.ghtorrent_top20.projects` pr
FULL JOIN
  `molten-method-230908.ghtorrent_top20.project_commits` pc
ON
  pr.id = pc.id
FULL JOIN
  `molten-method-230908.ghtorrent_top20.project_issues` pi
ON
  pr.id = pi.id
FULL JOIN
  `molten-method-230908.ghtorrent_top20.project_total_members` pm
ON
  pr.id = pm.id
FULL JOIN
  `molten-method-230908.ghtorrent_top20.project_total_languages` pl
ON
  pr.id = pl.id
FULL JOIN
  `molten-method-230908.ghtorrent_top20.project_pulls` plq
ON
  pr.id = plq.id
FULL JOIN
  `molten-method-230908.ghtorrent_top20.project_watchers` pw
ON
  pr.id = pw.id
WHERE
  pr.country_code = 'us'
  OR pr.country_code = 'cn'
  OR pr.country_code = 'ru'
GROUP BY
  pr.id,
  pr.url,
  pr.owner_id,
  pr.country_code,
  pr.name,
  pr.description,
  pc.total_commits,
  pi.total_issues,
  pm.total_members,
  pl.total_languages,
  plq.total_pullrequests,
  pw.total_watchers
ORDER BY
  pr.country_code ASC