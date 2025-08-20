with source as (
    select * from {{ ref('AccountStatus') }}
),

deduped as (
    select *
    from source
    qualify row_number() over (
        partition by StatusCode 
        order by CreatedDate desc
    ) = 1
),

renamed as (
    select
        cast(StatusCode as integer)       as status_code,
        trim(Description)                 as status_description,
        cast(CreatedDate as date)         as created_date
    from deduped
)

select * from renamed
