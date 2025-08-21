with source as (
    select * 
    from {{ source('snow_source', 'reservationhdr') }}
),

deduped as (
    select
        *,
        row_number() over (
            partition by TRANSACTION_ID 
            order by RESERVATION_DATE desc
        ) as row_num
    from source
),

renamed as (
    select
        TRANSACTION_ID    as transaction_id,
        BRANCH_ID         as branch_id,
        RESERVATION_DATE  as reservation_date,
        FINANCE_TYPE      as finance_type,
        CLIENT_ID         as client_id,
        SOURCE_CODE       as source_code,
        STATUS_CODE       as status_code,
        UNIT_CODE         as unit_code,
        LOTPRICE          as lot_price,
        VAT               as vat,
        GROSSLOTPRICE     as gross_lot_price,
        SALESDISC         as sales_disc,
        NETLOTPRICE       as net_lot_price,
        MISC              as misc,
        TCP               as tcp
    from deduped
    where row_num = 1
)

select * from renamed
