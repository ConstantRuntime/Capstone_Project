with departments as (
    select * from {{ref('stg_departments')}}
),

conditions as (
    select * from {{ref('stg_conditions')}}
),

final as (
    select 
        dept_id,
        departments.is_holiday,
        weekly_sales,
        departments.date,
        dept_name,
        temperature,
        fuel_price,
        mark_down_1,
        mark_down_2,
        mark_down_3,
        mark_down_4,
        mark_down_5,
        cpi,
        unemployment
    from departments
    join conditions 
    on departments.date = conditions.date
    
)

select * from final