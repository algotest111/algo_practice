-- 2025. 07. 30

-- SOL_1


-- SOL_2
select sum(g.SCORE) as SCORE, e.EMP_NO, e.EMP_NAME, e.POSITION, e.EMAIL
from HR_EMPLOYEES e join HR_GRADE g
on e.EMP_NO = g.EMP_NO
where g.YEAR = 2022
group by e.EMP_NO
order by SCORE desc limit 1