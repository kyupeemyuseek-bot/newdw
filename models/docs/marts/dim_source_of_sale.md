{% docs dim_source_of_sale %}

# Dimension: Source of Sale

**Purpose:**

 - Dimension table that provides descriptive information about sources of sale.

**Usage:**

 - Join with fact tables (e.g. fact_reservations) to enrich records with source of sale details.
 - Enable reporting and filtering by source attributes.

**Key Columns:**

 - sourcecode: Surrogate/natural key, unique and not null.
 - description: Business-friendly label of the source of sale.
 - recdate: Timestamp indicating the record's last update.

{% enddocs %}
