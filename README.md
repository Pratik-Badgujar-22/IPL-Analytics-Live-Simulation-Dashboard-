# IPL-Analytics-Live-Simulation-Dashboard-
End-to-end IPL analytics project combining historical dataset with simulated real time data ingestion using Python and PostgreSQL, visualized through an interactive Power BI dashboard with dynamic head-to-head insights and KPI's.

Overview:
This project is an end-to-end IPL analytics dashboard built using Power BI. It combines historical IPL match data with simulated real-time data ingestion using Python and PostgreSQL. The dashboard enables interactive analysis of team performance with dynamic insights.

Key Features:
Interactive Team VS Team (head-to-head) comparison
Dynamic KPI cards(Total Matches, Wins, Win %, Diffrence)
Simulated real-time data updates using Python
Automated insights generation using DAX
Toss Impact analysis
Top performing teams visualization

Tech Stack:
Power BI -- Data Visualization
DAX -- Calculated Measures and Dynamic Insights
PostgreSQL -- Data Storage
Python --  Real Time Simulation script
CSV(Kaggle IPL Dataset) -- Historical data source

Data Pipeline:
Historical IPL dataset loaded from kaggle
Data stored in PostgreSQL database
Python script simulates live matche updates
Power BI connected to dataset for visualization 

How To Use:
Open the .pbix file in Power BI Desktop
Select Team 1 and Team 2 using slicers
View dynamic charts, KPI's, and insights
Observe how data changes based on selection

Key Insight Example:
Chennai Super Kings dominates Royal Challengers Bangalore in head-to-head matches based on historical data.

Project Structure:
IPL_dashboard.pbix -- Power BI dashboard
simulate_live.py -- Python script for data simulation
dataset.csv -- IPL dataset
README.md -- Project Documentation

Learning Outcome:
Built an end-to-end data analysis project
Implemented DAX for dynamic calculations
Designefd interactive dashboards
Simulated real time data pipelines

Note:
This project uses simulated real-time data not actual live IPL feeds.

Contact:
Feel free to connect for feedback or collabration.
