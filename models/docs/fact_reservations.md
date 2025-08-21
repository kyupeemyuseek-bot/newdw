{% docs fact_reservations %}

# Fact: Reservations

**Grain:**  
One row per reservation transaction (`transaction_id`).

**Purpose:**  
Central fact capturing reservation transactions, identifiers, dimension keys, and financial measures.

**Key Columns:**  
- Keys: `transaction_id`, `branch_id`, `client_id`, `unit_code`
- Classifiers: `status_code`, `finance_type_code`, `source_code`
- Measures: `lot_price`, `vat`, `gross_lot_price`, `sales_disc`, `net_lot_price`, `misc`, `tcp`
- Time: `reservation_date`

**Data Quality Rules:**  
- All key columns must be not null.
- `transaction_id` must be unique.
- `reservation_date` must be present.

{% enddocs %}
