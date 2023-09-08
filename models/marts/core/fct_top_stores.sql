with department_stores as (
    select * from {{ref('int_department_stores')}}
)

select 
    store_id,
    is_holiday 
    weekly_sales,
    date,
    type,
    size
from department_stores