# Fact: Reservations

**Purpose:**  
Central fact table capturing reservation transactions.  

**Grain:**  
One row per reservation transaction (`transaction_id`).  

**Business Notes:**  
- Contains both business identifiers and foreign keys to dimensions.  
- Stores financial measures such as prices, taxes, discounts, and contract values.  

**Key Columns:**  
- `transaction_id`: Primary key for each reservation.  
- `branch_id`, `client_id`, `unit_code`: Dimension keys.  
- `status_code`, `finance_type_code`, `source_code`: Classification attributes.  
- `lot_price`, `vat`, `gross_lot_price`, `sales_disc`, `net_lot_price`, `misc`, `tcp`: Financial measures.  
- `reservation_date`: Event timestamp.  

**Data Quality Rules:**  
- All key columns must be not null.  
- `transaction_id` must be unique.  
- Reservation date must always be present.  
