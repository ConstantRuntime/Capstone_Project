with departments as (
    select * from {{ref('int_departments')}}
),

final as(
    SELECT 
        DEPT_ID,
        STORE_ID,
        IS_HOLIDAY,
        WEEKLY_SALES,
        DATE,
        dept_name
    FROM departments
)

select * from final
