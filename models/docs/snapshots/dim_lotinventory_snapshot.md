{% docs dim_lotinventory_snapshot %}
The **Lot Inventory Snapshot** captures historical changes to unit inventory
from the `stg_lotinventory` model.

- **Tracking strategy:** `check` strategy on all attributes except the unique key  
- **Unique key:** `UNIT_CODE`  
- **Check columns:** BRANCH_ID, UNIT_TYPE, UNIT_CLASS, PHASE, SECTION, BLOCK, LOT, UNIT_COST, RECORDED_BY, RECORD_DATE  

This snapshot enables tracking of unit-level changes over time, supporting
auditing and historical analysis of inventory attributes.
{% enddocs %}
