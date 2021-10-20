with source as (
    select * from {{ source('raw','raw_items') }}
)

select 
     id as item_id
    ,cat as category
    ,price 
from source
where id is not null