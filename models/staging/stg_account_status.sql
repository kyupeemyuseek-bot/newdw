-- models/staging/stg_account_status.sql
with source as (
    select *
    from {{ ref('AccountStatus') }}
),

-- Deduplicate: keep latest CreatedDate per StatusCode
deduped as (
    select *
    from source
    qualify row_number() over (
        partition by trim(StatusCode)
        order by CreatedDate desc
    ) = 1
),

-- Final column selection
renamed as (
    select
        trim(StatusCode)          as status_code,       -- keep as string
        trim(Description)         as status_description,
        cast(CreatedDate as date) as created_date
    from deduped
)

select *
from renamed