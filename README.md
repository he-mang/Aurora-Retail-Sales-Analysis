# Aurora-Retail-Sales-Analysis

**Client:** Aurora Retail Co.  
**A Data Analysis Project by:** Hemang Chaudhary  
**Tools Used:** SQL (Aggregations, CASE Statements, Date Functions)  
**Dataset:** Fictional retail sales dataset

---


## Business Context
Aurora Retail Co. is a mid-sized retail business operating across multiple product categories. While Aurora consistently caputred transaction-level data, leadership lacked clarity on:
- Which categories and customers were driving revenue
- How sales performance evolved over time
- When operational demand was highest

Decisions related to inventory, promotions, and staffing were being made without a consolidated analytical view.  
This analysis was commissioned to convert raw transactional data into **decision-ready insights** using SQL.

---

## Project Mandate
The objective of this engagement was to answer four core business questions for Aurora’s leadership:
- What is the overall scale and revenue footprint of the business?
- Which product categories and customers contribute the most value?
- Are there predictable seasonal or temporal demand patterns?
- Where should operational and strategic focus be concentrated?

All findings were derived directly from Aurora’s transactional database.

---

## Business Overview (Baseline Metrics)
Initial aggregation of Aurora's sales data established the following baseline:
- **Customers:** 155
- **Transactions:** 1,987
- **Total Revenue:** $908,230

This baseline provided the context required to evaluate revenue concentration, customer value, and demand patterns.

---

## Key Findings & Business Insights
### 1. Revenue Is Concentrated in Two Core Categories
Category-level revenue aggregation shows that Aurora’s revenue is heavily concentrated:
| Category    | Revenue |
| ----------- | ------- |
| Electronics | 311,445 |
| Clothing    | 309,995 |
| Beauty      | 286,790 |

#### i. Revenue Concentration Risk
69% of total revenue is tied to **Electronics and Clothing**, creating a high dependency on just two sectors. This can be mitigated by utilizing cross-selling (bundling Electronics with accessories) to maximize the high Product-Market Fit in these categories.

#### ii. Maximizing the "Beauty" Growth Lever
The **Beauty** category is a close third and offers the highest potential for recurring revenue.  
Implementing a **subscirption-based model** (replenishment) for Beauty products to build predictable, long-term cash flow that offsets the seasonal nature of Electronics would be a good solution.

### 2. A Small Customer Segment Drives Disproportionate Value
Customer lifetime value analysis reveals a strong skew in revenue contribution:
- The **top 5 customers generate $148,470**, accounting for ~16% of Aurora’s total revenue
- These customers represent only **3% of the overall customer base**




















































