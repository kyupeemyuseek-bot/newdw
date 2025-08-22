-- models/marts/dim_financingtype.sql
select
    financing_type_code,
    financing_type_description,
    record_date
from {{ ref('stg_financingtype') }}
