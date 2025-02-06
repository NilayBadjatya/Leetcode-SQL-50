# Write your MySQL query statement below
select q.query_name, ROUND((SUM(rating/position) / COUNT(rating)), 2) as quality, ROUND((select count(rating) from Queries qq where rating < 3 AND qq.query_name = q.query_name)*100 / COUNT(rating), 2) as poor_query_percentage 
from Queries q
group by q.query_name
