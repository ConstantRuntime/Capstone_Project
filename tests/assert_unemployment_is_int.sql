select *
from {{ ref('fct_conditions_sales' )}}
WHERE TRY_CAST(unemployment AS NUMERIC) IS NULL