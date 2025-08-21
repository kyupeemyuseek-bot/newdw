-- models/marts/fact_reservations.sql
{{ config(
    materialized = 'table',
    schema = 'marts'
) }}

select
    -- business identifiers
    transaction_id,
    branch_id,
    client_id,
    unit_code,

    -- dimension keys (foreign keys)
    status_code,
    finance_type_code,
    source_code,

    -- measures
    lot_price,
    vat,
    gross_lot_price,
    sales_disc,
    net_lot_price,
    misc,
    tcp,

    -- dates
    reservation_date

from {{ ref('stg_reservationhdr') }}
