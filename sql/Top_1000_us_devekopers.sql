/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [user_id]
      ,[total_commits]
      ,[country_code]
      ,[RowNum]
  FROM [ghtorrent].[dbo].[commit_1000_developers] where country_code = 'us';