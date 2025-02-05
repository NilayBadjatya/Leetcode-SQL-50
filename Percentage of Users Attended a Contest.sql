# Write your MySQL query statement below
select contest_id, COALESCE(ROUND(COUNT(r.user_id) * 100 / (select COUNT(DISTINCT user_id) from Users), 2), 0) as percentage
from Register r
group by contest_id
order by percentage DESC, contest_id ASC
