

Select COALESCE(pr.id, pc.id, pi.id, pm.id, pl.id, plq.id, pw.id) Id
     , MAX(pr.url)
     , MAX(pr.owner_id)
     , MAX(pr.country_code)
     , MAX(pr.name)
     , MAX(pr.description)
     , MAX(pc.total_commits) total_commits
     , MAX(pi.total_issues) total_issues
     , MAX(pm.total_members) total_members
     , MAX(pl.total_languages) total_languages
     , MAX(plq.total_pullrequests) total_pullrequests
     , MAX(pw.total_watchers) total_watchers
FROM   `molten-method-230908.ghtorrent_top20.projects` pr
       FULL JOIN `molten-method-230908.ghtorrent_top20.project_commits` pc ON pr.id = pc.id
       FULL JOIN `molten-method-230908.ghtorrent_top20.project_issues` pi ON pr.id = pi.id
       FULL JOIN `molten-method-230908.ghtorrent_top20.project_total_members` pm ON pr.id = pm.id
       FULL JOIN `molten-method-230908.ghtorrent_top20.project_total_languages` pl ON pr.id = pl.id
       FULL JOIN `molten-method-230908.ghtorrent_top20.project_pulls` plq ON pr.id = plq.id
       FULL JOIN `molten-method-230908.ghtorrent_top20.project_watchers` pw ON pr.id = pw.id
GROUP BY COALESCE(pr.id,pc.id, pi.id, pm.id,pl.id,plq.id,pw.id),pr.url,pr.owner_id,pr.country_code,pr.country_code,pr.name,pc.total_commits,pi.total_issues,pi.total_issues,pm.total_members,pl.total_languages,plq.total_pullrequests,pw.total_watchers
ORDER BY COALESCE(pr.id, pc.id, pi.id, pm.id,pl.id,plq.id,pw.id)