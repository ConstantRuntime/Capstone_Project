select 
    *
from {{ ref('fct_conditions_sales' )}}
WHERE mark_down_1 IS NOT NULL
AND TRY_CAST(mark_down_1 AS INTEGER) IS NULL