{% docs source_reservationhdrfordemo %}

# Reservation Header (Demo Seed)

This is a **seed table** loaded from CSV into Snowflake under:

- **Database:** `MSITDBTSNOWGIT`  
- **Schema:** `SEEDS`  
- **Table:** `RESERVATIONHDRFORDEMO`

### Purpose
The table provides a small demo dataset (~1.5k rows) of reservation headers.  
It is used for testing, prototyping transformations, and validating dbt models without relying on production-sized data.

### Example Use Cases
- Joining with other reservation detail datasets in development.  
- Validating test queries and dbt models.  
- Demonstrating dbt seed functionality.

### Notes
- Data is static and comes from a CSV file in the `/seeds/` directory.  
- Intended for **demo and testing only** (not production data).  

{% enddocs %}
