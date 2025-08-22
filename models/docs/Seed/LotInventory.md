{% docs LotInventory %}

# Lot Inventory Seed

**Purpose:**

 - Reference data for lot inventory, loaded from a CSV seed file.

**Business Notes:**

 - Each unit is uniquely identified by unitcode.
 - branchid links the unit to a specific branch.
 - unittype and unitclass describe the nature and classification of the unit.
 - phase, section, block, and lot provide location details within the development.
 - unitcost represents the financial value of the unit.
 - recuser and recdate track who recorded the data and when.

**Data Quality Rules:**

 - unitcode must be unique and not null.
 - unitcost should be a positive number.
 - recdate must be present and valid.
 - branchid should correspond to a valid branch.


{% enddocs %}