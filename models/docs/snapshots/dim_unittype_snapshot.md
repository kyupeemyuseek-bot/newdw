{% docs dim_unittype_snapshot %}
The **Unit Type Snapshot** tracks historical changes to the unit type
dimension (`dim_unittype` model).

- **Tracking strategy:** `check` strategy on `DESCRIPTION` and `RECDATE`  
- **Unique key:** `UNITTYPE`  

This snapshot allows monitoring how unit types and their descriptions evolve
over time, supporting audits and historical analysis.
{% enddocs %}
