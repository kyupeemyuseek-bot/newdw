{% docs dim_financingtype_snapshot %}

### Financing Type Snapshot

This snapshot captures historical versions of the **Financing Type Dimension**.  
It is useful for slowly changing dimension analysis (Type 2), where changes to descriptions or attributes are preserved over time.  

- **financing_type_code**: Unique business code  
- **financing_type_description**: Description at that point in time  
- **dbt_valid_from / dbt_valid_to**: Time range when this version was valid  

**Business Use Cases:**
- Analyze how financing types evolved over time
- Attribute transactions to the correct historical financing type description

{% enddocs %}