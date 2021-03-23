with sample_customer as (
  SELECT *
  FROM snowflake_sample_data.tpch_sf1.customer
)

select
  c_custkey,
  c_mktsegment,
  
  CASE
    WHEN c_mktsegment in ('BUILDING', 'HOUSEHOLD', 'FURNITURE')
      THEN 'segment_1'
    ELSE 'segment_2'
  END
 mkt_segment_adjusted,
  c_acctbal
from sample_customer