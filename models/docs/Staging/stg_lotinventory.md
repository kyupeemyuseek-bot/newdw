{% docs stg_lotinventory %}

# Staging: Lot Inventory
**Purpose:**

 - Standardized staging model for lot inventory data sourced from the lotinventory table.

**Business Notes:**

 - Normalizes column names to snake_case.
 - Serves as the base layer for the lot inventory dimension (dim_lotinventory).
 - Ensures deduplication and consistency of unit records.

**Key Columns:**

 - unitcode: Unique identifier for the unit.
 - branchid: Foreign key linking to the branch dimension.
 - unittype: Type of unit (e.g., residential, commercial).
 - unitclass: Classification of the unit.
 - phase, section, block, lot: Location identifiers within the development.
 - unitcost: Cost of the unit.
 - recuser: User who recorded the entry.
 - recdate: Timestamp of the record.

**Data Quality Rules:**

 - unitcode must be unique and not null.
 - unitcost should be a valid, non-negative number.
 - recdate must be present and accurate.
 - branchid should correspond to a valid branch.

{% enddocs %}