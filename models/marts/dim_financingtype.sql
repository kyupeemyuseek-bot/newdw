-- Dimension: Financing Type
with base as (
    select *
    from {{ ref('stg_financingtype') }}
)

select
    financing_type_code   as financing_type_key,   -- surrogate/business key
    financing_type_code,
    financing_type_description,
    record_date
from base