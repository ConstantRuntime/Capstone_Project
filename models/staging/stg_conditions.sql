SELECT 
    store as store_id,
    date,
    temperature,
    fuel_price,
        CASE   
            WHEN mark_down_1 = 'NA' THEN NULL
            ELSE mark_down_1
        END AS mark_down_1,
        CASE   
            WHEN mark_down_2 = 'NA' THEN NULL
            ELSE mark_down_2
        END AS mark_down_2,
        CASE   
            WHEN mark_down_3 = 'NA' THEN NULL
            ELSE mark_down_3
        END AS mark_down_3,
        CASE   
            WHEN mark_down_4 = 'NA' THEN NULL
            ELSE mark_down_4
        END AS mark_down_4,
        CASE   
            WHEN mark_down_5 = 'NA' THEN NULL
            ELSE mark_down_5
        END AS mark_down_5,
    cpi,
    unemployment,
    is_holiday
FROM {{ source('walmart_sales','conditions')}}