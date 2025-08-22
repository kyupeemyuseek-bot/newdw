{% snapshot dim_account_status_snapshot %}
{{
    config(
        target_schema='snapshots',
        unique_key='status_code',
        strategy='check',
        check_cols=['status_description']
    )
}}

select
    status_code,
    status_description,
    created_date
from {{ ref('stg_account_status') }}

{% endsnapshot %}
