{% docs stg_unitclass %}

# Staging: Unit Class
**Purpose:**

 - Standardized staging model for unit class reference data sourced from the seed or raw table.

**Business Notes:**

 - Normalizes column names to snake_case.
 - Prepares data for dimensional modeling in dim_unitclass.
 - Ensures deduplication and retains the latest record per unitclasscode.

**Key Columns:**

 - unitclasscode: Unique identifier for the unit class.
 - description: Text label describing the unit class.
 - recdate: Timestamp of the latest record update.

**Data Quality Rules:**

 - unitclasscode must be unique and not null.
 - description should not be null.
 - recdate should be a valid timestamp.

{% enddocs %}