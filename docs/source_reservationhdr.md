# Source: Reservation Header

**Purpose:**  
Reservation header table from source database `MSITDBTSNOWGIT.public`.  

**Business Notes:**  
- Represents reservations captured in the source system.  
- Used as the raw input for the staging model `stg_reservationhdr`.  

**Freshness:**  
- Warn if data older than 1 day.  
- Error if data older than 2 days.  

**Lineage:**  
- Source: `MSITDBTSNOWGIT.public.reservationhdr`  
- Downstream: `stg_reservationhdr` → `fact_reservations`.  
