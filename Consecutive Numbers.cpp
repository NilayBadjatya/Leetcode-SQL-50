# Write your MySQL query statement below
select DISTINCT l.num as ConsecutiveNums
from Logs l
join Logs ll
on l.id = ll.id + 1
join Logs lll
on ll.id = lll.id + 1
where l.num = ll.num AND ll.num = lll.num
