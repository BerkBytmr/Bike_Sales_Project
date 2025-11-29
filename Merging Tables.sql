--MERGING TABLES ( with cte)
with merged_table_temp as (
select * from bike_share_yr_0
union all
select * from bike_share_yr_1 )


select dteday,season,m.yr,weekday,hr,rider_type,riders,price,COGS,--general columns
riders * price as revenue,
riders * price - COGS as profit
from merged_table_temp m 
left join cost_table c on m.yr = c.yr 



-----------------------------------------------------------------------------------------------------------

--MERGING TABLES PERMANENT
select dteday,season,merged.yr,weekday,hr,rider_type,riders,price,COGS, --normal columns
riders * price as revenue,
riders * price - COGS as profit
into merged_table
from (
select * from bike_share_yr_0 b0 union all select * from bike_share_yr_1 b1
)
as merged
left join 
cost_table c on c.yr = merged.yr

---------------------------------------------------------------------------------------------------------------

select * from merged_table -- and we have the merged table :)