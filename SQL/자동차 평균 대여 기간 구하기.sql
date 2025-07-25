-- 2025. 07. 25

-- SOL_1
SELECT CAR_ID, round(avg(date(END_DATE) - date(start_date)), 1) as AVERAGE_DURATION from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by CAR_ID
having AVERAGE_DURATION >= 7
order by AVERAGE_DURATION desc, CAR_ID desc