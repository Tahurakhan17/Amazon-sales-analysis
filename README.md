# 📊 Amazon Sales Analysis | SQL & Excel

> **Data Analyst Portfolio Project** — Exploratory analysis of Amazon product data using SQL and Excel to identify pricing patterns, customer satisfaction trends, category performance, and product-level insights.

---

## 🔎 Project Overview

This project analyzes **1,465 Amazon products across 9 categories** to understand how **pricing, discounts, customer ratings, and review volume** vary across products and categories.

Using **MySQL and Excel**, I transformed raw product-level data into business-focused insights that can help identify:

* High-performing product categories
* Customer satisfaction patterns
* Price and rating relationships
* The impact of discount levels on ratings
* High-demand categories with lower satisfaction
* Products with strong ratings supported by substantial review volume

The project demonstrates my ability to use **SQL to investigate business questions and communicate findings through data-driven insights and dashboards**.

---

## 🎯 Business Questions

The analysis focuses on the following questions:

1. How are products distributed across different price ranges?
2. What is the overall average customer rating?
3. Does product price appear to influence customer ratings?
4. Which categories have the strongest customer satisfaction?
5. Which categories have relatively lower ratings?
6. Do higher discounts correspond to better customer ratings?
7. Which products have the strongest weighted ratings?
8. Which products provide strong ratings relative to customer engagement?
9. Which categories appear expensive but underperform on ratings?
10. Which categories have high customer demand but comparatively lower satisfaction?

---

## 🛠️ Tools & Skills

**Tools**

* 🐬 MySQL
* 📊 Microsoft Excel
* 📝 GitHub

**Technical Skills Demonstrated**

* SQL querying
* Data aggregation
* Data segmentation using `CASE`
* Filtering with `WHERE` and `HAVING`
* `GROUP BY` analysis
* Sorting and ranking
* Aggregate functions: `AVG()`, `SUM()`, `COUNT()`
* Subqueries
* Weighted scoring
* Exploratory Data Analysis
* KPI analysis
* Excel dashboard development
* Business insight generation

---

# 📌 Dataset Overview

| Metric               |         Value |
| -------------------- | ------------: |
| Total Products       |     **1,465** |
| Total Categories     |         **9** |
| Average Actual Price | **₹5,444.99** |
| Minimum Price        |       **₹39** |
| Maximum Price        |  **₹139,900** |
| Average Rating       |  **4.10 / 5** |
| Average Discount     |    **47.69%** |

### Key Variables

| Column                | Description                |
| --------------------- | -------------------------- |
| `product_id`          | Unique product identifier  |
| `product_name`        | Product name               |
| `category`            | Product category           |
| `actual_price`        | Original product price     |
| `discounted_price`    | Discounted selling price   |
| `discount_percentage` | Discount percentage        |
| `rating`              | Customer rating            |
| `rating_count`        | Number of customer ratings |

---

# 📊 Key Findings

## 1. Product Price Distribution

Products were segmented into three price bands:

* **Low:** < ₹1,000
* **Medium:** ₹1,000–₹15,000
* **High:** > ₹15,000

| Price Range | Number of Products |
| ----------- | -----------------: |
| Low         |            **531** |
| Medium      |            **788** |
| High        |            **146** |

### 💡 Insight

The **₹1,000–₹15,000 segment dominates the dataset**, accounting for **788 of 1,465 products (~53.8%)**.

This indicates that the majority of products analyzed fall within the mid-price segment.

---

## 2. Overall Customer Satisfaction

The average product rating across the dataset is:

### ⭐ **4.10 / 5**

This indicates generally positive customer feedback across the products analyzed.

---

## 3. Price vs. Customer Rating

| Price Range | Average Rating |
| ----------- | -------------: |
| Low         |       **4.08** |
| Medium      |       **4.09** |
| High        |       **4.19** |

### 💡 Insight

High-priced products achieved the highest average rating at **4.19**, compared with **4.08** for low-priced products.

However, the difference is relatively small, suggesting that **price alone is not a strong indicator of customer satisfaction**.

---

## 4. Category Performance

Category performance was evaluated using:

* Average rating
* Total reviews
* Number of products

To reduce the impact of categories with very little data, the analysis considered categories with **more than 500 total reviews and more than 10 products**.

### Selected Category Results

| Category                | Products |  Total Reviews | Avg. Rating |
| ----------------------- | -------: | -------------: | ----------: |
| Office Products         |   **31** |    **149,675** |    **4.31** |
| Computers & Accessories |  **453** |  **7,728,689** |    **4.15** |
| Electronics             |  **526** | **15,778,848** |    **4.08** |
| Home & Kitchen          |  **448** |  **2,991,069** |    **4.04** |

### 💡 Insight

**Office Products** recorded the highest average rating among the selected categories at **4.31/5**.

**Home & Kitchen** recorded the lowest average rating among these categories at **4.04/5**.

---

## 5. Discount vs. Customer Rating

Products were grouped into:

* **Low Discount:** < 30%
* **Medium Discount:** 30%–60%
* **High Discount:** > 60%

| Discount Range | Average Rating |
| -------------- | -------------: |
| Low            |       **4.16** |
| Medium         |       **4.09** |
| High           |       **4.06** |

### 💡 Insight

The data shows that products with **lower discounts had higher average ratings**.

Products with discounts below 30% averaged **4.16**, compared with **4.06** for products discounted above 60%.

This suggests that **larger discounts do not necessarily translate into higher customer satisfaction**.

---

# ⭐ Weighted Rating Analysis

A weighted rating was calculated to account for both:

* Product rating
* Number of customer reviews

This helps prevent products with very few reviews from appearing disproportionately strong simply because they have a high raw rating.

### Top Weighted-Rating Product

**Swiffer Instant Electric Water Heater Faucet Tap**

| Metric          |       Value |
| --------------- | ----------: |
| Rating          | **4.8 / 5** |
| Rating Count    |  **53,803** |
| Weighted Rating |    **4.79** |

### 💡 Why This Matters

A rating of 4.8 supported by **53,803 reviews** provides stronger evidence of customer satisfaction than a 4.8 rating based on only a handful of reviews.

---

# 📈 High Demand vs. Customer Satisfaction

Customer demand was measured using total review volume.

### Selected Results

| Category                |  Total Reviews | Avg. Rating |
| ----------------------- | -------------: | ----------: |
| Electronics             | **15,778,848** |    **4.08** |
| Computers & Accessories |  **7,728,689** |    **4.15** |
| Home & Kitchen          |  **2,991,069** |    **4.04** |
| Office Products         |    **149,675** |    **4.31** |

### 💡 Insight

**Electronics** has the highest customer engagement, with approximately **15.78 million reviews**, but its average rating is **4.08**.

**Home & Kitchen** has approximately **2.99 million reviews** while recording a lower average rating of **4.04**.

These categories represent potential areas where improvements in product quality or customer experience could have a meaningful impact.

---

# 📊 Excel Dashboard

An Excel dashboard was created to communicate the analysis visually and provide a quick overview of key metrics and category-level performance.

### Dashboard Highlights

* Product pricing analysis
* Customer rating analysis
* Discount analysis
* Category performance
* Customer engagement
* Key KPIs
  
---

# 🚀 Future Improvements

Potential extensions to this project include:

* Building an interactive **Power BI dashboard**
* Performing deeper price-vs-discount analysis
* Analyzing discounted price vs. customer satisfaction
* Creating category-level profitability metrics if sales/revenue data becomes available
* Adding more advanced statistical analysis
* Automating the analysis pipeline with Python

---

# 👤 Author

**Tahura Khanum**

B.E. — Computer Science & Engineering
**Artificial Intelligence & Machine Learning**

📌 Interested in **Data Analytics, Data Science, Data Engineer**

---
