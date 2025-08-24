-- models/marts/dim_lotinventory.sql
select
    unit_code,
    branch_id,
    unit_type,
    unit_class,
    phase,
    section,
    block,
    lot,
    unit_cost,
    recorded_by,
    record_date

from {{ ref('stg_lotinventory') }}