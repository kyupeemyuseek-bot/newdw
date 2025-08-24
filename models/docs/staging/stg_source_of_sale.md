{% docs stg_source_of_sale %}

# Staging: Source of Sale

**Purpose:**

 - Standardized staging model for source of sale reference data sourced from the seed table.

**Business Notes:**

 - Normalizes column names to snake_case.
 - Serves as the base layer for the source of sale dimension (dim_sourceofsale).
 - Deduplicates records by keeping the latest entry per sourcecode.

**Key Columns:**

 - sourcecode: Unique identifier for the source of sale.
 - description: Text label describing the source.
 - recdate: Timestamp of the record.

**Data Quality Rules:**

 - sourcecode must be unique and not null.
 - description should not be null.

{% enddocs %}