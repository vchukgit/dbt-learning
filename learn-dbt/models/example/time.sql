{{ config(materialzed='incremental',unique_key = 't_time')}}


SELECT
  To_time(Concat(t_hour :: VARCHAR, ':', t_minute, ':', t_second)) TIME,
  current_date last_update_date,
  current_time last_update_time
FROM
  "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."TIME_DIM"
WHERE
  TIME <= current_time
ORDER  BY TIME DESC

{% if is_incremental() %}
  and TIME > (select max(To_time(Concat(t_hour :: VARCHAR, ':', t_minute, ':', t_second)) TIME ) from {{ this }})
{% endif %}
