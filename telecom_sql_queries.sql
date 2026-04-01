/* ============================================================
   FILE    : telecom_sql_queries.sql
   TABLE   : TELECOM_CUSTOMER_USAGE
   PURPOSE : 15 Telecom SQL Practice Questions (Q1 – Q15)
   ============================================================ */


/* ------------------------------------------------------------
   DDL : CREATE TABLE
   ------------------------------------------------------------ */

CREATE TABLE telecom_customer_usage (
    customer_id      INT            PRIMARY KEY,
    customer_name    VARCHAR(100),
    city             VARCHAR(50),
    state            VARCHAR(50),
    plan_type        VARCHAR(50),
    network_type     VARCHAR(20),
    call_minutes     INT,
    data_usage_gb    FLOAT,
    sms_count        INT,
    monthly_bill     FLOAT,
    recharge_amount  FLOAT,
    recharge_date    DATE,
    complaints       INT,
    churn_status     VARCHAR(10)
);


/* ------------------------------------------------------------
   DML : INSERT 34 RECORDS
   ------------------------------------------------------------ */

INSERT INTO telecom_customer_usage VALUES
(1,  'Amit Kumar',     'Patna',     'Bihar',         'Prepaid',  '4G', 450, 12.5, 120, 399,  399,  DATE '2024-01-05', 1, 'No'),
(2,  'Rahul Sharma',   'Delhi',     'Delhi',         'Postpaid', '5G', 800, 25.0, 200, 799,  799,  DATE '2024-01-07', 0, 'No'),
(3,  'Sneha Verma',    'Mumbai',    'Maharashtra',   'Prepaid',  '4G', 300, 10.2,  80, 299,  299,  DATE '2024-01-10', 2, 'Yes'),
(4,  'Amit Singh',     'Lucknow',   'UP',            'Postpaid', '5G', 900, 30.5, 250, 899,  899,  DATE '2024-01-12', 1, 'No'),
(5,  'Pooja Gupta',    'Jaipur',    'Rajasthan',     'Prepaid',  '4G', 200,  8.0,  60, 249,  249,  DATE '2024-01-15', 3, 'Yes'),
(6,  'Rohit Kumar',    'Patna',     'Bihar',         'Postpaid', '5G', 700, 22.0, 180, 699,  699,  DATE '2024-01-18', 0, 'No'),
(7,  'Neha Patel',     'Ahmedabad', 'Gujarat',       'Prepaid',  '4G', 350, 15.0, 100, 349,  349,  DATE '2024-01-20', 1, 'No'),
(8,  'Manish Jain',    'Indore',    'MP',            'Postpaid', '5G', 850, 28.0, 210, 799,  799,  DATE '2024-01-22', 2, 'Yes'),
(9,  'Anjali Singh',   'Kolkata',   'WB',            'Prepaid',  '4G', 400, 14.5, 130, 399,  399,  DATE '2024-01-25', 1, 'No'),
(10, 'Vikas Yadav',    'Patna',     'Bihar',         'Postpaid', '5G', 950, 32.0, 300, 999,  999,  DATE '2024-01-28', 0, 'No'),
(11, 'Ritu Sharma',    'Delhi',     'Delhi',         'Prepaid',  '4G', 280,  9.5,  70, 299,  299,  DATE '2024-02-01', 2, 'Yes'),
(12, 'Sanjay Verma',   'Mumbai',    'Maharashtra',   'Postpaid', '5G', 780, 24.0, 190, 799,  799,  DATE '2024-02-03', 1, 'No'),
(13, 'Kiran Patel',    'Ahmedabad', 'Gujarat',       'Prepaid',  '4G', 320, 11.0,  90, 299,  299,  DATE '2024-02-05', 2, 'Yes'),
(14, 'Deepak Singh',   'Lucknow',   'UP',            'Postpaid', '5G', 870, 29.0, 240, 899,  899,  DATE '2024-02-08', 0, 'No'),
(15, 'Priya Gupta',    'Jaipur',    'Rajasthan',     'Prepaid',  '4G', 260,  9.0,  75, 249,  249,  DATE '2024-02-10', 1, 'No'),
(16, 'Arjun Mehta',    'Indore',    'MP',            'Postpaid', '5G', 920, 31.5, 270, 999,  999,  DATE '2024-02-12', 0, 'No'),
(17, 'Meena Kumari',   'Patna',     'Bihar',         'Prepaid',  '4G', 310, 10.8,  85, 299,  299,  DATE '2024-02-14', 3, 'Yes'),
(18, 'Rajesh Kumar',   'Delhi',     'Delhi',         'Postpaid', '5G', 860, 27.5, 220, 899,  899,  DATE '2024-02-16', 1, 'No'),
(19, 'Sunita Devi',    'Kolkata',   'WB',            'Prepaid',  '4G', 290,  9.2,  65, 249,  249,  DATE '2024-02-18', 2, 'Yes'),
(20, 'Vivek Singh',    'Mumbai',    'Maharashtra',   'Postpaid', '5G', 880, 30.0, 260, 999,  999,  DATE '2024-02-20', 0, 'No'),
(21, 'Ravi Mehta',     'Pune',      'Maharashtra',   'Postpaid', '5G', 780, 27.5, 190, 799,  799,  DATE '2024-02-15', 2, 'Yes'),
(22, 'Anita Desai',    'Surat',     'Gujarat',       'Prepaid',  '4G', 320, 11.5,  85, 299,  299,  DATE '2024-02-10', 3, 'Yes'),
(23, 'Raj Malhotra',   'Delhi',     'Delhi',         'Postpaid', '5G', 860, 29.0, 210, 899,  899,  DATE '2024-02-18', 2, 'No'),
(24, 'Aakash Verma',   'Lucknow',   'UP',            'Postpaid', '5G', 910, 31.0, 240, 999,  999,  DATE '2024-02-12', 4, 'Yes'),
(25, 'Ritu Agarwal',   'Jaipur',    'Rajasthan',     'Prepaid',  '4G', 280,  9.8,  70, 249,  249,  DATE '2024-02-08', 2, 'Yes'),
(26, 'Amit Sharma',    'Delhi',     'Delhi',         'Prepaid',  '4G', 320, 12.5, 120, 399,  399,  DATE '2024-01-10', 2, 'No'),
(27, 'Neha Gupta',     'Delhi',     'Delhi',         'Prepaid',  '4G', 340, 13.0, 130, 420,  420,  DATE '2024-01-11', 3, 'Yes'),
(28, 'Rohit Verma',    'Delhi',     'Delhi',         'Prepaid',  '4G', 360, 14.2, 140, 450,  450,  DATE '2024-01-12', 2, 'No'),
(29, 'Sneha Iyer',     'Mumbai',    'Maharashtra',   'Postpaid', '5G', 500, 22.5, 200, 799,  799,  DATE '2024-02-01', 2, 'Yes'),
(30, 'Karan Mehta',    'Mumbai',    'Maharashtra',   'Postpaid', '5G', 520, 24.0, 210, 820,  820,  DATE '2024-02-02', 2, 'No'),
(31, 'Priya Nair',     'Mumbai',    'Maharashtra',   'Postpaid', '5G', 540, 25.5, 220, 850,  850,  DATE '2024-02-03', 3, 'Yes'),
(32, 'Arjun Reddy',    'Bangalore', 'Karnataka',     'Prepaid',  '4G', 300, 10.5, 110, 350,  350,  DATE '2024-01-15', 2, 'No'),
(33, 'Meera Rao',      'Bangalore', 'Karnataka',     'Prepaid',  '4G', 310, 11.0, 115, 360,  360,  DATE '2024-01-16', 2, 'Yes'),
(34, 'Vikram Shetty',  'Bangalore', 'Karnataka',     'Prepaid',  '4G', 330, 12.2, 125, 380,  380,  DATE '2024-01-17', 3, 'No');

COMMIT;

SELECT * FROM telecom_customer_usage;


/* ============================================================
   ANALYTICS QUERIES
   ============================================================ */

/* ------------------------------------------------------------
   Q1 : High Data Usage Analysis
        Total data usage per state — 5G customers,
        Jan 1 – Feb 20 2024 | States > 50 GB only.
   ------------------------------------------------------------ */
SELECT
    STATE,
    SUM(DATA_USAGE_GB)              AS TOTAL_DATA_USAGE
FROM
    TELECOM_CUSTOMER_USAGE
WHERE
    NETWORK_TYPE  = '5G'
    AND RECHARGE_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-20'
GROUP BY
    STATE
HAVING
    SUM(DATA_USAGE_GB) > 50
ORDER BY
    TOTAL_DATA_USAGE DESC;


/* ------------------------------------------------------------
   Q2 : Customer Billing Performance
        Total monthly bill per city and plan type —
        customers whose names start with 'A' or 'R' | Groups > 300 only.
   ------------------------------------------------------------ */
SELECT
    CITY                                    AS CITY,
    PLAN_TYPE                               AS PLAN_TYPE,
    COUNT(*)                                AS TOTAL_CUSTOMERS,
    ROUND(SUM(MONTHLY_BILL),  2)            AS TOTAL_MONTHLY_BILL,
    ROUND(AVG(MONTHLY_BILL),  2)            AS AVG_MONTHLY_BILL,
    ROUND(MIN(MONTHLY_BILL),  2)            AS MIN_MONTHLY_BILL,
    ROUND(MAX(MONTHLY_BILL),  2)            AS MAX_MONTHLY_BILL
FROM
    TELECOM_CUSTOMER_USAGE
WHERE
    MONTHLY_BILL IS NOT NULL
    AND (
        CUSTOMER_NAME LIKE 'A%'
        OR CUSTOMER_NAME LIKE 'R%'
    )
GROUP BY
    CITY,
    PLAN_TYPE
HAVING
    SUM(MONTHLY_BILL) > 300
ORDER BY
    TOTAL_MONTHLY_BILL DESC;


/* ------------------------------------------------------------
   Q3 : Churn Customer Analysis
        Total recharge amount per state and city —
        churned customers (Yes) with complaints > 1.
   ------------------------------------------------------------ */
SELECT
    STATE                                                       AS STATE,
    CITY                                                        AS CITY,
    COUNT(*)                                                    AS TOTAL_CHURNED_CUSTOMERS,
    ROUND(SUM(RECHARGE_AMOUNT),  2)                             AS TOTAL_RECHARGE_AMOUNT,
    ROUND(AVG(RECHARGE_AMOUNT),  2)                             AS AVG_RECHARGE_AMOUNT,
    COUNT(COMPLAINTS)                                           AS TOTAL_COMPLAINTS,
    ROUND(COUNT(COMPLAINTS) * 1.0 / NULLIF(COUNT(*), 0),  2)   AS COMPLAINT_RATE
FROM
    TELECOM_CUSTOMER_USAGE
WHERE
    CHURN_STATUS      = 'Yes'
    AND RECHARGE_AMOUNT IS NOT NULL
GROUP BY
    STATE,
    CITY
HAVING
    COUNT(COMPLAINTS) > 1
ORDER BY
    TOTAL_RECHARGE_AMOUNT DESC;


/* ------------------------------------------------------------
   Q4 : Call Usage Report
        Average call minutes per city — 4G customers with
        call minutes > 300 | Cities with avg > 350 min only.
   ------------------------------------------------------------ */
SELECT
    CITY                                    AS CITY,
    ROUND(AVG(CALL_MINUTES),  2)            AS AVG_CALL_MINUTES,
    COUNT(*)                                AS TOTAL_RECORDS,
    ROUND(MIN(CALL_MINUTES),  2)            AS MIN_CALL_MINUTES,
    ROUND(MAX(CALL_MINUTES),  2)            AS MAX_CALL_MINUTES
FROM
    TELECOM_CUSTOMER_USAGE
WHERE
    NETWORK_TYPE   = '4G'
    AND CALL_MINUTES IS NOT NULL
GROUP BY
    CITY
HAVING
    AVG(CALL_MINUTES) > 350
ORDER BY
    AVG_CALL_MINUTES DESC;


/* ------------------------------------------------------------
   Q5 : Revenue by Plan Type
        Total monthly bill per plan type and state —
        Jan 1 – Feb 20 2024 | Revenue > 1000 only.
   ------------------------------------------------------------ */
SELECT
    STATE,
    PLAN_TYPE,
    SUM(MONTHLY_BILL)               AS TOTAL_REVENUE
FROM
    TELECOM_CUSTOMER_USAGE
WHERE
    RECHARGE_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-20'
GROUP BY
    STATE,
    PLAN_TYPE
HAVING
    SUM(MONTHLY_BILL) > 1000
ORDER BY
    TOTAL_REVENUE DESC;


/* ------------------------------------------------------------
   Q6 : Complaint Analysis
        Total complaints per city and network type —
        rows where complaints > 1 | Groups > 3 only.
   ------------------------------------------------------------ */
SELECT
    CITY,
    NETWORK_TYPE,
    COUNT(COMPLAINTS)               AS TOTAL_COMPLAINTS
FROM
    TELECOM_CUSTOMER_USAGE
WHERE
    COMPLAINTS > 1
GROUP BY
    CITY,
    NETWORK_TYPE
HAVING
    COUNT(COMPLAINTS) > 2
ORDER BY
    TOTAL_COMPLAINTS DESC;


/* ------------------------------------------------------------
   Q7 : SMS Usage Insight
        Average SMS count per state — customers whose names
        contain the letter 'a' | States with avg SMS > 100 only.
   ------------------------------------------------------------ */
SELECT
    STATE,
    ROUND(AVG(SMS_COUNT),  2)       AS AVG_SMS_COUNT
FROM
    TELECOM_CUSTOMER_USAGE
WHERE
    CUSTOMER_NAME LIKE '%a%'
GROUP BY
    STATE
HAVING
    AVG(SMS_COUNT) > 100
ORDER BY
    AVG_SMS_COUNT DESC;


/* ------------------------------------------------------------
   Q8 : Recharge Trend Analysis
        Total recharge amount per city —
        Jan 10 – Feb 15 2024 | Cities > 1500 only.

        NOTE : WHERE clause corrected to match the question spec
               (Jan 10 – Feb 15 instead of Jan 1 – Feb 20).
   ------------------------------------------------------------ */
SELECT
    CITY,
    SUM(RECHARGE_AMOUNT)            AS TOTAL_RECHARGE
FROM
    TELECOM_CUSTOMER_USAGE
WHERE
    RECHARGE_DATE BETWEEN DATE '2024-01-10' AND DATE '2024-02-15'
GROUP BY
    CITY
HAVING
    SUM(RECHARGE_AMOUNT) > 1500
ORDER BY
    TOTAL_RECHARGE DESC;


/* ------------------------------------------------------------
   Q9 : High Value Customers
        Total monthly bill per state —
        customers with monthly bill > 800 | States > 1500 only.
   ------------------------------------------------------------ */
SELECT
    STATE,
    SUM(MONTHLY_BILL)               AS TOTAL_MONTHLY_BILL
FROM
    TELECOM_CUSTOMER_USAGE
WHERE
    MONTHLY_BILL > 800
GROUP BY
    STATE
HAVING
    SUM(MONTHLY_BILL) > 1500
ORDER BY
    TOTAL_MONTHLY_BILL DESC;


/* ------------------------------------------------------------
   Q10 : Network Performance Comparison
         Total data usage per network type and state —
         Groups > 80 GB only.
   ------------------------------------------------------------ */
SELECT
    STATE,
    NETWORK_TYPE,
    SUM(DATA_USAGE_GB)              AS TOTAL_DATA_USAGE
FROM
    TELECOM_CUSTOMER_USAGE
GROUP BY
    STATE,
    NETWORK_TYPE
HAVING
    SUM(DATA_USAGE_GB) > 80
ORDER BY
    TOTAL_DATA_USAGE DESC;
    
/* ------------------------------------------------------------
   Q11 : Multi-State Customer Analysis
         Total call minutes per state — Bihar, Delhi, Maharashtra
         | States > 1500 total call minutes only.
 
         BUG FIXED : Original query filtered on CITY IN (...)
                     but the values are state names.
                     Corrected to WHERE STATE IN (...).
   ------------------------------------------------------------ */
SELECT
    STATE,
    CITY,
    SUM(CALL_MINUTES)               AS TOTAL_CALL_MINUTES
FROM
    TELECOM_CUSTOMER_USAGE
WHERE
    STATE IN ('Bihar', 'Delhi', 'Maharashtra')
GROUP BY
    STATE,
    CITY
HAVING
    SUM(CALL_MINUTES) > 1500
ORDER BY
    TOTAL_CALL_MINUTES DESC;
 
 
/* ------------------------------------------------------------
   Q12 : Low Usage Customers
         Average data usage per city — customers with data
         usage < 12 GB | Cities with avg < 10 GB only.
 
         BUG FIXED : Original query used DATA_USAGE_GB > 12
                     and HAVING AVG > 10, which filters HIGH
                     usage customers — the opposite of the spec.
                     Corrected both operators to < (less than).
   ------------------------------------------------------------ */
SELECT
    CITY,
    ROUND(AVG(DATA_USAGE_GB),  2)   AS AVG_DATA_USAGE
FROM
    TELECOM_CUSTOMER_USAGE
WHERE
    DATA_USAGE_GB < 12
GROUP BY
    CITY
HAVING
    AVG(DATA_USAGE_GB) < 10
ORDER BY
    AVG_DATA_USAGE DESC;
 
 
/* ------------------------------------------------------------
   Q13 : Recharge Behavior
         Total recharge amount per plan type — customers with
         recharge amount between 200 and 800 | Groups > 2000 only.
   ------------------------------------------------------------ */
SELECT
    PLAN_TYPE,
    SUM(RECHARGE_AMOUNT)            AS TOTAL_RECHARGE_AMOUNT
FROM
    TELECOM_CUSTOMER_USAGE
WHERE
    RECHARGE_AMOUNT BETWEEN 200 AND 800
GROUP BY
    PLAN_TYPE
HAVING
    SUM(RECHARGE_AMOUNT) > 2000
ORDER BY
    TOTAL_RECHARGE_AMOUNT DESC;
 
 
/* ------------------------------------------------------------
   Q14 : High Complaint Regions
         Total complaints per state — 4G customers only
         | States with total complaints > 3 only.
   ------------------------------------------------------------ */
SELECT
    STATE,
    COUNT(COMPLAINTS)               AS TOTAL_COMPLAINTS
FROM
    TELECOM_CUSTOMER_USAGE
WHERE
    NETWORK_TYPE = '4G'
GROUP BY
    STATE
HAVING
    COUNT(COMPLAINTS) > 3
ORDER BY
    TOTAL_COMPLAINTS DESC;
 
 
/* ------------------------------------------------------------
   Q15 : Premium Customers (Postpaid Analysis)
         Total monthly bill per state and city — Postpaid
         customers with data usage > 25 GB | Groups > 2000 only.
   ------------------------------------------------------------ */
SELECT
    STATE,
    CITY,
    SUM(MONTHLY_BILL)               AS TOTAL_MONTHLY_BILL
FROM
    TELECOM_CUSTOMER_USAGE
WHERE
    PLAN_TYPE      = 'Postpaid'
    AND DATA_USAGE_GB > 25
GROUP BY
    STATE,
    CITY
HAVING
    SUM(MONTHLY_BILL) > 2000
ORDER BY
    TOTAL_MONTHLY_BILL DESC;    