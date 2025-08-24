{% docs dim_unitclass %}

# Dimension: Unit Class

**Purpose:**

 - Dimension table that provides descriptive information about unit classifications.

**Usage:**

 - Join with fact tables (e.g. dim_lotinventory, fact_reservations) to enrich records with unit class details.
 - Enable reporting and filtering by unit class attributes.

**Key Columns:**

 - unitclasscode: Surrogate/natural key, unique and not null.
 - description: Business-friendly label of the unit class.
 - recdate: Timestamp of the latest update.

{% enddocs %}