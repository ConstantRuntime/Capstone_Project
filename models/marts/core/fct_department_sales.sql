with department_sales as (
    select * from {{ref('int_departments')}}
)

select * from department_sales
