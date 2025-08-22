-- models/staging/stg_financingtype.sql
with source as (
    select *
    from {{ ref('FinancingType') }}
),

-- Deduplicate: keep latest recdate per fintype
deduped as (
    select *
    from source
    qualify row_number() over (
        partition by trim(FinancingType)
        order by recdate desc
    ) = 1
),

-- Final column selection
renamed as (
    select
        trim(FinancingType)         as financing_type_code,
        trim(description)           as financing_type_description,
        cast(recdate as date)       as record_date
    from deduped
)

select *
from renamed
