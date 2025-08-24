{% docs dim_unittype %}

# Dimension: Unit Type

**Purpose:**

 - Dimension table that provides descriptive information about unit types.

**Usage:**

 - Join with fact tables (e.g. dim_unitinventory, fact_reservations) to enrich records with unit type details.
 - Enable reporting and filtering by unit type attributes.

**Key Columns:**

 - unittypecode: Surrogate/natural key, unique and not null.
 - description: Business-friendly label of the unit type.
 - recdate: Timestamp of the latest update.

{% enddocs %}