{{config(materialized='table')}}

with orders as (

  select * from {{source('sample','orders')}}

)


select o_orderdate,
       o_totalprice,
       sum(o_totalprice)
           over (order by o_orderdate
               rows between unbounded preceding and current row)
               as "ORDERS SO FAR THIS WEEK"
    from orders


    {%if target.name =='dev' %}
    where year(o_orderdate) = 1996
    {%endif%}

    order by o_orderdate
