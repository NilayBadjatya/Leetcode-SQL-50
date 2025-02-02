# Write your MySQL query statement below
select s.user_id, ROUND((select COUNT(c.user_id)
from Confirmations c where c.action = 'confirmed' AND s.user_id = c.user_id) / (COUNT(s.user_id)), 2) as confirmation_rate
from Signups s
left join Confirmations c
on s.user_id = c.user_id
group by s.user_id
