
  create or replace  view analytics.dbt_venu.dates  as (
    


SELECT * 
FROM
  "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."DATE_DIM"
WHERE
  d_date <= current_date



  );
