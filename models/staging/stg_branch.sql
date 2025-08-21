-- models/staging/stg_branch.sql
with source as (
    select *
    from MSITDBTSNOWGIT.SEEDS.branch
),

-- Deduplicate: keep latest CreatedDate per branchid
deduped as (
    select *
    from source
    qualify row_number() over (
        partition by branchid
        order by branchid
    ) = 1
),

-- Final column selection
renamed as (
    select
        branchid,
        trim(Description) as description,
        trim(Cluster)     as cluster,
        trim(City)        as city,
        trim(Province)    as province,
        trim(Zipcode)     as zipcode
    from deduped
)

select *
from renamed
