{% docs dim_source_of_sale_snapshot %}
The **Source of Sale Snapshot** tracks historical changes to the source of sale
dimension (`dim_source_of_sale` model).

- **Tracking strategy:** `check` strategy on `SOURCE_DESCRIPTION` and `RECORD_DATE`  
- **Unique key:** `SOURCE_CODE`  

This snapshot enables you to see how source-of-sale codes and descriptions evolve
over time, supporting auditing and analysis of sales source data.
{% enddocs %}
