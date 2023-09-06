SELECT 
    store as store_id,
    date,
    temperature,
    fuel_price,
    mark_down_1,
    mark_down_2,
    mark_down_3,
    mark_down_4,
    mark_down_5,
    cpi,
    unemployment,
    is_holiday
FROM raw.walmart_sales.conditions
