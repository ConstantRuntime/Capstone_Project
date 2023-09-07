with departments as (
    select * from {{ref('stg_departments')}}
),

stores as ( 
    select* from {{ref('stg_stores')}}
),

final as (
    select
        dept_id,
        stores.store_id,
        departments.is_holiday,
        weekly_sales,
        departments.date,
        dept_name,
        type,
        size
    from departments
    join stores
    on stores.store_id = departments.store_id
)

select * from final