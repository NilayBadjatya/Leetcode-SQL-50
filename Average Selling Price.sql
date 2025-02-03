# Write your MySQL query statement below
select p.product_id, COALESCE(ROUND(SUM(p.price*s.units) / SUM(s.units), 2), 0) as average_price
from Prices p
left join UnitsSold s
on p.product_id = s.product_id AND s.purchase_date >= p.start_date AND s.purchase_date <= p.end_date
group by p.product_id

/* We can also write "p.purchase_date BETWEEN s.start_date AND s.end_date" instead of "s.purchase_date >= p.start_date AND s.purchase_date <= p.end_date"*/
