-- 2025. 07. 31

-- SOL_1


-- SOL_2
select DISTINCT d.ID, d.EMAIL, d.FIRST_NAME, d.LAST_NAME
from SKILLCODES s, DEVELOPERS d
where s.NAME in ('Python', 'C#') and s.CODE & d.SKILL_CODE > 0
order by d.ID;