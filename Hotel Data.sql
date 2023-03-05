with hotels as (
SELECT * FROM [Projects].[dbo].['2018$']
UNION
SELECT * FROM [Projects].[dbo].['2019$']
UNION
SELECT * FROM [Projects].[dbo].['2020$'])


SELECT * FROM hotels
left join [Projects].[dbo].[market_segment$]
on
hotels.market_segment = market_segment$.market_segment
left join [Projects].[dbo].[meal_cost$]
on
meal_cost$.meal = hotels.meal


