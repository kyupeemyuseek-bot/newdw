{% docs stg_unittype %}

# Staging: Unit Type

**Purpose:**

 - Standardized staging model for unit type reference data sourced from the seed or raw table.

**Business Notes:**

 - Normalizes column names to snake_case.
 - Prepares data for dimensional modeling in dim_unittype.
 - Ensures deduplication and retains the latest record per unittypecode.

**Key Columns:**

 - unittypecode: Unique identifier for the unit type.
 - description: Text label describing the unit type.
 - recdate: Timestamp of the latest record update.

**Data Quality Rules:**

 - unittypecode must be unique and not null.
 - description should not be null.
 - recdate should be a valid timestamp.

{% enddocs %}