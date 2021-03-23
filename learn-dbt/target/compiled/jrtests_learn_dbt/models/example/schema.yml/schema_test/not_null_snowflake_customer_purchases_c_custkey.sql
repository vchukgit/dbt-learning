
    
    



select count(*) as validation_errors
from analytics.dbt_venu.snowflake_customer_purchases
where c_custkey is null


