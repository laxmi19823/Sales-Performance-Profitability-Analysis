# Sales Performance & Profitability Analysis

## Project Overview
This project analyzes a retail sales dataset using SQL to understand sales performance, profitability, and customer purchasing patterns across regions, product categories, and shipping strategies.

The objective is to identify high-performing markets, detect loss-making products, and understand how discounts and shipping methods influence overall business profitability.

---

# Dataset
The analysis uses the **Superstore Sales dataset** from Kaggle.

Key fields:

- Ship Mode  
- Segment  
- Country  
- City  
- State  
- Postal Code  
- Region  
- Category  
- Sub-Category  
- Sales  
- Quantity  
- Discount  
- Profit  

---

# Tools Used

- SQL  
- PostgreSQL  
- Excel 
- GitHub for documentation  

---

# Business Questions

- Which cities generate the most revenue?  
- Which regions are the most profitable?  
- Which sub-categories cause losses?  
- Which product categories generate the highest margins?  
- How do discounts and shipping strategies affect profits?  

---

# Analysis & Insights

## 1. Top Cities by Revenue
**Observation:** Certain cities generate much higher revenue.  
**Insights:**  
- Major cities like New York or Los Angeles dominate revenue.  
- Smaller cities in the top 10 indicate strong localized demand.

---

## 2. Region with Highest Profit
**Observation:** Profitability varies across regions.  
**Insights:**  
- West region generates the highest profit, showing strong product-market fit.  
- Low-profit regions may have operational inefficiencies.

---

## 3. Sub-Categories Causing Losses
**Observation:** Some sub-categories show negative profit.  
**Insights:**  
- Tables and bulky products often lose money due to shipping costs.  
- Heavy discounts reduce margins.

---

## 4. Profit Margin by Category
**Observation:** Margins differ across categories.  
**Insights:**  
- Technology products generally have the highest profit margins.  
- Furniture tends to have lower margins due to logistics.

---

## 5. Most Sold Products (by Quantity)
**Observation:** Some products sell much more than others.  
**Insights:**  
- Binders and paper are top-selling items.  
- High volume does not always equal high profit.

---

## 6. Average Discount by Category
**Observation:** Discounts vary across categories.  
**Insights:**  
- Furniture receives larger discounts.  
- High-discount categories often correlate with lower profits.

---

## 7. Sales by Customer Segment
**Observation:** Revenue varies by segment.  
**Insights:**  
- Consumers drive most revenue.  
- Corporate customers may yield higher profit per order.

---

## 8. Shipping Mode Usage
**Observation:** Some shipping methods are more popular.  
**Insights:**  
- Standard Class is most used due to low cost.  
- Same Day shipping is rare, for urgent orders only.

---

## 9. Top Performing States
**Observation:** Some states contribute higher revenue and profit.  
**Insights:**  
- California and New York dominate sales.  
- Some states have high revenue but low profit due to discounts.

---

## 10. Profit Ranking of Categories
**Observation:** Categories can be ranked by profit.  
**Insights:**  
- Technology typically ranks first.  
- Furniture often ranks last due to low margins.

---

## 11. Profit by Ship Mode
**Observation:** Shipping affects profit.  
**Insights:**  
- Standard Class generates high profit due to lower shipping costs.  
- Same Day shipping may reduce margins.

---

## 12. Category Contribution to Total Sales
**Observation:** Revenue share differs by category.  
**Insights:**  
- Technology contributes the most to total sales.  
- Furniture contributes less revenue but may require heavy discounts.

---

## 13. Top States by Quantity Sold
**Observation:** Certain states buy more products.  
**Insights:**  
- High quantity indicates strong demand.  
- Low-profit states may reflect aggressive discounting.

---

## 14. Discount Impact on Profit
**Observation:** Discounts affect profitability.  
**Insights:**  
- High discounts reduce profit margins.  
- Moderate discounts can boost sales without hurting profit too much.

---

## 15. Regional Sales Ranking
**Observation:** Regions can be ranked by sales.  
**Insights:**  
- Top-ranked regions contribute most revenue.  
- Lower-ranked regions may need marketing or distribution improvements.

---

# How to Run the SQL Queries

1. Load `SalesData.csv` into a table called `sales_data`.  
2. Open `queries.sql` in PostgreSQL or any SQL editor.  
3. Run the queries one by one.  
4. Compare results with insights in this README.

---

# Key Takeaways

- Focus marketing on top-performing cities and regions.  
- Review loss-making sub-categories and optimize discounts/logistics.  
- Promote high-margin categories like Technology; manage low-margin categories like Furniture carefully.  
- Moderate discounts strategically to balance sales volume and profitability.  
- Optimize shipping methods for cost-efficiency and timely delivery.
