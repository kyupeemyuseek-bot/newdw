{% docs account_status %}

# Account Status Seed

**Purpose:**  
Reference data for account statuses, loaded from a CSV seed file.

**Business Notes:**  
- Each status is uniquely identified by `StatusCode`.
- `Description` provides the human-readable meaning.
- `CreatedDate` is when the status was first introduced in the source system.

**Data Quality Rules:**  
- `StatusCode` must be unique and not null.
- `Description` should always be provided.

{% enddocs %}
