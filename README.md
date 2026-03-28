# 📊 Retail Database Optimization & Customer Analytics

## Customer Segmentation Summary
<img width="681" height="144" alt="Customer_Segmentation_Summary" src="https://github.com/user-attachments/assets/a32b4874-bc7a-47e5-ba37-4def287e32ec" />

**Aggregated SQL summary of customer segments, identifying 'Silver' users as the primary revenue driver ($49k+).**

---

## 💡 Project Summary

This project uses PostgreSQL to analyze retail operations and customer behavior, generating actionable insights on revenue drivers, customer segmentation, and business performance using advanced SQL techniques.

---

## 🔍 Project Overview

This project focuses on solving real-world retail business problems using SQL by analyzing customer transactions, store performance, and product trends. It translates complex queries into actionable insights that support revenue growth, customer retention, and operational efficiency.

---

## 🎯 Objectives

* Analyze customer behavior to identify high-value segments and revenue drivers
* Evaluate store, product, and employee performance to uncover optimization opportunities
* Apply advanced SQL techniques to generate business-critical insights

---

## 🛠 Tools & Technologies

* **Database:** PostgreSQL
* **Dataset:** Pagila (DVD Rental sample database)
* **Concepts Used:**

  * Complex JOINs
  * Aggregations & GROUP BY
  * Window Functions (RANK, LAG, running totals)
  * CASE WHEN logic
  * Date & time analysis
  * Business-driven metrics

---

## 📂 Project Structure

Each question is saved in a **separate SQL file**. Some multi-step questions have both detail and summary files:

- [1_highest_spending_customers.sql](./1_highest_spending_customers.sql)
- [2_running_total_revenue.sql](./2_running_total_revenue.sql)
- [3_store_performane.sql](3_store_performance.sql)
- [4_film_popularity_trend.sql](./4_film_popularity_trend.sql)
- [5_employee_performance.sql](./5_employee_performance..sql)
- [6_category_profitability.sql](./6_category_profitability.sql)
- [7_customer_segmentation_detail.sql](./7_customer_segmentation_detail.sql)
- [7_customer_segmentation_summary.sql](./7_customer_segmentation_summary.sql)
- [8_anomaly_detection.sql](./8_anomaly_detection.sql)

Each file includes:

* Business goal
* Key SQL techniques used
* Well-commented SQL query

---

## 📈 Business Questions Covered

The analysis addresses key business problems across customer analytics, revenue trends, and operational performance:

1. **Top 10 Highest-Spending Customers**
   Identify VIP customers based on total spend and rentals.

2. **Running Total Revenue**
   Track cumulative customer revenue month-over-month.

3. **Store Performance**
   Compare Store 1 vs Store 2 using revenue and rental metrics.

4. **Film Popularity Trend Analysis**
   Analyze year-over-year rental trends for films.

5. **Employee Performance**
   Rank staff members based on revenue generated and rentals handled.

6. **Category Profitability Analysis**
   Determine which film categories generate the highest revenue.

7. **Customer Segmentation**
- Segmented customers into Gold, Silver, and Bronze tiers based on spending behavior.

- Identified Silver customers as the primary revenue contributors ($49K+), highlighting a mid-tier segment with high business impact
- Enabled targeted marketing and retention strategies based on customer value
   
8. **Anomaly Detection**
   Identify unusual customer behavior such as long rentals or abnormal activity.

---

## 💡 Key Insights

* Identified mid-tier (Silver) customers as the largest revenue contributors, not top-tier customers
* Found variations in store performance, highlighting opportunities for operational optimization
* Analyzed category-level profitability to identify high-performing product segments
* Detected anomalies in rental behavior, improving data quality and risk identification

---

## 🧠 Key Learnings

* Translating business problems into SQL queries
* Choosing appropriate SQL techniques based on the problem
* Writing clean, readable, and scalable SQL queries
* Understanding when advanced features (like window functions) add value

---

## 🏁 Conclusion

This project demonstrates how advanced SQL can be used to solve real-world business problems by transforming transactional data into actionable insights. It highlights the ability to analyze customer behavior, identify revenue opportunities, and support data-driven business decisions.








