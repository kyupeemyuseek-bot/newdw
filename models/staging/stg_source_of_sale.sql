-- models/staging/stg_source_of_sale.sql

with source as (
    select *
    from {{ ref('SourceofSale') }}
),

-- Deduplicate: keep latest recdate per sourcecode
deduped as (
    select *
    from source
    qualify row_number() over (
        partition by trim(sourcecode)
        order by recdate desc
    ) = 1
),

-- Final column selection
renamed as (
    select
        trim(sourcecode)                as source_code,
        trim(description)               as source_description,
        cast(recdate as timestamp)      as record_date
    from deduped
)

select *
from renamed
