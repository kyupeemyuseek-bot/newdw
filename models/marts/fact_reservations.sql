-- models/marts/fact_reservations.sql
{{ config(
    materialized = 'table',
    schema = 'marts'
) }}

select
    -- business identifiers
    transactionno,
    branchid,
    clientid,
    unitcode,

    -- dimension keys (foreign keys)
    statuscode,
    fintypecode,
    sourcecode,

    -- measures
    lotprice,
    vat,
    grosslotprice,
    salesdisc,
    netlotprice,
    misc,
    tcp,

    -- dates
    reservationdate

from {{ ref('stg_reservationhdr') }}
