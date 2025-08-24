{% docs dim_branch_snapshot %}
The **DIM_BRANCH Snapshot** tracks historical changes to the branch dimension
(`MARTS.DIM_BRANCH`) in Snowflake.

- **Tracking strategy:** `check` strategy on non-key attributes  
- **Unique key:** `BRANCHID`  
- **Check columns:** CITY, CLUSTER, DESCRIPTION, PROVINCE, ZIPCODE  

This snapshot allows you to see how branch attributes evolve over time.
It uses dbt’s system fields (`dbt_valid_from`, `dbt_valid_to`, `dbt_scd_id`) to manage versioning.
{% enddocs %}
