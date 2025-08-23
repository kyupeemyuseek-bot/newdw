{% snapshot dim_financingtype_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='financing_type_code',
      strategy='check',
      check_cols=['financing_type_description']
    )
}}

select
    financing_type_code,
    financing_type_description,
    record_date
from {{ ref('dim_financingtype') }}

{% endsnapshot %}