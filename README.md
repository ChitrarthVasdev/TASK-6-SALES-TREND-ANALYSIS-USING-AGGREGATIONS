# 📊 TASK-6-SALES-TREND-ANALYSIS-USING-AGGREGATIONS


## 🎯 Objective
The goal of this task is to examine **monthly sales performance** by aggregating data to calculate:
- Total revenue
- Total number of unique orders

The analysis focuses exclusively on the year **2024** using standard SQL techniques.

---

## 🧰 Tools & Technologies
- **SQL** (MySQL)
- **MySQL Workbench**, **phpMyAdmin**, or CLI
- Dataset: `online retail data (1).csv`

---

## 📁 Dataset Overview

The dataset `online retail data (1).csv` contains detailed records of retail transactions. Key columns relevant to this task include:

| Column Name   | Description                                 |
|---------------|---------------------------------------------|
| `order_id`    | Unique identifier for each order            |
| `order_date`  | Date the order was placed                   |
| `quantity`    | Number of units purchased                   |
| `price`       | Unit price of the product                   |
| *(others)*    | Customer demographics, product info, etc.   |

---

## 📈 Analysis Performed

The monthly sales trend analysis was performed using the following steps:

1. **Date Filtering**  
   All records were filtered to include only those where the `order_date` falls within the year **2024**.

2. **Month and Year Extraction**  
   The `order_date` was broken into separate `order_year` and `order_month` fields to allow grouping by month.

3. **Revenue Calculation**  
   Total monthly revenue was calculated by multiplying `quantity` by `price` and summing the results for each month.

4. **Order Volume**  
   The number of **distinct orders** was counted for each month to determine the order volume.

5. **Sorting**  
   The results were sorted chronologically by `order_year` and `order_month`.

6. **Data Cleaning**  
   `NULL` or missing values in `quantity`, `price`, or `order_id` were handled using default replacements or ignored during aggregation.


## 📊 Insights & Observations

Based on the analysis of monthly sales data from **March to December 2024**:

- 🥇 **August 2024** recorded the **highest revenue** of **$79,070.12**, followed closely by **December** with **$78,432.94**.
- 📦 The **highest number of orders** occurred in **December 2024** (**97 orders**), suggesting strong year-end demand.
- 📉 **March 2024** had the **lowest revenue** ($30,620.98) and the **fewest orders** (40), indicating a slow start to the year.
- 📈 Revenue and order volume **increased steadily from March to May**, showing early momentum.
- 🔁 A **minor dip** was observed in **June and July**, but sales remained relatively strong.
- 🛍️ From **August onward**, revenue stayed consistently high, pointing to **peak season performance** in the second half of the year.
- 📊 The data reflects **strong year-end growth**, which may be attributed to holiday demand or promotional campaigns.

These patterns offer valuable insights for planning future promotions, stock levels, and workforce needs aligned with demand cycles.


## CREATED BY : 
## CHITRARTH VASDEV
