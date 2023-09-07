-- select * from raw.walmart_sales.departments;

SELECT 
    DEPT as DEPT_ID,
    STORE as STORE_ID,
    IS_HOLIDAY,
    WEEKLY_SALES,
    DATE,
        CASE 
            WHEN DEPT_ID = 1.0 THEN 'Candy & Tobacco'
            WHEN DEPT_ID = 2.0 THEN 'Heath & Beauty Aids'
            WHEN DEPT_ID = 3.0 THEN 'Stationery'
            WHEN DEPT_ID = 4.0 THEN 'Household Paper'
            WHEN DEPT_ID = 5.0 THEN 'Media & Gaming'
            WHEN DEPT_ID = 6.0 THEN 'Cameras & Supplies'
            WHEN DEPT_ID = 7.0 THEN 'Toys'
            WHEN DEPT_ID = 8.0 THEN 'Pets & Supplies'
            WHEN DEPT_ID = 9.0 THEN 'Sporting Goods'
        END AS dept_name
FROM {{ source('walmart_sales','departments')}}