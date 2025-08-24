{% snapshot dim_unittype_snapshot %}
{{
    config(
        target_schema='snapshots',
        unique_key='UNITTYPE',
        strategy='check',
        check_cols=[
            'DESCRIPTION',
            'RECDATE'
        ]
    )
}}

select
    UNITTYPE,
    DESCRIPTION,
    RECDATE
from {{ ref('stg_unittype') }}

{% endsnapshot %}
