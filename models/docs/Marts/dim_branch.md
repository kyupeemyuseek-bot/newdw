{% docs dim_branch %}

# Dimension: Branch

**Purpose:**  
Dimension table that provides descriptive and location-based information about branches.

**Usage:**  
- Join with fact tables (e.g.`fact_reservations`) to enrich records with branch details.  
- Enable reporting and filtering by branch attributes such as city, province, or cluster.  

**Key Columns:**  
- `branchid`: Surrogate/natural key, unique and not null.  
- `description`: Business-friendly label of the branch.  
- `cluster`: Branch cluster or grouping.  
- `city`: City where the branch is located.  
- `province`: Province or state of the branch.  
- `zipcode`: Postal code for the branch location.  

{% enddocs %}
