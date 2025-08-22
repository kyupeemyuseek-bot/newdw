-- models/marts/dim_unitclass.sql
select 
    Unitclass,
    description,
    recdate
from {{ ref('stg_unitclass') }}