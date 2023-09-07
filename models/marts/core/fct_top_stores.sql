with department_stores as (
    select * from {{ref('int_department_stores')}}
)

select * from department_stores