-- models/demo/base_reservations.sql
{{ config(materialized='table') }}

select
    transactionno,
    branchid,
    try_to_date(reservationdate, 'MM/DD/YYYY') as reservation_date,
    financingtype,
    clientid,
    sourceofsale,
    statuscode,
    unitcode,
    lotprice,
    vat,
    grosslotprice,
    salesdisc,
    netlotprice,
    misc,
    tcp
from {{ source('seeds', 'RESERVATIONHDRFORDEMO') }}
