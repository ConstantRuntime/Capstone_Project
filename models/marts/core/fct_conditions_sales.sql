with department_conditions as (
    select * from {{ref('int_department_conditions')}}
)

select * from department_conditions