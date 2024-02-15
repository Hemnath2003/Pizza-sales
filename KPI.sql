-- Kpi's requirement price) as Total_revenue from pizza;
select (sum(total_price) / count(distinct order_id)) as Average_order from pizza;
select sum(quantity) as Total_pizza_sold from pizza;
select count(distinct order_id) as Total_order from pizza;
select cast(sum(quantity) as decimal(10,2)) /
cast(count(distinct order_id) as decimal(10,2))as Average_pizza_per_order from pizza;
