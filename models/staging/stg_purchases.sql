with source as (
    select * from {{ source('raw','raw_purchases') }}
)

select 
     id as purchase_id
    ,user_id
    ,datetime as order_date
    ,item_id
    ,state
from source 
where id is not null