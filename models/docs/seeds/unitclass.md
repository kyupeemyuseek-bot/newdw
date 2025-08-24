{% docs unitclass %}

# Unit Class Seed
**Purpose:**

 - Reference data for unit classifications, loaded from a CSV seed file.

**Business Notes:**

 - Each unit class is uniquely identified by UnitClassCode.
 - Description provides a label or name for the unit class.
 - RecDate indicates when the record was last updated or added.

**Data Quality Rules:**

 - UnitClassCode must be unique and not null.
 - Description should be provided for all records.
 - RecDate should reflect the latest update timestamp.

{% enddocs %}