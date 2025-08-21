{% docs source_reservationhdr %}

# Source: Reservation Header (`MSITDBTSNOWGIT.public.reservationhdr`)

**Purpose:**  
Raw reservation header table used by `stg_reservationhdr`.

**Freshness Policy:**  
- Warn if older than 1 day.
- Error if older than 2 days.

**Lineage:**  
`MSITDBTSNOWGIT.public.reservationhdr` → `stg_reservationhdr` → `fact_reservations`.

{% enddocs %}
