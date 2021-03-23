

      create or replace transient table analytics.dbt_venu.cumulative_orders_by_date  as
      (

with orders as (

  select * from snowflake_sample_data.tpch_sf1.orders

)


select o_orderdate,
       o_totalprice,
       sum(o_totalprice)
           over (order by o_orderdate
               rows between unbounded preceding and current row)
               as "ORDERS SO FAR THIS WEEK"
    from orders


    
    where year(o_orderdate) = 1996
    

    order by o_orderdate
      );
    