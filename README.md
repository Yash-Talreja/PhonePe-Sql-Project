<div align="center">

<div align="center">
  <img src="./assets/phonepe-pulse-logo.png" width="700" alt="PhonePe Pulse">
</div>

</div>

# 📱 PhonePe Pulse — SQL Data Analytics Project

### Exploring India's Digital Payments Ecosystem with MySQL

<p>
<img src="https://img.shields.io/badge/MySQL-8.0+-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/SQL-Data%20Analysis-336791?style=for-the-badge&logo=postgresql&logoColor=white">
<img src="https://img.shields.io/badge/PhonePe-Pulse-5F259F?style=for-the-badge">
<img src="https://img.shields.io/badge/Dataset-Kaggle-20BEFF?style=for-the-badge&logo=kaggle&logoColor=white">
<img src="https://img.shields.io/badge/Period-2018--2022-6C63FF?style=for-the-badge">
</p>

**A practical SQL analytics project analyzing PhonePe Pulse transaction, user, app-engagement and geographic data across India.**

</div>

---

## 📌 Project Overview

The **PhonePe Pulse SQL Data Analytics Project** analyzes historical PhonePe Pulse data from **2018 to 2022** using **MySQL**.

The project converts aggregated transaction and user data into meaningful analytical findings by applying practical SQL concepts such as:

- 🔎 Data filtering
- 📊 Aggregation
- 🗂️ Grouping and sorting
- 🎯 Conditional analysis
- 🔗 Table joins
- 🧩 Subqueries
- 💳 Transaction analysis
- 👥 User analysis
- 📱 App engagement analysis
- 🗺️ State and district-level analysis

### 🎯 Main Goal

> **Raw Data → SQL Queries → Analysis → Business Insights**

---

# 🎯 Project Objectives

<table>
<tr>
<td width="50%">

### 💳 Transaction Analysis

- Analyze transaction counts
- Analyze transaction values
- Identify major transaction categories
- Compare states and districts
- Analyze regional transaction activity

</td>
<td width="50%">

### 👥 User Analysis

- Analyze registered users
- Study user growth
- Identify high-user states
- Compare users with transaction activity
- Analyze geographic user distribution

</td>
</tr>

<tr>
<td>

### 📱 App Engagement

- Analyze app opens
- Identify highly engaged states
- Compare app engagement with transactions
- Study regional engagement

</td>
<td>

### 🗺️ Geographic Analysis

- State-level analysis
- District-level analysis
- High-activity locations
- Low-activity locations
- Regional comparisons

</td>
</tr>
</table>

---

# 🗃️ Dataset Information

| 📌 Attribute | Details |
|---|---|
| 📊 Dataset | PhonePe Pulse Historical Data |
| 📚 Source | Kaggle |
| 📅 Time Period | 2018 – 2022 |
| 🗄️ Database | `phonepe_sql_project` |
| 🐬 Database System | MySQL |
| 🧰 SQL Tool | MySQL Workbench |
| 📍 Geographic Level | State & District |
| 📦 Data Type | Aggregated Data |
| 🔍 Analysis Type | Exploratory & Business Data Analysis |

---

# 🛠️ Tools & Technologies

| Technology | Usage |
|---|---|
| 🐬 **MySQL** | Database and SQL analysis |
| 🧰 **MySQL Workbench** | Query development and execution |
| 📄 **CSV** | Source data format |
| 📚 **Kaggle** | Dataset source |
| 🐙 **GitHub** | Documentation and version control |

---

# 🧠 SQL Concepts Used

```text
SELECT
   ↓
WHERE
   ↓
ORDER BY
   ↓
GROUP BY
   ↓
HAVING
   ↓
CASE
   ↓
JOINS
   ↓
SUBQUERIES
   ↓
AGGREGATION
   ↓
BUSINESS INSIGHTS
```



---

# 🗄️ Database Structure

The project uses **four main tables**.

```text
                    📱 PHONEPE PULSE DATABASE
                             │
             ┌───────────────┼───────────────┐
             │               │               │
             ▼               ▼               ▼
      💳 TRANSACTIONS     👥 USERS       🗺️ GEOGRAPHY
             │               │               │
             ▼               ▼          ┌────┴────┐
   agg_transactions      agg_users       │         │
                                  map_transactions  map_users
```

| Table | Description |
|---|---|
| `agg_transactions` | Aggregated transaction data |
| `agg_users` | Registered users and app-open data |
| `map_transactions` | State/district transaction data |
| `map_users` | State/district user data |

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
🔍 Data Exploration
          │
          ▼
📊 Filtering & Aggregation
          │
          ▼
🔗 Joins & Subqueries
          │
          ▼
🎯 Conditional Analysis
          │
          ▼
💡 Business Findings
```

---

# 📊 Key Insights

## 💳 Transaction Insights

| # | Analysis Area | Finding |
|---:|---|---|
| 01 | 🏙️ Bengaluru Urban | ≈ **611.36M transactions** |
| 02 | 💰 Bengaluru Urban | ≈ **₹7.82T transaction value** |
| 03 | 🏙️ Hyderabad | ≈ **452.56M transactions** |
| 04 | 💰 Hyderabad | ≈ **₹7.74T transaction value** |
| 05 | 🏙️ Pune & Jaipur | Strong transaction performance |
| 06 | 📍 Longding | ≈ **43.12M transactions** |
| 07 | 📍 Ramban | ≈ **₹49.37B transaction value** |
| 08 | 🇮🇳 Maharashtra | Highest analyzed state transaction count |

---

## 👥 User & App Engagement Insights

| # | Analysis Area | Finding |
|---:|---|---|
| 09 | 📈 User Growth | ≈ **256.76%** from 2018–2022 |
| 10 | 👥 Registered Users | **208,417,046** |
| 11 | 📱 App Opens | **10,271,581,941** |
| 12 | 📱 Karnataka & Tamil Nadu | Major app engagement |
| 13 | 👤 Karnataka | Exceeded the analyzed registered-user threshold |

---

## 🌏 Payment & Regional Insights

| # | Analysis Area | Finding |
|---:|---|---|
| 14 | 🤝 Peer-to-Peer Payments | Major transaction contributor |
| 15 | 🛍️ Merchant Payments | Major transaction contributor |
| 16 | 🛍️ Merchant Payments | Exceeded the analyzed transaction-volume threshold |
| 17 | 🌏 Southern Region | Highest analyzed transaction value |
| 18 | 💰 Telangana | Exceeded the analyzed transaction-value threshold |
| 19 | 🧮 Value per Registered User | ≈ **₹456,938** |

---

# 🔥 Key Numbers

<div align="center">

| 📊 Metric | 🔢 Value |
|---|---:|
| 📅 Analysis Period | **2018 – 2022** |
| 👥 Registered Users | **208,417,046** |
| 📱 App Opens | **10,271,581,941** |
| 📈 User Growth | **256.76%** |
| 🏙️ Bengaluru Urban Transactions | **611.36M** |
| 💰 Bengaluru Urban Transaction Value | **₹7.82T** |
| 🏙️ Hyderabad Transactions | **452.56M** |
| 💰 Hyderabad Transaction Value | **₹7.74T** |
| 🧮 Value per Registered User | **≈ ₹456,938** |

</div>

---


# 📁 Recommended Repository Structure

```text
📦 PhonePe-Pulse-SQL-Analytics
│
├── 📁 assets
│   └── 🖼️ phonepe-pulse-logo.png
│
├── 📁 sql
│   └── 📄 phonepe_analysis.sql
│
├── 📁 data
│   └── 📄 README.md
│
└── 📄 README.md
```

---

# 💡 What This Project Demonstrates

### 🔍 Data Exploration
Exploring a real-world aggregated digital-payment dataset using SQL.

### 📊 Data Aggregation
Using `SUM()`, `COUNT()`, `AVG()`, `MAX()` and `MIN()` to create analytical metrics.

### 🎯 Conditional Analysis
Using `CASE`, filters and threshold conditions to classify records.

### 🔗 Relational Analysis
Using joins to connect transaction and user information.

### 🧩 Subquery Analysis
Using subqueries for comparison and threshold-based questions.

### 🗺️ Geographic Analysis
Analyzing payment activity across states, districts and regions.

---

# 📈 Future Improvements

- 📊 Build an interactive **Power BI dashboard**
- 🗺️ Add India state-level map visualizations
- 📈 Create yearly and quarterly trend analysis
- 📱 Perform deeper app-engagement analysis
- ⚡ Add CTEs and Window Functions
- 🐍 Perform exploratory analysis using Python
- 🤖 Explore predictive analytics and machine learning
- 🔄 Build an end-to-end **SQL → Python → Power BI** workflow

---

# 🏆 Project Outcome

This project demonstrates how SQL can be used to turn structured payment data into meaningful insights about:

**Transactions • Users • App Engagement • Geography • Regional Performance**

<div align="center">

### 💜 PhonePe Pulse

**Raw Data → SQL → Analysis → Business Insights**

<br>

<img src="https://img.shields.io/badge/Built%20With-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/Project-SQL%20Analytics-5F259F?style=for-the-badge">
<img src="https://img.shields.io/badge/Dataset-PhonePe%20Pulse-6C63FF?style=for-the-badge">

</div>

---

# 👨‍💻 Author

<div align="center">

## **Yash Talreja**

**Data Analyst | SQL | Power BI | Excel | Python**

📊 Data Analytics • 🐬 SQL • 📈 Power BI • 📗 Excel • 🐍 Python

</div>
