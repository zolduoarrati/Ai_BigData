/****** Script for SelectTopNRows command from SSMS  ******/
SELECT name, count_big(name) as total
  FROM [ghtorrent].[dbo].[projects]
  where name = 'lenovo'
  group by name
