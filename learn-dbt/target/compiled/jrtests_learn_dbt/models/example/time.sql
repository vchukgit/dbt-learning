


SELECT
  To_time(Concat(t_hour :: VARCHAR, ':', t_minute, ':', t_second)) TIME,
  current_date last_update_date,
  current_time last_update_time
FROM
  "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."TIME_DIM"
WHERE
  TIME <= current_time
ORDER  BY TIME DESC

