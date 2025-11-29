# Bike_Sales_Project
SQL-based sales analysis with Power BI dashboard visualization using a bike sales dataset.

# 🚴‍♂️ Bike Sales Analysis

## 📌 Objective
This project analyzes a bike-sharing dataset to:

- understand rider behavior  
- measure revenue & profit performance  
- identify trends across seasons, hours, and rider types  
- combine data from multiple sources into a single analytical model  

The goal is to practice SQL data modeling, KPI calculations, and Power BI dashboard development.

---

## 🛠 Tech Stack
- **SQL Server** (table merging, cleaning, KPI calculations)  
- **Power BI** (modeling, transformations, visual dashboards)  

---

## 🗄 SQL Data Preparation

### **Table Merging**
Two separate yearly datasets (`bike_share_yr_0` and `bike_share_yr_1`) were merged using `UNION ALL`, then joined with a cost dataset to calculate revenue and profit.

📊 SQL Analysis
KPIs & Intermediate Analysis

(SQL scripts include these queries.)

total riders per season
average price or revenue per rider type
highest revenue hour
total profit by weekday
rider count trend by year
weekend vs weekday rider comparison
top profitable months
revenue by season and rider type

📊 Power BI Report

In Power BI:

columns were cleaned and transformed

data types corrected (string → int, date conversions, etc.)

relationships validated

measures created for revenue, profit, and rider KPIs

dashboard pages built for time analysis, rider segmentation, and performance insights

Screenshots are available in the /screenshots folder.

🔑 Key Insights

Seasonal Trends: Seasonal differences strongly influence rider volume.

Rider Type Behavior: Rider type impacts average spend and revenue contribution.

Hourly Peaks: Midday hours show the highest revenue.

Profitability: Certain months and seasons deliver significantly higher profit.

(Your actual insights can be adjusted after dashboard exploration.)

✅ Conclusion

This project strengthened my skills in:

SQL data modeling (joins, unions, CTEs)

creating business KPIs

performing time-based and categorical analysis

building interactive dashboards in Power BI

It demonstrates my ability to merge raw data, calculate performance metrics, and present insights clearly using modern analytics tools.
