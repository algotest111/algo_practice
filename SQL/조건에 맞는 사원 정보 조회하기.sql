-- 2025. 07. 30

-- SOL_1
select b.SCORE, a.EMP_NO, a.EMP_NAME, a.POSITION, a.EMAIL from HR_EMPLOYEES a
join
(
    select EMP_NO, sum(SCORE) as SCORE from HR_GRADE
    group by EMP_NO
) b on a.EMP_NO = b.EMP_NO
where b.score = 
(
select max(score) from
    (
        SELECT SUM(SCORE) AS score
        FROM HR_GRADE
        GROUP BY EMP_NO
    ) x
)

-- SOL_2
select sum(g.SCORE) as SCORE, e.EMP_NO, e.EMP_NAME, e.POSITION, e.EMAIL
from HR_EMPLOYEES e join HR_GRADE g
on e.EMP_NO = g.EMP_NO
where g.YEAR = 2022
group by e.EMP_NO
order by SCORE desc limit 1