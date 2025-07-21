### 2025. 07. 21

#### SOL_1
SELECT MEMBER_ID, MEMBER_NAME, GENDER, date_format(DATE_OF_BIRTH, '%Y-%m-%d') as DATE_OF_BIRTH
from MEMBER_PROFILE
where GENDER = 'W' and DATE_OF_BIRTH like '%-03-%' and TLNO is not null
order by MEMBER_ID;

#### SOL_2