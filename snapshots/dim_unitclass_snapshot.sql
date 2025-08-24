{% snapshot dim_unitclass_snapshot %}
{{
    config(
        target_schema='snapshots',
        unique_key='UNITCLASS',
        strategy='check',
        check_cols=[
            'DESCRIPTION',
            'RECDATE'
        ]
    )
}}

select
    UNITCLASS,
    DESCRIPTION,
    RECDATE
from {{ ref('stg_unitclass') }}

{% endsnapshot %}
