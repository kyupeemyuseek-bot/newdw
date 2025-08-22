# dbt Project

Welcome to your new dbt project!  
This project transforms raw reservation and account data into analytics-ready tables and marts using **dbt** and **Snowflake**.

---

[![Deploy Pages](https://github.com/kyupeemyuseek-bot/newdw/actions/workflows/pubdbtdocs.yml/badge.svg)](https://github.com/kyupeemyuseek-bot/newdw/actions/workflows/pubdbtdocs.yml)


- 📊 [Data Quality Report](https://kyupeemyuseek-bot.github.io/newdw/dbt_data_quality_report.html)  
- 📚 [dbt Docs](https://kyupeemyuseek-bot.github.io/newdw/dbtdocs/)  

---

## 🚀 Project Overview
- **Warehouse:** Snowflake  
- **Tooling:** dbt Core  
- **Goal:** Build a modular transformation layer for reservations, clients, and related entities.  
- **Key Features:**  
  - Staging models to clean and standardize raw source data  
  - Fact and dimension models for analytics  
  - Data quality testing (`unique`, `not_null`)  
  - Experiments with **Snowflake materialized views**  
  - Data quality reporting script (`scripts/dq_report.py`)  

---

## 🗂️ Project Structure


/models
/staging        -- staging models (source → clean)
/marts          -- fact & dimension models
/demo           -- experimental models (clustering, materialized views)
/seeds            -- seed data for lookup tables
/macros           -- reusable SQL / Jinja macros
/tests            -- dbt tests
/scripts          -- helper scripts (e.g., dq\_report.py)



---

## ⚡ Setup Instructions

### 1. Prerequisites
- Python 3.8+  
- dbt Core installed (`pip install dbt-snowflake`)  
- Access to Snowflake warehouse  

### 2. Configure `profiles.yml`
Example:
yaml
my_project:
  target: dev
  outputs:
    dev:
      type: snowflake
      account: <your_account>
      user: <your_user>
      password: <your_password>
      role: <your_role>
      database: <your_db>
      warehouse: <your_wh>
      schema: analytics


### 3. Run dbt

bash
dbt run        # run all models
dbt run -m stg_reservationhdr   # run specific model
dbt test       # run tests




## 🧱 Models

### Staging

* `stg_reservationhdr` → cleans reservation header data
* `stg_account_status` → standardizes account status codes

### Marts

* `fact_reservations` → fact table with transaction and client identifiers, prices, and keys

### Demo / Experiments

* `clustered_reservations` → clustering by `reservation_date, branchid` (Snowflake feature)
* Materialized views (Snowflake only, not fully dbt-native)

---

## 🧪 Tests & Data Quality

* Schema tests: `unique`, `not_null` on key fields
* Custom data quality script: `scripts/dq_report.py` generates `dbt_data_quality_report.html`

---

## 📜 Change Log

### August 20, 2025

* Added staging model `stg_reservationhdr`
* Created unique & not\_null tests

### August 21, 2025

* Added fact model `fact_reservations` in marts schema
* Tested Snowflake materialized views (limitations discovered)
* Built experimental clustering model

### August 22, 2025

* Moved `dq_report.py` into `/scripts`
* Generated first data quality report
* Drafted README and docs structure

---

## ✅ Next Steps / TODO

* [ ] Fix failing unique test on `stg_account_status`
* [ ] Add `schema.yml` docs for fact models
* [ ] Try dbt snapshots for slowly changing dimensions
* [ ] Automate DQ report generation in CI/CD

---

## 📚 Resources

* [dbt Documentation](https://docs.getdbt.com/docs/introduction)
* [dbt Discourse](https://discourse.getdbt.com/)
* [dbt Community](https://getdbt.com/community)
* [dbt Blog](https://blog.getdbt.com/)

