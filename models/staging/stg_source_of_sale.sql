-- models/staging/stg_sourceof_sale.sql
with source as (
    select *
    from {{ ref('SourceofSale') }}
),

prepped as (
    select
        trim(sourcecode) as sourcecode,
        trim(description) as description,
        coalesce(
            try_to_timestamp_ntz(trim(recdate)::string, 'MM/DD/YYYY HH24:MI:SS'),
            try_to_timestamp_ntz(trim(recdate)::string, 'MM/DD/YYYY HH24:MI'),
            try_to_timestamp_ntz(trim(recdate)::string, 'MM/DD/YYYY')
        ) as rec_ts
    from source
),

deduped as (
    select *
    from prepped
    qualify row_number() over (
        partition by sourcecode
        order by rec_ts desc
    ) = 1
)

select
    sourcecode as source_code,
    description as source_description,
    to_date(rec_ts) as record_date
from deduped
