-- 2025. 07. 26

-- SOL_1
select ROUTE, concat(round(sum(D_BETWEEN_DIST), 1), 'km') as TOTAL_DISTANCE	, concat(round(avg(D_BETWEEN_DIST), 2), 'km') as AVERAGE_DISTANCE from SUBWAY_DISTANCE
group by ROUTE
order by ROUTE desc;

-- SOL_2
select ROUTE, concat(round(sum(D_BETWEEN_DIST), 2), 'km') as TOTAL_DISTANCE, concat(round(avg(D_BETWEEN_DIST),2), 'km') as AVERAGE_DISTANCE
from SUBWAY_DISTANCE
group by ROUTE
order by TOTAL_DISTANCE desc;