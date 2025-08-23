-- models/marts/fact_reservations.sql
{{ config(
    materialized = 'table',
    schema = 'marts'
) }}

with reservation as (
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
),

lotinventory as (
    select
        unit_code,
        unit_cost
    from {{ ref('stg_lotinventory') }}
)

select
    r.transaction_id,
    r.branch_id,
    r.client_id,
    r.unit_code,
    r.status_code,
    r.finance_type_code,
    r.source_code,
    r.lot_price,
    r.vat,
    r.gross_lot_price,
    r.sales_disc,
    r.net_lot_price,
    r.misc,
    r.tcp,
    r.reservation_date,

    -- new column
    (r.net_lot_price - li.unit_cost) as revenue

from reservation r
left join lotinventory li
    on r.unit_code = li.unit_code