#  IPL Analytics Live Simulation Dashboard

![Python](https://img.shields.io/badge/Python-3.10-blue?logo=python)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Processing-lightgrey?logo=pandas)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-316192?logo=postgresql)
![Power BI](https://img.shields.io/badge/PowerBI-Dashboard-F2C811?logo=powerbi)
![Status](https://img.shields.io/badge/Status-Active-brightgreen)
![License](https://img.shields.io/badge/License-MIT-blue)

> A Business Intelligence dashboard that simulates IPL match outcomes using historical data (2008–2025), enabling head-to-head team analysis, win percentage benchmarking, and data-driven strategic insights using Python, PostgreSQL, and Power BI.

---

##  Business Problem Statement

IPL teams and analysts often work with scattered match data that makes head-to-head comparison, dominance analysis, and performance benchmarking difficult. Manual analysis is time-consuming and does not provide a clear dashboard view for fast decision-making.

This project solves that problem by transforming static IPL match data into a structured analytics dashboard with simulation logic. It presents team-vs-team insights, win percentage trends, and dominance metrics in an interactive Power BI report.

---

##  Project Objective

- Build an end-to-end analytics workflow using Python, SQL, PostgreSQL, and Power BI
- Clean and transform raw IPL data from Kaggle CSV files
- Store structured data in PostgreSQL for analysis
- Create an interactive dashboard for head-to-head team performance analysis
- Simulate live dashboard behavior using timer-delay logic
- Generate business-friendly KPI insights for quick interpretation

---

##  Tech Stack

| Tool / Technology | Purpose |
|---|---|
| Python 3.10 | Data processing and simulation logic |
| Pandas | Data cleaning, formatting, sorting, transformation |
| SQL | Querying and relational logic |
| PostgreSQL | Database storage and structured data management |
| Power BI | Interactive dashboard and KPI visualizations |
| CSV Files | Static IPL dataset source |
| Kaggle | Dataset source platform |

---

##  Files Used

- Python files: `.py`
- Database file: `database_setup.sql`
- Data source: CSV files
- Dashboard tool: Power BI
- Requirements file: Not available

---

##  Data Pipeline

```text
Kaggle CSV Data
   ↓
Python + Pandas Cleaning
   ↓
Formatting + Sorting + Null Removal
   ↓
Load into PostgreSQL
   ↓
Power BI Dashboard
   ↓
Simulation with Timer Delay
```

### Data Cleaning Steps
- Removed null values
- Applied formatting corrections
- Sorted the dataset for structured analysis

---

##  Dashboard Features

### Visuals Included
- Stacked column chart
- Stacked bar chart
- KPI cards

### Filters
- By Team
- By IPL Season

### IPL Season Coverage
- 2008 to 2025

### Data Type
- Static historical data
- Simulated dashboard behavior using timer delay

---

##  KPI Metrics

- Total Teams
- Team 1
- Team 2
- Win %
- Win Difference
- Winner Team
- KPI text card showing which team dominates the other by a specific number of wins

---

##  Key Findings

- Win percentage helps identify which team performs better in a selected head-to-head comparison
- Win difference clearly shows the dominance gap between Team 1 and Team 2
- Head-to-head winner analysis highlights which franchise has historically won more matches
- The winner team name updates dynamically based on the selected teams
- KPI text cards improve stakeholder understanding by directly stating which team dominates the other and by how many wins

---

##  STAR Project Summary

| STAR Element | Description |
|---|---|
| Situation | IPL match data was available in static format and did not provide a direct way to analyze team rivalries or dominance trends |
| Task | Build a dashboard that can compare teams, track win percentage, and simulate a more dynamic analytics experience |
| Action | Cleaned Kaggle CSV data using Pandas, stored it in PostgreSQL, used SQL for structuring analysis, and built an interactive Power BI dashboard with KPI cards, charts, and filters |
| Result | Created a dashboard that allows users to analyze IPL team rivalries from 2008 to 2025 with clear KPI-driven insights and simulation-based interaction |

---

##  How to Use the Project

Since this is a Power BI dashboard project, the main way to use it is:

1. Open the dataset and database setup files
2. Run the Python scripts used for cleaning and preparing the data
3. Load the structured data into PostgreSQL
4. Connect Power BI to PostgreSQL or the processed dataset
5. Open the Power BI dashboard file and interact with the visuals

### Command Guidance
If your `.py` file is used for data preparation, the command is usually:

```bash
python filename.py
```

If your dashboard is only in Power BI, there is no special terminal run command like Streamlit. You mainly open the `.pbix` file in Power BI Desktop and refresh the data connection.

---

##  Suggested Project Structure

```text
IPL-Analytics-Live-Simulation-Dashboard/
│
├── data/
├── scripts/
├── database_setup.sql
├── dashboard/
├── assets/
└── README.md
```

---

##  Future Improvements

- Add real-time live IPL API integration
- Include player-level KPIs such as strike rate and economy rate
- Add predictive analytics for match winner prediction
- Publish the dashboard through Power BI Service
- Add more advanced simulation controls

---

##  Skills Demonstrated

- Data Cleaning
- Data Transformation
- SQL Querying
- PostgreSQL
- Dashboard Development
- KPI Design
- Business Intelligence
- Data Visualization
- Head-to-Head Analysis
- Simulation-Based Reporting
- Power BI
- Python
- Pandas

---

##  Connect With Me

**Pratik Badgujar**

 Email: badgujarp121@gmail.com  
 [LinkedIn](https://www.linkedin.com/in/pratikbadgujar22/)  
 [GitHub](https://github.com/Pratik-Badgujar-22)

---

> This project highlights practical data analytics skills in Python, SQL, PostgreSQL, and Power BI, with a strong focus on KPI dashboards, business intelligence, and sports analytics use cases.
