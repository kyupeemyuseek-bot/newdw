# Staging: Account Status

**Purpose:**  
Standardized staging model for account status reference data seeded from CSV.  

**Business Notes:**  
- Normalizes column names (snake_case).  
- Serves as the base layer for the account status dimension.  

**Key Columns:**  
- `status_code`: Unique identifier for the account status.  
- `status_description`: Human-readable description.  
- `created_date`: Original creation date.  

**Data Quality Rules:**  
- `status_code` must be unique and not null.  
- `status_description` should not be null.  
