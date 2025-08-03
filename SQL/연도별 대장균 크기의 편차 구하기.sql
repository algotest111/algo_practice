-- 2025. 07. 31

-- SOL_1
select YEAR(a.DIFFERENTIATION_DATE) as YEAR, (b.MAX_SIZE_OF_COLONY - a.SIZE_OF_COLONY) as YEAR_DEV, a.ID from ECOLI_DATA a
join (
    select YEAR(DIFFERENTIATION_DATE) as YEAR, max(SIZE_OF_COLONY) as MAX_SIZE_OF_COLONY from ECOLI_DATA
    group by YEAR(DIFFERENTIATION_DATE)
) b on YEAR(a.DIFFERENTIATION_DATE) = b.YEAR
order by YEAR, YEAR_DEV

-- SOL_2
select d_sub.YEAR,  d_sub.max_size - D_main.SIZE_OF_COLONY as YEAR_DEV, D_main.ID
from ECOLI_DATA D_main join (select year(DIFFERENTIATION_DATE) as YEAR, max(SIZE_OF_COLONY) as max_size
                            from ECOLI_DATA 
                            group by YEAR) d_sub
on year(D_main.DIFFERENTIATION_DATE) = d_sub.YEAR
order by YEAR, YEAR_DEV;