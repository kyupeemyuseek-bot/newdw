{% docs stg_branch %}

# Staging: Branch

**Purpose:**  
Standardized staging model for branch reference data sourced from the branch table.

**Business Notes:**  
- Normalizes column names (snake_case).
- Serves as the base layer for the branch dimension (`dim_branch`).
- Deduplicates branches by keeping the latest record per branchid.

**Key Columns:**  
- `branchid`: Unique identifier for the branch.  
- `description`: Text description of the branch.  
- `cluster`: Grouping or cluster to which the branch belongs.  
- `city`: City where the branch is located.  
- `province`: Province or state where the branch is located.  
- `zipcode`: Postal code of the branch location.  

**Data Quality Rules:**  
- `branchid` must be unique and not null.  
- `description` should not be null.  

{% enddocs %}