-- 2025. 07. 28

-- SOL_1
SELECT a.BOOK_ID, b.AUTHOR_NAME, date_format(a.PUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE from BOOK a
join AUTHOR b on a.AUTHOR_ID = b.AUTHOR_ID
where a.CATEGORY = '경제'
order by PUBLISHED_DATE

-- SOL_2


