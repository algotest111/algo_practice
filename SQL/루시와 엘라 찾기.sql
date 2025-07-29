-- 2025. 07. 29

-- SOL_1
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE from ANIMAL_INS
where NAME in('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
order by ANIMAL_ID

-- SOL_2
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
from ANIMAL_INS
where NAME like 'Lucy' or NAME like 'Ella' or NAME like 'Pickle' or NAME like 'Rogan' or NAME like 'Sabrina' or NAME like 'Mitty'
order by ANIMAL_ID;

SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
from ANIMAL_INS
where NAME in ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
order by ANIMAL_ID;