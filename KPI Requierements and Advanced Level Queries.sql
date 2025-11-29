-- INTERMEDIATE LEVEL QUERIES
select * from merged_table
--total riders per season
select season,count(riders) from merged_table group by season

--average price per rider type
select rider_type,AVG(revenue) from merged_table group by rider_type

--highest revenue hour
select top 1 hr, cast( SUM(revenue) as int ) as total_ from merged_table
group by hr order by total_ desc

-- total profit by weekday
with profit as (
select DATENAME(WEEKDAY, dteday) as weekday_, SUM(profit) as profit_ from merged_table group by dteday )
select weekday_,sum(profit_) from profit group by weekday_

--rider count trend per year
select yr as year_,COUNT(distinct riders) from merged_table group by yr order by yr

-- weekend vs weekday riders count
select
 case when weekday in(1,5) then 'weekday' else 'weekend' end as 'column', COUNT(distinct riders) from merged_table 
 group by case when weekday in(1,5) then 'weekday' else 'weekend' end

--top 5 most profitable months
with profitbymonth as (
select top 5 FORMAT(dteday, 'MMMM') as month_, cast(SUM(profit) AS int) as profit_ from merged_table
group by FORMAT(dteday, 'MMMM') order by profit_ desc )
select month_,  MAX(profit_) from profitbymonth 
group by month_

--revenue per rider type by season
select season, rider_type, SUM(revenue) as tot_revenue from merged_table
group by season,rider_type
order by season


