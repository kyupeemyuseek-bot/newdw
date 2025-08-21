-- models/staging/stg_reservationhdr.sql

with source as (

    select * 
    from {{ source('snow_source', 'reservationhdr') }}

),

deduped as (
    select *
    from (
        select
            *,
            row_number() over (
                partition by TRANSACTIONNO
                order by RESERVATIONDATE desc
            ) as rn
        from source
    )
    where rn = 1
),

renamed as (

    select
        TRANSACTIONNO     as transaction_id,
        BRANCHID          as branch_id,
        RESERVATIONDATE   as reservation_date,
        FINTYPECODE       as finance_type_code,
        CLIENTID          as client_id,
        SOURCECODE        as source_code,
        STATUSCODE        as status_code,
        UNITCODE          as unit_code,
        LOTPRICE          as lot_price,
        VAT               as vat,
        GROSSLOTPRICE     as gross_lot_price,
        SALESDISC         as sales_disc,
        NETLOTPRICE       as net_lot_price,
        MISC              as misc,
        TCP               as tcp
    from deduped

)

select *
from renamed
