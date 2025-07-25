-- 2025. 07. 25

-- SOL_1
select count(a.fish_type) as FISH_COUNT from FISH_INFO a
join FISH_NAME_INFO b on a.fish_type = b.fish_type
where b.fish_name = 'BASS' or b.fish_name = 'SNAPPER';

-- SOL_2
select count(*) as FISH_COUNT
from FISH_INFO join FISH_NAME_INFO
on FISH_INFO.FISH_TYPE = FISH_NAME_INFO.FISH_TYPE
where FISH_NAME in ('BASS', 'SNAPPER');

