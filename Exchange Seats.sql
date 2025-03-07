# Write your MySQL query statement below
select (case when id % 2 = 0 then id-1 else (case when id % 2 != 0 AND id+1 <=(select max(id) from Seat) then id+1 else id end) end) as id, student
from Seat
order by id
