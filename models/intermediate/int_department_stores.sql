with departments as (
    select * from {{ref('stg_departments')}}
),

stores as ( 
    select* from {{ref('stg_stores')}}
),

final as (
    select
        dept_id,
        is_holiday,
        weekly_sales,
        date,
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
    join stores
    on stores.store_id = departments.store_id
)