-- models/marts/dim_unittype.sql
select 
    UnitType,
    description,
    recdate
from {{ ref('stg_unittype') }}