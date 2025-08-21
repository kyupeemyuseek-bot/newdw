{% docs dim_account_status %}

# Dimension: Account Status

**Purpose:**  
Dimension table that provides descriptive information about account statuses.

**Usage:**  
- Join with facts (e.g., `fact_reservations`) to interpret `status_code`.
- Report by status descriptions instead of codes.

**Key Columns:**  
- `status_code`: Natural key, unique and not null.
- `status_description`: Business-friendly label.
- `created_date`: When the status was created.

{% enddocs %}
