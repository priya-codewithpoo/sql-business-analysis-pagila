# 📊 SQL Business Analysis Project (Pagila Dataset)

## 🔍 Project Overview

This project demonstrates **corporate-level SQL analysis** using the **Pagila (DVD Rental) database**. The goal was to simulate **real-world business questions** and solve them using advanced SQL concepts, focusing on *insights* rather than just queries.

The project is structured as **8 independent, high-impact business questions**, each written in a separate SQL file for clarity and professionalism. Some questions are split into multiple files when analysis requires both detail and summary.

---

## 🎯 Objectives

* Apply SQL to realistic business scenarios
* Demonstrate strong understanding of joins, aggregations, and window functions
* Think like a data analyst by connecting SQL output to business decisions

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
- [8_anomaly_detection.sql](./08_anomaly_detection.sql)

Each file includes:

* Business goal
* Key SQL techniques used
* Well-commented SQL query

---

## 📈 Business Questions Covered

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
   Segment customers into Gold, Silver, and Bronze based on spending. Split into:

   * Detail file → shows individual customer classification
   * Summary file → aggregates counts and revenue per segment

8. **Anomaly Detection**
   Identify unusual customer behavior such as long rentals or abnormal activity.

---

## 🧠 Key Learnings

* Translating business problems into SQL queries
* Choosing appropriate SQL techniques based on the problem
* Writing clean, readable, and scalable SQL
* Understanding when advanced features (like window functions) add value

---

## 📝 Notes

* This project focuses on **ad-hoc business analysis**, where direct queries and CTE-style logic are more suitable.

---
## 🏁 Conclusion

This project demonstrates how SQL can be used to solve real-world business problems through structured, insight-driven analysis. By answering high-impact questions using advanced SQL techniques, the project reflects practical analytics work commonly performed in corporate environments.

