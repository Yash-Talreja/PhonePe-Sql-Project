/* ============================================================
   PHONEPE PULSE DATA ANALYTICS PROJECT
   ============================================================
   Database : phonepe_sql_project
   Tool     : MySQL
   Dataset  : PhonePe Pulse Historical Data
   Period   : 2018 - 2022
   Source   : Kaggle

   Tables Used:
   1. agg_transactions  → Transaction-level aggregated data
   2. agg_users         → Brand/User aggregated data
   3. map_transactions   → District-level transaction data
   4. map_users          → District-level user data

   Purpose:
   Import and prepare PhonePe Pulse data for SQL analysis.
   ============================================================ */


/* ============================================================
   SECTION 1: CREATE DATABASE
   ============================================================ */

-- Create the database for the PhonePe SQL project
CREATE DATABASE phonepe_sql_project;

-- Select the database
USE phonepe_sql_project;

/* =====================================================================
   1. PROJECT OVERVIEW
   =====================================================================

   Project Title:
   PhonePe Pulse - SQL Data Analytics Project

   Objective:
   Analyze PhonePe Pulse historical transaction, user, brand and
   district-level data using MySQL.

   Business Questions:
   - How has transaction activity changed from 2018 to 2022?
   - Which states and regions generate the highest activity?
   - Which transaction types contribute most to transaction volume/value?
   - Which brands have strong transaction activity?
   - How do registered users and app opens vary geographically?
   - Which districts show unusually high or low activity?
   - What additional business insights can be extracted using SQL?

   Skills Demonstrated:
   SELECT, DISTINCT, WHERE, IN, BETWEEN, LIKE, ORDER BY,
   GROUP BY, SUM, AVG, COUNT, MAX, MIN, HAVING, CASE,
   INNER JOIN, LEFT JOIN, NULLIF, and SUBQUERIES.

   ===================================================================== */


/* =====================================================================
   2. DATABASE & TABLE OVERVIEW
   =====================================================================

   1. agg_transactions
      State, year, quarter, transaction type, transaction count,
      transaction amount and region.

   2. agg_users
      State, year, quarter, brand, transaction count, percentage
      and region.

   3. map_transactions
      District-level transaction count, transaction amount and location.

   4. map_users
      District-level registered users, app opens and location.

   ===================================================================== */


/* =====================================================================
   3. SQL ANALYSIS
   ===================================================================== */


/* =====================================================================
   A. SELECT & DISTINCT
   ===================================================================== */


/* Q01. Display all columns from the transaction table. */

SELECT *
FROM agg_transactions;


/* Q02. Display only state, year, quarter and transaction count. */

SELECT
    state,
    year,
    quarter,
    transaction_count
FROM agg_transactions;


/* Q03. Display all unique states available in transaction data. */

SELECT DISTINCT state
FROM agg_transactions
ORDER BY state;


/* Q04. Display all unique transaction types. */

SELECT DISTINCT transaction_type
FROM agg_transactions
ORDER BY transaction_type;


/* Q05. Display all unique regions available in the dataset. */

SELECT DISTINCT region
FROM agg_transactions
ORDER BY region;


/* =====================================================================
   B. WHERE & FILTERING
   ===================================================================== */


/* Q06. Display all transaction records for the year 2018. */

SELECT *
FROM agg_transactions
WHERE year = 2018;


/* Q07. Display all transaction records for Quarter 1 of 2019. */

SELECT *
FROM agg_transactions
WHERE year = 2019
  AND quarter = 1;


/* Q08. Display all Peer-to-peer payment records. */

SELECT *
FROM agg_transactions
WHERE transaction_type = 'Peer-to-peer payments';


/* Q09. Display all transaction records for Rajasthan. */

SELECT *
FROM agg_transactions
WHERE state = 'Rajasthan';


/* Q10. Display all user/brand records for the year 2020. */

SELECT *
FROM agg_users
WHERE year = 2020;


/* Q11. Display all Samsung brand records. */

SELECT *
FROM agg_users
WHERE brand = 'Samsung';


/* Q12. Display district transactions for Karnataka in 2021. */

SELECT *
FROM map_transactions
WHERE state = 'Karnataka'
  AND year = 2021;


/* Q13. Display districts having more than 100,000 registered users. */

SELECT *
FROM map_users
WHERE registered_users > 100000;


/* Q14. Display transactions from Rajasthan, Maharashtra or Karnataka
       during 2020 and 2021. */

SELECT *
FROM agg_transactions
WHERE state IN ('Rajasthan', 'Maharashtra', 'Karnataka')
  AND year IN (2020, 2021);


/* Q15. Display transaction records between 2019 and 2022 where the
       quarter is 1 or 4 and transaction count is above 50,000. */

SELECT *
FROM map_transactions
WHERE year BETWEEN 2019 AND 2022
  AND quarter IN (1, 4)
  AND transaction_count > 50000;


/* Q16. Display states whose names start with the letter M. */

SELECT DISTINCT state
FROM agg_transactions
WHERE state LIKE 'M%';


/* =====================================================================
   C. ORDER BY
   ===================================================================== */


/* Q17. Display the 20 transaction records with the highest count. */

SELECT
    state,
    year,
    quarter,
    transaction_type,
    transaction_count
FROM agg_transactions
ORDER BY transaction_count DESC
LIMIT 20;


/* Q18. Display the 20 records with the highest transaction amount. */

SELECT
    state,
    year,
    quarter,
    transaction_type,
    transaction_amount
FROM agg_transactions
ORDER BY transaction_amount DESC
LIMIT 20;


/* Q19. Display states alphabetically and years from newest to oldest. */

SELECT
    state,
    year,
    quarter,
    transaction_count
FROM agg_transactions
ORDER BY state ASC, year DESC;


/* Q20. Display districts with the lowest transaction count first. */

SELECT
    state,
    district,
    transaction_count
FROM map_transactions
ORDER BY transaction_count ASC
LIMIT 20;


/* =====================================================================
   D. GROUP BY & AGGREGATION
   ===================================================================== */


/* Q21. Find total transaction count for each state in 2022. */

SELECT
    state,
    SUM(transaction_count) AS total_transactions
FROM agg_transactions
WHERE year = 2022
GROUP BY state
ORDER BY total_transactions DESC;


/* Q22. Find total transaction amount for each transaction type in 2021. */

SELECT
    transaction_type,
    SUM(transaction_amount) AS total_transaction_amount
FROM agg_transactions
WHERE year = 2021
GROUP BY transaction_type
ORDER BY total_transaction_amount DESC;


/* Q23. Find total transaction count for each transaction type
       from 2020 to 2022. */

SELECT
    transaction_type,
    SUM(transaction_count) AS total_transactions
FROM agg_transactions
WHERE year BETWEEN 2020 AND 2022
GROUP BY transaction_type
ORDER BY total_transactions DESC;


/* Q24. Find total transaction amount for each region in 2022. */

SELECT
    region,
    SUM(transaction_amount) AS total_transaction_amount
FROM agg_transactions
WHERE year = 2022
GROUP BY region
ORDER BY total_transaction_amount DESC;


/* Q25. Find average transaction amount for each transaction type in 2020. */

SELECT
    transaction_type,
    ROUND(AVG(transaction_amount), 2) AS average_transaction_amount
FROM agg_transactions
WHERE year = 2020
GROUP BY transaction_type
ORDER BY average_transaction_amount DESC;


/* Q26. Find total registered users by state in 2022.
       map_users is used because registered_users is stored there. */

SELECT
    state,
    SUM(registered_users) AS total_registered_users
FROM map_users
WHERE year = 2022
GROUP BY state
ORDER BY total_registered_users DESC;


/* Q27. Find total app opens by state in 2022. */

SELECT
    state,
    SUM(app_opens) AS total_app_opens
FROM map_users
WHERE year = 2022
GROUP BY state
ORDER BY total_app_opens DESC;


/* Q28. Find total transaction amount for districts in Karnataka
       during 2022. */

SELECT
    district,
    SUM(transaction_amount) AS total_transaction_amount
FROM map_transactions
WHERE state = 'Karnataka'
  AND year = 2022
GROUP BY district
ORDER BY total_transaction_amount DESC;


/* Q29. Find yearly total transaction count. */

SELECT
    year,
    SUM(transaction_count) AS total_transactions
FROM agg_transactions
GROUP BY year
ORDER BY year;


/* Q30. Find yearly total transaction amount. */

SELECT
    year,
    SUM(transaction_amount) AS total_transaction_amount
FROM agg_transactions
GROUP BY year
ORDER BY year;


/* =====================================================================
   E. HAVING
   ===================================================================== */


/* Q31. Find states with more than 10 million transactions in 2022. */

SELECT
    state,
    SUM(transaction_count) AS total_transactions
FROM agg_transactions
WHERE year = 2022
GROUP BY state
HAVING SUM(transaction_count) > 10000000
ORDER BY total_transactions DESC;


/* Q32. Find states with transaction amount above 1 billion in 2021. */

SELECT
    state,
    SUM(transaction_amount) AS total_transaction_amount
FROM agg_transactions
WHERE year = 2021
GROUP BY state
HAVING SUM(transaction_amount) > 1000000000
ORDER BY total_transaction_amount DESC;


/* Q33. Find transaction types with more than 100 million transactions
       between 2020 and 2022. */

SELECT
    transaction_type,
    SUM(transaction_count) AS total_transactions
FROM agg_transactions
WHERE year BETWEEN 2020 AND 2022
GROUP BY transaction_type
HAVING SUM(transaction_count) > 100000000
ORDER BY total_transactions DESC;


/* Q34. Find states with more than 50 million app opens in 2022. */

SELECT
    state,
    SUM(app_opens) AS total_app_opens
FROM map_users
WHERE year = 2022
GROUP BY state
HAVING SUM(app_opens) > 50000000
ORDER BY total_app_opens DESC;


/* Q35. Find districts with more than 1 million registered users
       across all available years. */

SELECT
    state,
    district,
    SUM(registered_users) AS total_registered_users
FROM map_users
GROUP BY state, district
HAVING SUM(registered_users) > 1000000
ORDER BY total_registered_users DESC;


/* =====================================================================
   F. CASE STATEMENTS
   ===================================================================== */


/* Q36. Categorize transaction records by transaction count. */

SELECT
    state,
    year,
    transaction_count,
    CASE
        WHEN transaction_count > 1000000 THEN 'High'
        WHEN transaction_count >= 500000 THEN 'Medium'
        ELSE 'Low'
    END AS transaction_category
FROM agg_transactions;


/* Q37. Categorize transaction amount into business value levels. */

SELECT
    transaction_type,
    transaction_amount,
    CASE
        WHEN transaction_amount > 10000000 THEN 'High Value'
        WHEN transaction_amount >= 1000000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS transaction_value_category
FROM agg_transactions;


/* Q38. Classify states according to total transaction count in 2022. */

SELECT
    state,
    SUM(transaction_count) AS total_transactions,
    CASE
        WHEN SUM(transaction_count) > 50000000 THEN 'High Activity'
        WHEN SUM(transaction_count) >= 20000000 THEN 'Moderate Activity'
        ELSE 'Lower Activity'
    END AS activity_category
FROM agg_transactions
WHERE year = 2022
GROUP BY state
ORDER BY total_transactions DESC;


/* Q39. Classify districts according to registered users. */

SELECT
    state,
    district,
    SUM(registered_users) AS total_registered_users,
    CASE
        WHEN SUM(registered_users) > 1000000 THEN 'High User Base'
        WHEN SUM(registered_users) >= 500000 THEN 'Medium User Base'
        ELSE 'Lower User Base'
    END AS user_category
FROM map_users
GROUP BY state, district
ORDER BY total_registered_users DESC;


/* Q40. Classify 2022 regions according to transaction amount. */

SELECT
    region,
    SUM(transaction_amount) AS total_transaction_amount,
    CASE
        WHEN SUM(transaction_amount) > 1000000000000 THEN 'Very High Value'
        WHEN SUM(transaction_amount) >= 500000000000 THEN 'High Value'
        ELSE 'Lower Value'
    END AS region_value_category
FROM agg_transactions
WHERE year = 2022
GROUP BY region
ORDER BY total_transaction_amount DESC;


/* =====================================================================
   G. JOINS
   ===================================================================== */


/* Q41. Join transaction data with district user data using
       state, year and quarter. */

SELECT
    t.state,
    t.year,
    t.quarter,
    t.transaction_count,
    u.registered_users
FROM agg_transactions AS t
INNER JOIN map_users AS u
    ON t.state = u.state
   AND t.year = u.year
   AND t.quarter = u.quarter;


/* Q42. Compare transaction activity and app opens for each state in 2022. */

SELECT
    t.state,
    t.year,
    t.transaction_count,
    u.app_opens
FROM agg_transactions AS t
INNER JOIN map_users AS u
    ON t.state = u.state
   AND t.year = u.year
   AND t.quarter = u.quarter
WHERE t.year = 2022;


/* Q43. Find transaction amount and registered users for each district
       in 2021. */

SELECT
    t.state,
    t.district,
    t.year,
    t.quarter,
    t.transaction_amount,
    u.registered_users
FROM map_transactions AS t
INNER JOIN map_users AS u
    ON t.state = u.state
   AND t.year = u.year
   AND t.quarter = u.quarter
   AND t.district = u.district
WHERE t.year = 2021;


/* Q44. Calculate transaction amount per registered user for 2022. */

SELECT
    t.state,
    t.year,
    t.quarter,
    t.transaction_amount,
    u.registered_users,
    t.transaction_amount / NULLIF(u.registered_users, 0)
        AS amount_per_registered_user
FROM agg_transactions AS t
INNER JOIN map_users AS u
    ON t.state = u.state
   AND t.year = u.year
   AND t.quarter = u.quarter
WHERE t.year = 2022
ORDER BY t.transaction_amount desc;


/* Q45. Classify state-level engagement using transaction count
       and app opens. */

SELECT
    t.state,
    t.transaction_count,
    u.app_opens,
    CASE
        WHEN u.app_opens > t.transaction_count THEN 'Higher App Engagement'
        ELSE 'Lower App Engagement'
    END AS engagement_category
FROM agg_transactions AS t
INNER JOIN map_users AS u
    ON t.state = u.state
   AND t.year = u.year
   AND t.quarter = u.quarter
WHERE t.year = 2022
ORDER BY t.transaction_count desc;


/* Q46. Join brand-level transaction data with district user data. */

SELECT
    a.state,
    a.brand,
    a.year,
    a.quarter,
    a.transaction_count,
    m.registered_users
FROM agg_users AS a
INNER JOIN map_users AS m
    ON a.state = m.state
   AND a.year = m.year
   AND a.quarter = m.quarter;


/* Q47. Find transaction records that have no matching user record. */

SELECT
    t.state,
    t.year,
    t.quarter,
    t.transaction_count
FROM agg_transactions AS t
LEFT JOIN map_users AS u
    ON t.state = u.state
   AND t.year = u.year
   AND t.quarter = u.quarter
WHERE u.state IS NULL;


/* Q48. Display Rajasthan district transaction and user information
       for 2022. */

SELECT
    t.district,
    t.transaction_count,
    t.transaction_amount,
    u.registered_users,
    u.app_opens
FROM map_transactions AS t
INNER JOIN map_users AS u
    ON t.state = u.state
   AND t.year = u.year
   AND t.quarter = u.quarter
   AND t.district = u.district
WHERE t.state = 'Rajasthan'
  AND t.year = 2022;


/* =====================================================================
   H. SUBQUERIES
   ===================================================================== */


/* Q49. Find transaction records whose transaction count is above
       the overall average transaction count. */

SELECT
    state,
    year,
    quarter,
    transaction_type,
    transaction_count
FROM agg_transactions
WHERE transaction_count >
(
    SELECT AVG(transaction_count)
    FROM agg_transactions
);


/* Q50. Find 2022 transaction records whose count is above the
       average transaction count for 2022. */

SELECT
    state,
    year,
    quarter,
    transaction_type,
    transaction_count
FROM agg_transactions
WHERE year = 2022
  AND transaction_count >
(
    SELECT AVG(transaction_count)
    FROM agg_transactions
    WHERE year = 2022
);


/* Q51. Find the state with the highest total transaction amount in 2022. */

SELECT
    state,
    SUM(transaction_amount) AS total_transaction_amount
FROM agg_transactions
WHERE year = 2022
GROUP BY state
HAVING SUM(transaction_amount) =
(
    SELECT MAX(state_amount)
    FROM
    (
        SELECT
            state,
            SUM(transaction_amount) AS state_amount
        FROM agg_transactions
        WHERE year = 2022
        GROUP BY state
    ) AS state_summary
);


/* Q52. Find transaction types whose 2022 total amount is above
       the average transaction-type amount in 2022. */

SELECT
    transaction_type,
    SUM(transaction_amount) AS total_amount
FROM agg_transactions
WHERE year = 2022
GROUP BY transaction_type
HAVING SUM(transaction_amount) >
(
    SELECT AVG(total_amount)
    FROM
    (
        SELECT
            transaction_type,
            SUM(transaction_amount) AS total_amount
        FROM agg_transactions
        WHERE year = 2022
        GROUP BY transaction_type
    ) AS transaction_summary
)
ORDER BY total_amount DESC;


/* Q53. Find states that have at least one transaction record
       above 5 million transactions in 2022. */

SELECT DISTINCT state
FROM agg_transactions
WHERE state IN
(
    SELECT state
    FROM agg_transactions
    WHERE year = 2022
      AND transaction_count > 5000000
)
ORDER BY state;


/* Q54. Find districts with registered users above the average
       registered-user count across all district records. */

SELECT
    state,
    district,
    registered_users
FROM map_users
WHERE registered_users >
(
    SELECT AVG(registered_users)
    FROM map_users
)
ORDER BY registered_users DESC;


/* Q55. Find states that have 2022 transaction records but are not
       among the states having more than 1 million registered users. */

SELECT DISTINCT state
FROM agg_transactions
WHERE year = 2022
  AND state NOT IN
(
    SELECT DISTINCT state
    FROM map_users
    WHERE year = 2022
      AND registered_users > 1000000
)
ORDER BY state;


/* Q56. Find the transaction record(s) with the maximum transaction
       amount in the entire dataset. */

SELECT
    state,
    year,
    quarter,
    transaction_type,
    transaction_amount
FROM agg_transactions
WHERE transaction_amount =
(
    SELECT MAX(transaction_amount)
    FROM agg_transactions
);


/* Q57. Find districts where app opens are above the overall
       average app opens. */

SELECT
    state,
    district,
    app_opens
FROM map_users
WHERE app_opens >
(
    SELECT AVG(app_opens)
    FROM map_users
)
ORDER BY app_opens DESC;


/* Q58. Find states whose 2022 total transaction amount is above
       the average state-level transaction amount for 2022. */

SELECT
    state,
    SUM(transaction_amount) AS total_transaction_amount
FROM agg_transactions
WHERE year = 2022
GROUP BY state
HAVING SUM(transaction_amount) >
(
    SELECT AVG(state_amount)
    FROM
    (
        SELECT
            state,
            SUM(transaction_amount) AS state_amount
        FROM agg_transactions
        WHERE year = 2022
        GROUP BY state
    ) AS state_summary
)
ORDER BY total_transaction_amount DESC;


/* Q59. Find the district with the highest total transaction count
       in 2022. */

SELECT
    state,
    district,
    SUM(transaction_count) AS total_transactions
FROM map_transactions
WHERE year = 2022
GROUP BY state, district
HAVING SUM(transaction_count) =
(
    SELECT MAX(district_total)
    FROM
    (
        SELECT
            state,
            district,
            SUM(transaction_count) AS district_total
        FROM map_transactions
        WHERE year = 2022
        GROUP BY state, district
    ) AS district_summary
);


/* Q60. Find states where 2022 transaction count is greater than
       that state's average transaction count across all years.

       This is a correlated subquery.
*/

SELECT
    t.state,
    t.transaction_count,
    t.year
FROM agg_transactions AS t
WHERE t.year = 2022
  AND t.transaction_count >
(
    SELECT AVG(t2.transaction_count)
    FROM agg_transactions AS t2
    WHERE t2.state = t.state
);


/* =====================================================================
   4. KEY INSIGHTS
   =====================================================================

   ---------------------------------------------------------------------
   BUSINESS & DATA ANALYSIS INSIGHTS
   ---------------------------------------------------------------------

   1. Bengaluru Urban recorded approximately 611.36M transactions
      and 7.82T in transaction value, indicating very high transaction
      activity and monetary value.

   2. Hyderabad recorded approximately 452.56M transactions and
      7.74T in transaction value, making it another major contributor
      to overall transaction activity and value.

   3. Pune and Jaipur demonstrated strong performance across both
      transaction activity and transaction value.

   4. Longding recorded the lowest transaction count among the
      highlighted districts, at approximately 43.12M transactions.

   5. Ramban recorded the lowest transaction amount among the
      highlighted districts, at approximately 49.37B.

   6. Maharashtra recorded the highest transaction count among the
      states analyzed, indicating a high level of digital-payment
      activity.

   7. Registered users increased by approximately 256.76% between
      2018 and 2022, indicating substantial growth in the user base.

   8. Karnataka and Tamil Nadu were major contributors to app
      engagement, reflecting strong user interaction with the platform.

   9. Southern states showed strong user-base growth and app
      engagement, highlighting the importance of the region in
      PhonePe's overall activity.

   10. Maharashtra recorded the highest transaction activity in 2022,
       based on the state-level transaction count analysis.

   11. Peer-to-Peer Payments and Merchant Payments were major
       contributors to transaction activity and transaction value.

   12. The Southern Region recorded the highest transaction value
       among the regions analyzed.

   13. The analysis recorded 208,417,046 registered users and
       10,271,581,941 app opens, indicating a substantial user base
       along with high levels of app engagement.

   14. Threshold-based analysis identified Maharashtra as a state
       exceeding the transaction-count threshold in 2022.

   15. Telangana exceeded the transaction-value threshold identified
       in the analysis, indicating significant transaction value.

   16. Merchant Payments exceeded the transaction-volume threshold,
       highlighting its importance in overall transaction activity.

   17. Karnataka exceeded the registered-user threshold, indicating
       a large user base in the state.

   18. The analysis recorded a transaction amount of
       2,393,380,000,000.00 against 5,236,719.922632 registered users.

       This corresponds to approximately 456,938 in transaction value
       per registered user, providing a useful measure of transaction
       value relative to the registered-user base.

   ---------------------------------------------------------------------
   OVERALL PROJECT INSIGHT
   ---------------------------------------------------------------------

   The analysis shows strong growth in PhonePe's transaction activity,
   transaction value, user base and app engagement between 2018 and
   2022. State-level, regional, transaction-type and user-level
   analysis highlights significant differences in digital-payment
   activity across India and demonstrates how SQL can be used to
   convert raw data into meaningful business insights.

   =====================================================================
*/
       
   /*=====================================================================
   PROJECT CONCLUSION
   =====================================================================

   This project demonstrates how MySQL can be used to move from raw
   PhonePe Pulse data to structured business analysis.

   The analysis covers:
   - Data selection and filtering
   - Aggregation and ranking
   - Business segmentation using CASE
   - Multi-table analysis using JOINs
   - Benchmarking using subqueries
   - Geographic and user-engagement analysis
   - Data-quality validation

   Final workflow:

       DATASET
          ↓
       DATABASE
          ↓
       TABLES
          ↓
       SQL QUESTIONS
          ↓
       QUERY RESULTS
          ↓
       BUSINESS INSIGHTS
          ↓
       DASHBOARD / DECISION SUPPORT

   =====================================================================
   END OF PHONEPE PULSE SQL ANALYTICS PROJECT
   ===================================================================== */
