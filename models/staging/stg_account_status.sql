with source as (
    select * from AccountStatus
),

renamed as (
    select
        cast(StatusCode as integer)       as status_code,
        trim(Description)                 as status_description,
        cast(CreatedDate as date)         as created_date
    from source
)

select * from renamed
