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

# 🛠️ Tools & Technologies

| Technology | Usage |
|---|---|
| 🐬 MySQL | Database and SQL analysis |
| 🧰 MySQL Workbench | Query development and execution |
| 📄 CSV | Source data format |
| 🐙 GitHub | Project documentation and version control |
| 📚 Kaggle | Dataset source |

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

# 🔄 Data Analysis Workflow

```text
📥 PhonePe Pulse Dataset
          │
          ▼
📄 CSV Files
          │
          ▼
🗄️ MySQL Database
          │
          ▼
🧱 Table Creation
          │
          ▼
📊 Data Exploration
          │
          ▼
🔎 Filtering & Aggregation
          │
          ▼
🔗 JOIN & Subquery Analysis
          │
          ▼
🎯 Conditional & Threshold Analysis
          │
          ▼
💡 Business Findings

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
                                    map_use








