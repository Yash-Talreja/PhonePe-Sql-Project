# 📱 PhonePe Pulse — SQL Data Analytics Project

<p align="center">

  <img src="https://img.shields.io/badge/MySQL-8.0+-4479A1?style=for-the-badge&logo=mysql&logoColor=white" />
  <img src="https://img.shields.io/badge/SQL-Data%20Analysis-336791?style=for-the-badge&logo=postgresql&logoColor=white" />
  <img src="https://img.shields.io/badge/PhonePe-Pulse-5F259F?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Dataset-Kaggle-20BEFF?style=for-the-badge&logo=kaggle&logoColor=white" />
  <img src="https://img.shields.io/badge/Period-2018--2022-6C63FF?style=for-the-badge" />

</p>

<p align="center">
  <b>🔍 A SQL-based data analytics project exploring PhonePe Pulse transaction, user, district and regional data using MySQL.</b>
</p>

---

## 📌 Project Overview

The **PhonePe Pulse SQL Data Analytics Project** focuses on analyzing historical PhonePe Pulse data from **2018 to 2022** using **MySQL**.

The project transforms raw aggregated transaction and user data into meaningful business insights by applying SQL concepts such as:

- 🔎 Data filtering
- 📊 Aggregation
- 🧮 Business calculations
- 🗂️ Grouping and sorting
- 🎯 Conditional classification
- 🔗 Table joins
- 🧩 Subqueries
- 📍 State and district-level analysis
- 📈 User and transaction analysis

The objective is to understand **digital payment activity, transaction behavior, user growth, app engagement and regional performance** across India.

---

# 🎯 Project Objectives

The major objectives of this project are:

### 💳 Transaction Analysis
- Analyze transaction counts across states and years
- Identify major transaction categories
- Compare transaction values across regions
- Analyze state and district-level transaction activity

### 👥 User Analysis
- Analyze registered users across states
- Study user growth over time
- Identify areas with higher user bases
- Compare users with transaction activity

### 📱 App Engagement Analysis
- Analyze app opens by state
- Identify regions with significant app engagement
- Compare transaction activity with user engagement

### 🗺️ Geographic Analysis
- Analyze transaction performance at state and district levels
- Compare district-level transactions and users
- Identify high-activity and low-activity locations

### 🧠 SQL Skill Development
Apply practical MySQL concepts to a real-world analytics problem.

---

# 🗃️ Dataset Information

| 📌 Attribute | Details |
|---|---|
| Dataset | PhonePe Pulse Historical Data |
| Source | Kaggle |
| Time Period | 2018 – 2022 |
| Database | `phonepe_sql_project` |
| SQL Tool | MySQL |
| Analysis Type | Exploratory & Business Data Analysis |
| Geographic Level | State & District |
| Data Categories | Transactions, Users, App Engagement |

---
# 📊 Key Insights & Findings

The SQL analysis generated the following insights from the PhonePe Pulse dataset covering **2018–2022**.

---

## 💳 Transaction & Payment Insights

### 1️⃣ Bengaluru Urban — Highest Highlighted Transaction Activity

Bengaluru Urban recorded approximately:

- **611.36M transactions**
- **₹7.82T transaction value**

This indicates very high transaction activity and monetary value in Bengaluru Urban within the analyzed results.

---

### 2️⃣ Hyderabad — Strong Transaction Performance

Hyderabad recorded approximately:

- **452.56M transactions**
- **₹7.74T transaction value**

This makes Hyderabad another major contributor to transaction activity and transaction value.

---

### 3️⃣ Pune & Jaipur — Strong Performance

**Pune and Jaipur** also demonstrated strong performance across transaction activity and transaction value in the analyzed results.

---

## 🗺️ District-Level Insights

### 4️⃣ Longding — Lowest Highlighted Transaction Count

Among the highlighted district-level results, **Longding** recorded approximately:

> **43.12M transactions**

This was the lowest transaction count among the highlighted district results.

---

### 5️⃣ Ramban — Lowest Highlighted Transaction Amount

**Ramban** recorded approximately:

> **₹49.37B transaction value**

among the highlighted district-level results.

This demonstrates the variation in transaction value across different districts.

---

## 🇮🇳 State-Level Insights

### 6️⃣ Maharashtra — Highest Transaction Count

**Maharashtra** recorded the highest transaction count among the states analyzed.

The SQL analysis also identified Maharashtra as a state that exceeded the specified transaction-count threshold in **2022**.

---

### 7️⃣ Telangana — High Transaction Value

The threshold-based analysis identified **Telangana** as exceeding the specified transaction-value threshold.

This indicates significant transaction value in the state based on the conditions used in the analysis.

---

## 🤝 Transaction Type Insights

### 8️⃣ Peer-to-Peer & Merchant Payments

The analysis identified:

- **Peer-to-Peer Payments**
- **Merchant Payments**

as major contributors to transaction activity and transaction value.

---

### 9️⃣ Merchant Payments — High Transaction Volume

**Merchant Payments** exceeded the transaction-volume threshold used in the SQL analysis.

This highlights the importance of merchant payments within the analyzed transaction activity.

---

## 🌎 Regional Insights

### 🔟 Southern Region — Highest Transaction Value

The **Southern Region** recorded the highest transaction value among the regions analyzed.

This highlights the significant contribution of southern states to overall transaction value.

---

### 1️⃣1️⃣ Strong Southern-State User & App Engagement

Southern states showed strong:

- 👥 User-base growth
- 📱 App engagement
- 💳 Transaction activity

This highlights the importance of the southern region within the analyzed dataset.

---

## 👥 User Growth Insights

### 1️⃣2️⃣ Registered Users Grew by Approximately 256.76%

Registered users increased by approximately:

> **256.76% between 2018 and 2022**

This indicates substantial growth in the registered PhonePe user base during the analyzed period.

---

### 1️⃣3️⃣ Large Registered User Base & App Engagement

One of the SQL analyses recorded:

> **208,417,046 registered users**

and:

> **10,271,581,941 app opens**

This demonstrates the scale of the registered-user base and application engagement represented in the analyzed data.

---

### 1️⃣4️⃣ Karnataka — High Registered User Base

The threshold-based analysis identified **Karnataka** as exceeding the specified registered-user threshold.

This indicates that Karnataka was an important contributor to the registered-user base.

---

## 📱 App Engagement Insights

### 1️⃣5️⃣ Karnataka & Tamil Nadu — Major App Engagement

The analysis identified:

- **Karnataka**
- **Tamil Nadu**

as major contributors to app engagement.

This indicates strong interaction with the PhonePe application across these states.

---

## 🧮 Business Calculation

### 1️⃣6️⃣ Transaction Value per Registered User

One SQL analysis calculated transaction value relative to registered users.

| Metric | Result |
|---|---:|
| 👥 Registered Users | **5,236,719.922632** |
| 💰 Transaction Amount | **₹2,393,380,000,000.00** |
| 🧮 Transaction Value per Registered User | **≈ ₹456,938** |

The calculation provides a comparative measure of transaction value relative to the registered-user base.

---

# 📌 SQL-Derived Threshold Insights

The following additional findings were generated using conditional and threshold-based SQL analysis.

### 1️⃣7️⃣ Maharashtra Crossed the Transaction-Count Threshold

The SQL analysis identified **Maharashtra** as exceeding the specified transaction-count threshold in **2022**.

---

### 1️⃣8️⃣ Telangana Crossed the Transaction-Value Threshold

The SQL analysis identified **Telangana** as exceeding the specified transaction-value threshold.

---

# 📊 Complete Insight Summary

| # | 🔍 Analysis Area | 📊 Finding |
|---:|---|---|
| 1 | 🏙️ Bengaluru Urban | ≈ **611.36M transactions** |
| 2 | 💰 Bengaluru Urban | ≈ **₹7.82T transaction value** |
| 3 | 🏙️ Hyderabad | ≈ **452.56M transactions** |
| 4 | 💰 Hyderabad | ≈ **₹7.74T transaction value** |
| 5 | 🏙️ Pune & Jaipur | Strong transaction performance |
| 6 | 📍 Longding | ≈ **43.12M transactions** |
| 7 | 📍 Ramban | ≈ **₹49.37B transaction value** |
| 8 | 🇮🇳 Maharashtra | Highest analyzed state transaction count |
| 9 | 💰 Telangana | Exceeded transaction-value threshold |
| 10 | 🤝 Peer-to-Peer Payments | Major transaction contributor |
| 11 | 🛍️ Merchant Payments | Major transaction contributor |
| 12 | 🛍️ Merchant Payments | Exceeded transaction-volume threshold |
| 13 | 🌏 Southern Region | Highest analyzed transaction value |
| 14 | 📈 User Growth | ≈ **256.76%** from 2018–2022 |
| 15 | 👥 Registered Users | **208,417,046** |
| 16 | 📱 App Opens | **10,271,581,941** |
| 17 | 📱 Karnataka & Tamil Nadu | Major app engagement |
| 18 | 👤 Karnataka | Exceeded registered-user threshold |
| 19 | 🧮 Value per Registered User | ≈ **₹456,938** |

---

# 🧠 Overall Business Insight

The PhonePe Pulse SQL analysis shows substantial growth and variation across the digital-payment ecosystem between **2018 and 2022**.

The analysis connects multiple dimensions:

```text
💳 Transaction Volume
        ↓
💰 Transaction Value
        ↓
🤝 Transaction Type
        ↓
👥 Registered Users
        ↓
📱 App Engagement
        ↓
🇮🇳 States
        ↓
📍 Districts
        ↓
🌎 Regions

# 🧱 Database Structure

The project uses **4 main tables**.

```text
                    📱 PHONEPE PULSE DATABASE
                              │
             ┌────────────────┼────────────────┐
             │                │                │
             ▼                ▼                ▼
     💳 TRANSACTIONS       👥 USERS       🗺️ GEOGRAPHY
             │                │                │
             ▼                ▼                ▼
    agg_transactions     agg_users     map_transactions
                                          │
                                          ▼
                                    map_users

