
    
    



select count(*) as validation_errors
from analytics.dbt_venu.cumulative_orders_by_date
where o_orderdate is null


