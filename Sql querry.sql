-- CHART REQUIREMENT -- 
use pizza;
select * from pizza;

select pizza_category ,sum(total_price)*100/(select sum(total_price) from pizza)
from pizza
group by pizza_category;

select pizza_size ,sum(total_price)*100/(select sum(total_price) from pizza ) as PCT
from pizza 
 group by pizza_size 
 order by PCT;

select  pizza_name, sum(total_price) as Total_revenue from pizza
group by pizza_name
order by Total_revenue desc limit 5;