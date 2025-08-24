-- models/staging/stg_lotinventory.sql
with source as (
    select *
    from {{ ref('LotInventory') }}
),

-- Deduplicate: keep latest recdate per unitcode
deduped as (
    select *
    from source
    qualify row_number() over (
        partition by trim(unitcode)
        order by recdate desc
    ) = 1
),

-- Final column selection
renamed as (
    select
        trim(unitcode)            as unit_code,
        branchid                  as branch_id,
        trim(unittype)            as unit_type,
        trim(unitclass)           as unit_class,
        trim(phase)               as phase,
        trim(section)             as section,
        trim(block)               as block,
        trim(lot)                 as lot,
        unitcost                  as unit_cost,
        trim(recuser)             as recorded_by,
        cast(recdate as date)     as record_date
    from deduped
)

select *
from renamed