with department_stores as (
    select * from {{ref('int_department_stores')}}
)

select 
    store_id,
    weekly_sales,
    date,
    type,
    size,
    is_holiday 
    
from department_stores