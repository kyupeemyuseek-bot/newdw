
-- models/staging/stg_unitclass.sql

with source as (
    select *
    from {{ ref('UnitClass') }}
),

-- Deduplicate: keep latest recdate per unitclass
deduped as (
    select *
    from source
    qualify row_number() over (
        partition by unitclass
        order by recdate desc
    ) = 1
),

-- Final column selection
renamed as (
    select
        trim(unitclass)            as unitclass,
        trim(description)          as description,
        cast(recdate as date)      as recdate
    from deduped
)

select *
from renamed
