{{config(materialized='table')}}

select o_orderdate,
       o_totalprice,
       sum(o_totalprice)
           over (order by o_orderdate
               rows between unbounded preceding and current row)
               as "ORDERS SO FAR THIS WEEK"
    from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS"
    order by o_orderdate
