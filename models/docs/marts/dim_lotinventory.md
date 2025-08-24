{% docs dim_lotinventory %}

# Dimension: Lot Inventory
**Purpose:**
 - Dimension table that provides descriptive and location-based information about inventory units.

**Usage:**

 - Join with fact tables (e.g., fact_reservations) to enrich records with unit details.
 - Enable reporting and filtering by unit attributes such as location, type, and cost.

**Key Columns:**

 - unitcode: Unique identifier for the unit.
 - branchid: Foreign key linking to the branch dimension.
 - unittype: Type of unit (e.g., Lawn Lot, Garden Niche).
 - unitclass: Classification of the unit.
 - phase, section, block, lot: Location identifiers within the development.
 - unitcost: Cost of the unit.
 - recuser: User who recorded the entry.
 - recdate: Timestamp of the record.

**Data Quality Rules:**

unitcode must be unique and not null.
unitcost should be a valid, non-negative number.
recdate must be present and accurate.
{% enddocs %}