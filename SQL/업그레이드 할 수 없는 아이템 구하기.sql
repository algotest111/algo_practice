-- 2025. 07. 31

-- SOL_1


-- SOL_2
select i.ITEM_ID, i.ITEM_NAME, i.RARITY
from ITEM_INFO i join ITEM_TREE t
on i.ITEM_ID = t.ITEM_ID
where i.ITEM_ID not in (select PARENT_ITEM_ID
                       from ITEM_TREE 
                       where PARENT_ITEM_ID is not null)
order by i.ITEM_ID DESC;