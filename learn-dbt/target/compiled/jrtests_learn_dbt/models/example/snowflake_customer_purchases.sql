


with sample_customer as (

  SELECT *
  FROM snowflake_sample_data.tpch_sf1.customer
),

sample_orders as (

    select *
    from snowflake_sample_data.tpch_sf1.orders
)




SELECT

  c.c_custkey,
  c.c_name,
  c.c_nationkey as nation,
  sum(o.o_totalprice) as total_order_price

-- from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER" c
from sample_customer c
LEFT JOIN
sample_orders o
--"SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" o

on c_custkey = o.o_custkey


  GROUP BY
   
     1
      , 
   
     2
      , 
   
     3
     
   
