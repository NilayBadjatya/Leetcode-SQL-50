# Write your MySQL query statement below
select e.employee_id, e.name, COUNT(e.employee_id) as reports_count, ROUND(AVG(ee.age)) as average_age
from Employees e
join Employees ee
on e.employee_id = ee.reports_to
group by e.employee_id
order by e.employee_id
