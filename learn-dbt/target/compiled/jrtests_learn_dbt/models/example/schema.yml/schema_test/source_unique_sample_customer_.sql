
    
    



select count(*) as validation_errors
from (

    select
        None

    from snowflake_sample_data.tpch_sf1.customer
    where None is not null
    group by None
    having count(*) > 1

) validation_errors


