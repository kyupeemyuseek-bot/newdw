{% snapshot dim_branch_snapshot %}
{{
    config(
        target_schema='snapshots',
        unique_key='BRANCHID',
        strategy='check',
        check_cols=[
            'CITY',
            'CLUSTER',
            'DESCRIPTION',
            'PROVINCE',
            'ZIPCODE'
        ]
    )
}}

select
    BRANCHID,
    CITY,
    CLUSTER,
    DESCRIPTION,
    PROVINCE,
    ZIPCODE
from {{ ref('stg_branch') }}

{% endsnapshot %}
