-- models/demo/clustered_reservations.sql
{{ config(
    materialized='table',
    cluster_by=['reservationdate', 'branchid']
) }}

select
    transactionno,
    branchid,
    clientid,
    reservationdate,
    lotprice,
    vat,
    grosslotprice
from {{ source('seeds', 'RESERVATIONHDRFORDEMO') }}
