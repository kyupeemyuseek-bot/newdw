{% snapshot dim_lotinventory_snapshot %}
{{
    config(
        target_schema='snapshots',
        unique_key='UNIT_CODE',
        strategy='check',
        check_cols=[
            'BRANCH_ID',
            'UNIT_TYPE',
            'UNIT_CLASS',
            'PHASE',
            'SECTION',
            'BLOCK',
            'LOT',
            'UNIT_COST',
            'RECORDED_BY',
            'RECORD_DATE'
        ]
    )
}}

select
    UNIT_CODE,
    BRANCH_ID,
    UNIT_TYPE,
    UNIT_CLASS,
    PHASE,
    SECTION,
    BLOCK,
    LOT,
    UNIT_COST,
    RECORDED_BY,
    RECORD_DATE
from {{ ref('stg_lotinventory') }}

{% endsnapshot %}
