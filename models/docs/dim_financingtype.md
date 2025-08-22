{% docs dim_financingtype %}

### Financing Type Dimension

The **Financing Type Dimension** provides a standardized set of financing options offered to clients.  
It is used in reporting and analysis of reservations, transactions, and revenue breakdowns.  

**Columns:**
- **financing_type_key**: Surrogate/business key for the financing type.
- **financing_type_code**: Short code representing the financing type (e.g., `DEF`, `INH`, `SPOT`).
- **financing_type_description**: Business-friendly description of the financing type.
- **record_date**: The date when the financing type was added/recorded.

**Business Use Cases:**
- Slice reservation or sales facts by financing type.
- Identify revenue contributions of different financing schemes.
- Track adoption of financing types over time.

{% enddocs %}