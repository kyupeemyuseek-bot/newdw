{% docs dim_financingtype %}

# Dimension: Financing Type

**Purpose:**

 - Dimension table that provides descriptive information about financing types.

**Usage:**

 - Join with fact tables (e.g. fact_reservations) to enrich records with financing type details.
 - Enable reporting and filtering by financing type attributes.

**Key Columns:**

 - fintypecode: Surrogate/natural key, unique and not null.
 - description: Business-friendly label of the financing type.
 - recdate: Timestamp indicating the record's last update.

{% enddocs %}