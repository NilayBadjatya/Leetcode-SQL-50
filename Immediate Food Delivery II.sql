# Write your MySQL query statement below
select ROUND(SUM(case when order_date = customer_pref_delivery_date then 1 else 0 end) * 100 / COUNT(customer_id), 2) as immediate_percentage 
from Delivery d
where order_date = (select min(order_date) from Delivery dd where d.customer_id = dd.customer_id)
