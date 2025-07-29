-- 2025. 07. 29

-- SOL_1


-- SOL_2
select YEAR(YM) as YEAR, round(AVG(PM_VAL1),2) as 'PM10', round(AVG(PM_VAL2),2) as 'PM2.5'
from AIR_POLLUTION
where LOCATION1 = '경기도' and LOCATION2 = '수원'
group by YEAR(YM) 
order by YEAR;