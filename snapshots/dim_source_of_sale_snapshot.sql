{% snapshot dim_source_of_sale_snapshot %}
{{
    config(
        target_schema='snapshots',
        unique_key='SOURCE_CODE',
        strategy='check',
        check_cols=[
            'SOURCE_DESCRIPTION',
            'RECORD_DATE'
        ]
    )
}}

select
    SOURCE_CODE,
    SOURCE_DESCRIPTION,
    RECORD_DATE
from {{ ref('stg_source_of_sale') }}

{% endsnapshot %}
