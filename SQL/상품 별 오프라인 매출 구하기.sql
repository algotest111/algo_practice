-- 2025. 07. 30

-- SOL_1


-- SOL_2
SELECT p.PRODUCT_CODE, sum(p.price * o.sales_amount) as SALES
from PRODUCT p join OFFLINE_SALE o
on p.PRODUCT_ID = o.PRODUCT_ID
group by p.PRODUCT_CODE
order by SALES desc, p.PRODUCT_CODE;