-- models/marts/dim_branch.sql
select 
    BranchID,
    City,
    Cluster,
    Description,
    Province,
    ZipCode
from {{ ref('stg_branch') }}