/****** Script for SelectTopNRows command from SSMS  ******/
SELECT count_big(Id)
  FROM [StackOverflow].[dbo].[Users]
  where Location = 'China' or 
  Location = 'china' or 
  Location = 'ch' or 
  Location = 'Hefei' or
  Location = 'Beijing' or
  Location = 'Chongqing' or
  Location = 'Fuzhou' or
  Location = 'Guangzhou' or
  Location = 'Lanzhou' or
  Location = 'Nanning' or
  Location = 'Guiyang' or
  Location = 'Zhengzhou' or
  Location = 'Wuhan' or
  Location = 'Shijiazhuang' or
  Location = 'Haikou' or
  Location = 'Harbin' or
  Location = 'Changsha' or
  Location = 'Changchun' or 
  Location = 'Nanjing' or 
  Location = 'Nanchang' or
  Location = 'Shenyang' or
  Location = 'Hohhot' or
  Location = 'Yinchuan' or
  Location = 'Xining' or
  Location = 'Chengdu' or
  Location = 'Jinan' or
  Location = 'Shanghai' or
  Location = 'Xian' or
  Location = 'Taiyuan' or
  Location = 'Tianjin' or
  Location = 'Ürümqi' or
  Location = 'Lhasa' or
  Location = 'Kunming' or
  Location = 'Hangzhou'