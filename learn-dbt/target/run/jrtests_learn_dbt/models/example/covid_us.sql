

      create or replace transient table analytics.dbt.covid_us  as
      (


 select
   *
 from
  "COVID19_BY_STARSCHEMA"."PUBLIC"."JHU_COVID_19"
 where
    date <=current_date
  and
    country_region = 'United States'


      );
    