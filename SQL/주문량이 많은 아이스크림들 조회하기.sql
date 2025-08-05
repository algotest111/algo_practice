-- 2025. 08. 03

-- SOL_1
select a.FLAVOR from FIRST_HALF a
join
(select FLAVOR, sum(TOTAL_ORDER) as TOTAL_ORDER from july
group by FLAVOR) b
on a.FLAVOR = b.FLAVOR
order by (a.TOTAL_ORDER + b.TOTAL_ORDER) desc
limit 3

-- SOL_2
select j.FLAVOR 
from (select *
        from FIRST_HALF 

        UNION all

        select *
        from JULY) j
        
group by j.FLAVOR
having sum(j.TOTAL_ORDER) 
order by sum(j.TOTAL_ORDER)  desc
limit 3;