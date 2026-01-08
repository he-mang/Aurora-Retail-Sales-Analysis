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
With only **3% of customers** generating almost **16% of revenue**, Aurora's financial health is heavily reliant on a small elite group.
- **The Risk of Churn:** If even two of these top five customers switch to a competitor, Aurora loses nearly **7% of its total revenue** instantly. The "Cost of Loss" for these individuals is exponentially higher than for a standard user.
- **The "Whale" Effect:** These customers likely have a much higher **Average Order Value (AOV)** and purchase frequency, making them the most efficient segment to market to.

- **Growth Strategy:**
  - White Golve loyalty programs can be implemented and early-access perks can be given for the 3% segment to maximize Lifetime Value (LTV).
  - High-value customers are often brand advocates. Incentivize this 3% to refer peers within their professional or social circles through high-end referral rewards, effectively lowering your Customer Acquisition Cost (CAC).

### 3. Sales Follow a Predictable Seasonal Pattern
Monthly sales analysis across 2022–2023 reveals:
- Consistent Q4 revenue surges, with October 2022 ($64,945) as the highest-performing month
- Repeated underperformance during February and July

**Implication for Aurora:**  
Inventory procurement, marketing spend, and promotional calendars should be aligned with predictable demand cycles.

### 4. Transaction Value Is Stable Across Categories
Average Transaction Value (ATV) is remarkably consistent (~$450) across all categories.
| Category    | Avg Transaction Value |
| ----------- | --------------------- |
| Beauty      | 469                   |
| Electronics | 459                   |
| Clothing    | 444                   |

This proves that revenue disparities are driven by transaction volume, not pricing power.

**Implication for Aurora:**  
Implement automated re-engagement campaigns (e.g., "Time to Restock") and volume-based incentives to increase the number of annual orders per customer.

### 5. Evening Hours Represent the Primary Demand Window
Time-of-day segmentation shows:
| Time of Day | Transactions | Revenue |
| ----------- | ------------ | ------- |
| Evening     | 1,062        | 475,940 |
| Morning     | 548          | 256,410 |
| Afternoon   | 377          | 175,880 |

52% of total revenue is generated during the Evening window ($475,940). Morning and Afternoon combined contribute less than the Evening peak alone.

**Implication for Aurora:**  
- Schedule email blasts and ad spend to hit between 6:00 PM – 10:00 PM.
- Optimize server load for peak traffic and align customer support availability with evening surges.

---

## Strategic Recommendations for Aurora Retail Co.
- **Scale the Beauty "Growth Lever":** Transition the Beauty category into a **subscription/replenishment model**. Since average spend is already high ($469), focus on recurring frequency to turn Beauty into a predictable revenue pillar.
- **VIP "Whale" Retention:** Implement a tiered loyalty program for the top 3% of customers who drive 16% of revenue. Offer "Early Access" to Q4 collections to lock in this high-value revenue before the peak season.
- **Tactical "Golden Hour" Operations:** Optimize staffing and server capacity for the **Evening demand peak** (52% of revenue). Schedule marketing email blasts and "Flash Sales" specifically for the 6 PM–10 PM window to maximize conversion.
- **Seasonal Inventory Agility:** Use the stable Average Transaction Value data to forecast Q4 inventory. Focus on **volume availability** rather than price-point adjustments, as transaction volume is your primary driver for revenue growth.

---

## Final Note
This project simulates a real-world analytics engagement, demonstrating how SQL can be used to transform raw transaction data into strategic business insight.

---

## Contact
**Author:** Hemang Chaudhary

**[LinkedIn](https://www.linkedin.com/in/hemangchaudhary)**

























