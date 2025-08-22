{% docs seed_financingtype %}

# Financing Type Seed

**Purpose:**    

 - Reference data for financing types, loaded from a CSV seed file.

**Business Notes:**

 - Each financing type is uniquely identified by fintypecode.
 - description provides a human-readable label for the financing type.
 - recdate indicates the record creation or update timestamp.

**Data Quality Rules:**

 - fintypecode must be unique and not null.
 - description should be provided for all records.
 - recdate should reflect the latest update timestamp.

{% enddocs %}