# Staging: Reservation Header

**Purpose:**  
Staging model for reservation header data from source system.  

**Business Notes:**  
- Represents a single reservation transaction.  
- Provides identifiers linking to clients, branches, and statuses.  

**Key Columns:**  
- `transaction_id`: Primary key.  
- `branch_id`: Identifier for branch.  
- `reservation_date`: Timestamp reservation was created.  
- `client_id`: Foreign key to client dimension.  
- `status_code`: Reservation status code.  
- `lot_price`: Lot price before taxes/discounts.  
- `tcp`: Total contract price.  

**Data Quality Rules:**  
- `transaction_id` must be unique and not null.  
- `reservation_date` cannot be null.  
