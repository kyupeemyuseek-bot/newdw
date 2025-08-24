-- models/marts/dim_source_of_sale.sql
select
    source_code,
    source_description,
    record_date
from {{ ref('stg_source_of_sale') }}