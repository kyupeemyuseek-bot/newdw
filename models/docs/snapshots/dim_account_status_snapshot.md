{% docs dim_account_status_snapshot %}

### Account Status Snapshot

This snapshot captures historical versions of the **Account Status Dimension**.  
It allows analysts to track changes in account status codes or descriptions over time, preserving history instead of overwriting values.

**Columns:**
- **status_code** → Business/natural key for the account status (e.g., `ACT`, `SUS`, `CLO`).  
- **status_description** → Human-readable description of the account status.  
- **created_date** → Date when the status was first created in the source system.  
- **dbt_valid_from / dbt_valid_to** → System-managed validity range for each snapshot record.  

**Business Use Cases:**
- Understand how account statuses evolved historically.  
- Attribute customer records or transactions to the correct status at the time of activity.  
- Perform slowly changing dimension (SCD Type 2) analysis.  

{% enddocs %}