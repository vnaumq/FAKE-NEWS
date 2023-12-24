SELECT author, COUNT(title) as count_news , 
SUM (CASE WHEN label = 1 THEN 1 ELSE 0 END) as true, 
SUM (CASE WHEN label = 0 THEN 1 ELSE 0 END) as false
FROM dbo.full_news
GROUP BY author
ORDER BY count_news DESC 
