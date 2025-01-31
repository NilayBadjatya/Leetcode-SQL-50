# Write your MySQL query statement below
select e.name
from Employee e
join Employee ee
where e.id = ee.managerId
group by e.id
having count(e.id) >= 5
