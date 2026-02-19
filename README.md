# 📦 Supply Chain Analytics Project

## 📌 Project Overview

This project demonstrates an **end-to-end supply chain analytics workflow** using **PostgreSQL, SQL, Python automation, and Power BI**.

The goal of the project is to analyze **order fulfillment, shipping performance, profitability, regional trends, and time-based patterns**, while ensuring **data quality and reliability** through structured validation checks.

All transformations are **SQL-driven**, with Python used only for **automation and export**, following real-world analytics best practices.

---

## 🛠️ Tech Stack

* **Database:** PostgreSQL
* **Query Language:** SQL
* **Automation:** Python (pandas, SQLAlchemy)
* **Visualization:** Power BI
* **Version Control:** Git & GitHub

---

## 🗂️ Project Structure

```
supply-chain-analytics/
│
├── sql/
│   ├── 01_data_load_and_cleaning.sql
│   ├── 02_data_quality_checks.sql
│   ├── 03_shipping_analysis.sql
│   ├── 04_profit_analysis.sql
│   ├── 05_region_analysis.sql
│   ├── 06_time_trends.sql
│   └── 07_final_kpis.sql
│
├── python/                             (In progress)
│   ├── export_analytics_outputs.py
│   └── requirements.txt
│
├── outputs/
│   ├── data_quality_summary.csv
│   ├── monthly_sales_trend.csv
│   ├── shipping_delay_analysis.csv
│   └── profit_by_region.csv
│
├── powerbi/                            (In progress)
│   └── supply_chain_dashboard.pbix
│
└── README.md
```

---

## ✅ Data Quality Framework

A dedicated data quality layer was implemented to ensure data reliability before analysis.

**Checks include:**

* Null completeness for critical columns
* Invalid order vs shipping dates
* Negative profit detection
* Late delivery risk consistency validation
* Duplicate order ID detection

All checks are consolidated into a **single monitoring view**:

```sql
data_quality_summary
```

This approach mirrors real-world analytics pipelines where **data trust comes before insights**.

---

## 📊 Analytics & Insights

The following analytical views were built:

### 🚚 Shipping Analysis

* Average shipping delay
* Late delivery rates
* Performance by shipping mode

### 💰 Profitability Analysis

* Profit per order
* Profit margin trends
* Loss-making order identification

### 🌍 Regional Analysis

* Sales and profit by region
* Market-level performance comparison

### ⏱️ Time Trends

* Monthly sales trends
* Seasonal demand patterns

### 📈 Executive KPIs

A final KPI view summarizes overall business performance:

* Total orders
* Total sales
* Total profit
* Average profit margin
* Late delivery rate

---

## 🐍 Python Automation                          (In progress)

Python is used **only for orchestration**, not transformation.

The automation script:

* Connects to PostgreSQL
* Executes finalized analytics views
* Exports clean CSV outputs
* Generates a time-series plot for reporting

This keeps the pipeline:

* Reproducible
* Maintainable
* SQL-first (industry best practice)

---

## 📉 Power BI Dashboard                          (In progress)

The Power BI dashboard provides:

* Executive KPI summary
* Shipping performance visualization
* Profit and regional insights
* Time-based trend analysis

*(Power BI file excluded from version control due to binary size and best practices.)*

---

## 🔐 Data Privacy

* Raw source data is **not included** to protect sensitive customer information
* Only aggregated and analytical outputs are shared

---

## 🚀 Key Takeaways

* Built a **production-style analytics pipeline**
* Applied **data quality validation before analysis**
* Used **SQL for core transformations**
* Used **Python for automation only**
* Delivered insights through **Power BI dashboards**

---

## 📬 Contact

If you’d like to discuss this project or similar analytics work, feel free to connect.


