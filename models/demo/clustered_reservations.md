{% docs clustered_reservations %}

# Clustered Reservations

This model represents reservation transactions with clustering applied on **reservationdate** and **branchid**.  
The purpose of clustering is to improve query performance by optimizing micro-partition pruning in Snowflake.

## Business Purpose
- Track reservation transactions across branches and clients.
- Enable efficient filtering and aggregation by **reservationdate** and **branchid**.
- Provide measures for financial reporting (lot price, VAT, gross lot price).

## Notes
- `transactionno` is the business key and should be unique per reservation.
- Table is **materialized as a clustered table** in Snowflake via dbt.
- Ideal for demoing **query pruning** in Snowflake's Query Profile.

{% enddocs %}
