{{ config(materialzed='incremental',unique_key = 'date')}}


 select
   *
 from
  "COVID19_BY_STARSCHEMA"."PUBLIC"."JHU_COVID_19"
 where
    date <=current_date
  and
    country_region = 'United States'

{% if is_incremental() %}
  and date > (select max(date) from {{ this }})
{% endif %}
