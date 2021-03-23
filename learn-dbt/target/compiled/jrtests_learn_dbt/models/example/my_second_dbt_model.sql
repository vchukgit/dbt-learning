-- Use the `ref` function to select from other models

select *
from analytics.dbt_venu.first_model
where id = 1