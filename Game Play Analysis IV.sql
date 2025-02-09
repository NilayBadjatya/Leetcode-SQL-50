# Write your MySQL query statement below
select ROUND(COUNT(player_id) / (select COUNT(DISTINCT player_id) from Activity), 2) as fraction
from Activity
where (player_id, event_date) in (
    select player_id, min(event_date) + interval 1 day
    from Activity
    group by player_id
)
