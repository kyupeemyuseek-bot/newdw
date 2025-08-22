{% docs stg_financingtype %}

# Staging: Financing Type

**Purpose:**

 - Standardized staging model for financing type reference data sourced from the seed table.

**Business Notes:**

 - Normalizes column names to snake_case.
 - Serves as the base layer for the financing type dimension (dim_financingtype).
 - Deduplicates records by keeping the latest entry per fintypecode.

**Key Columns:**

 - fintypecode: Unique identifier for the financing type.
 - description: Text label describing the financing type.
 - recdate: Timestamp of the record.

**Data Quality Rules:**

 - fintypecode must be unique and not null.
 - description should not be null.

{% enddocs %}