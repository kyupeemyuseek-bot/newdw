{% docs unittype %}

# Unit Type Seed
**Purpose:**
 - Reference data for unit types, loaded from a CSV seed file.

**Business Notes:**  

 - Each unit type is uniquely identified by UnitTypeCode.
 - Description provides a human-readable label for the unit type.
 - RecDate indicates when the record was last updated or added.


**Data Quality Rules:**

 - UnitTypeCode must be unique and not null.
 - Description should be provided for all records.
 - RecDate should reflect the latest update timestamp.


{% enddocs %}