{% docs fact_reservations %}

# Factual: Reservation Header

**Purpose:**  
Staging model for reservation header data from the source system.

**Business Notes:**  
- Each row represents a reservation transaction.
- Links to clients, branches, and statuses.

**Key Columns:**  
- `transaction_id`: Primary key.
- `branch_id`: Branch identifier.
- `reservation_date`: Timestamp the reservation was created.
- `client_id`: Foreign key to client.
- `status_code`: Reservation status code.
- `lot_price`: Pre-tax/discount price.
- `tcp`: Total contract price.
- `revenue`: Renevue of the transaction.

**Data Quality Rules:**  
- `transaction_id` must be unique and not null.
- `reservation_date` cannot be null.

{% enddocs %}
