-- models/marts/dim_account_status.sql
select
    status_code,
    status_description,
    created_date
from {{ ref('stg_account_status') }}