{% docs seed_source_of_sale %}

# Source of Sale Seed
**Purpose:**
 - Reference data for sources of sale, loaded from a CSV seed file.

**Business Notes:**

 - Each source of sale is uniquely identified by sourcecode.
 - description provides a label or name for the source (e.g., online, branch, agent).
 - recdate indicates when the record was created or last updated.

**Data Quality Rules:**

 - sourcecode must be unique and not null.
 - description should be provided for all records.
 - recdate should reflect the latest update timestamp.

{% enddocs %}