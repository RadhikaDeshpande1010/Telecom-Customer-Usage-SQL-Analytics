# 📡 Telecom Customer Usage — SQL Analytics

A structured SQL practice project built on a simulated **Indian telecom dataset** covering 34 customers across 10+ states. The project covers DDL, DML, and 15 real-world analytics queries using `WHERE`, `GROUP BY`, `HAVING`, aggregate functions, date filters, and pattern matching — written for **Oracle SQL**.

---

## 📁 Repository Structure

```
telecom-sql-analytics/
│
├── telecom_customer_usage_sql_analytics.sql     # Full script — DDL + DML + 15 analytics queries
└── README.md
```

---

## 🗃️ Dataset Schema

**Table:** `TELECOM_CUSTOMER_USAGE`  
**Records:** 34 simulated Indian telecom customers  
**Date Range:** January 2024 – February 2024

| Column | Type | Description |
|---|---|---|
| `customer_id` | INT | Primary key |
| `customer_name` | VARCHAR(100) | Full name |
| `city` | VARCHAR(50) | Customer's city |
| `state` | VARCHAR(50) | Customer's state |
| `plan_type` | VARCHAR(50) | `Prepaid` or `Postpaid` |
| `network_type` | VARCHAR(20) | `4G` or `5G` |
| `call_minutes` | INT | Monthly call usage in minutes |
| `data_usage_gb` | FLOAT | Monthly data consumption in GB |
| `sms_count` | INT | Monthly SMS count |
| `monthly_bill` | FLOAT | Monthly bill amount (₹) |
| `recharge_amount` | FLOAT | Last recharge amount (₹) |
| `recharge_date` | DATE | Date of last recharge |
| `complaints` | INT | Number of complaints raised |
| `churn_status` | VARCHAR(10) | `Yes` or `No` |

---

## 📊 Analysis Covered

15 queries spanning customer billing, data & call usage, recharge behaviour, churn analysis, complaint hotspots, and network performance comparison across 4G and 5G segments.
Filters are applied across states, cities, plan types, date ranges, and name patterns using `WHERE`, `HAVING`, `GROUP BY`, aggregate functions (`SUM`, `AVG`, `COUNT`, `MIN`, `MAX`), `BETWEEN`, `IN`, `LIKE`, and `NULLIF`.

---

## 🔑 Key Concepts Demonstrated

**WHERE vs HAVING — correct layering**
```sql
-- WHERE filters rows before aggregation
-- HAVING filters groups after aggregation
SELECT STATE, SUM(MONTHLY_BILL) AS TOTAL_REVENUE
FROM   TELECOM_CUSTOMER_USAGE
WHERE  RECHARGE_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-20'  -- row-level filter
GROUP  BY STATE
HAVING SUM(MONTHLY_BILL) > 1000;                                       -- group-level filter
```

**NULL-safe ratio with NULLIF**
```sql
-- Avoids division-by-zero when computing complaint rate
ROUND(COUNT(COMPLAINTS) * 1.0 / NULLIF(COUNT(*), 0), 2) AS COMPLAINT_RATE
```

**Pattern matching with LIKE**
```sql
-- Names starting with A or R
WHERE CUSTOMER_NAME LIKE 'A%' OR CUSTOMER_NAME LIKE 'R%'

-- Names containing the letter 'a' (case-sensitive in Oracle)
WHERE CUSTOMER_NAME LIKE '%a%'
```

**IN clause for multi-value state filter**
```sql
-- Filter by state, not city — a common mix-up corrected in Q11
WHERE STATE IN ('Bihar', 'Delhi', 'Maharashtra')
```

**Date literals in Oracle SQL**
```sql
-- Always use the DATE keyword with Oracle date literals
WHERE RECHARGE_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-20'
```

---

## ⚙️ Getting Started

### Prerequisites

- Oracle Database (19c or later recommended) **or** any SQL environment supporting ANSI date literals
- SQL client: SQL\*Plus, SQL Developer, DBeaver, or similar

### Run the Script

```bash
# Connect via SQL*Plus
sqlplus username/password@your_db

# Run the full script
@telecom_sql_queries.sql
```

Or open `telecom_sql_queries.sql` in SQL Developer and execute with **F5** (run as script).

---

## 🛠️ Technologies Used

![Oracle SQL](https://img.shields.io/badge/Oracle%20SQL-F80000?style=for-the-badge&logo=oracle&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)

---

*Built by **Radhika Deshpande** · Telecom Customer Usage — SQL Analytics Practice*
