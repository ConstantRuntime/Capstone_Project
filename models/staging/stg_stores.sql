select 
    store as store_id,
        CASE 
            WHEN type = 'A' THEN 'big'
            WHEN type = 'B' THEN 'medium'
            WHEN type = 'C' THEN 'small'
        END AS type,
    size as size
from {{ source('walmart_sales','stores')}}