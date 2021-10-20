with source as (
    select * from {{ source('raw','raw_users') }}
) 

select 
     id as user_id
    ,first as first_name
    ,last as last_name
    ,email
    ,lang as language
    ,deactivated
from source
