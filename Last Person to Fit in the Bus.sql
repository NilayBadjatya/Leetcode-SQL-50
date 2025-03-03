# Write your MySQL query statement below
with cte as
(select person_name, weight, SUM(weight) OVER(order by turn) as cumm_sum
from Queue)

select person_name
from cte
where cumm_sum <= 1000
order by cumm_sum DESC
limit 1
