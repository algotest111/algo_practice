-- 2025. 07. 25

-- SOL_1
SELECT CAR_ID, round(avg(date(END_DATE) - date(start_date)), 1) as AVERAGE_DURATION from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by CAR_ID
having AVERAGE_DURATION >= 7
order by AVERAGE_DURATION desc, CAR_ID desc

-- SOL_2
select CAR_ID , round(avg(DATEDIFF(end_date, start_date)),1) as AVERAGE_DURATION
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by CAR_ID
having avg(DATEDIFF(end_date, start_date)) >= 7
order by AVERAGE_DURATION desc, car_id desc;

-- ANSWER(datediff에 +1을 해줘야함)
select CAR_ID , round(avg(DATEDIFF(end_date, start_date)+1),1) as AVERAGE_DURATION
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by CAR_ID
having AVERAGE_DURATION >= 7
order by AVERAGE_DURATION desc, car_id desc;