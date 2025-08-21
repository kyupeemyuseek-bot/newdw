-- models/demo/reservation_summary_mv.sql
{{ config(
    materialized='materialized_view',
    schema='demo'
) }}

select
    branchid,
    date_trunc('month', reservation_date) as month,
    count(distinct transactionno) as reservation_count,
    sum(grosslotprice) as total_gross,
    sum(netlotprice) as total_net,
    sum(tcp) as total_tcp
from {{ ref('base_reservations') }}
group by branchid, month
