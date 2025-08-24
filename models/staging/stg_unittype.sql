-- models/staging/stg_unittype.sql

with source as (
    select *
    from {{ ref('UnitType') }}
),

-- Deduplicate: keep latest recdate per unittypecode
deduped as (
    select *
    from source
    qualify row_number() over (
        partition by trim(unittype)
        order by recdate desc
    ) = 1
),

-- Final column selection
renamed as (
    select
        trim(unittype)        as unittype,        -- keep as string
        trim(description)     as description,
        cast(recdate as date) as recdate
    from deduped
)

select *
from renamed