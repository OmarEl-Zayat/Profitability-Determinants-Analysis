# Profitability Determinants Analysis

Statistical analysis of 8,399 sales records to identify why a commercial company was missing its profit targets, and which factors drive profitability.

## Overview

The company wasn't hitting expected profit margins. This project analyzes quantitative factors (order quantity, discount) and qualitative factors (shipping mode, region, customer segment, product category) to find out which ones actually move profit, and where the company should focus.

## Objectives

- Identify which quantitative and qualitative variables significantly affect profit
- Compare mean profit across categories to find under-utilized, high-profit segments
- Provide actionable recommendations for improving profit margins

## Dataset

8,399 sales records with order quantity, discount, profit, shipping mode, region, customer segment, and product category.

## Tools & Technologies

SPSS (version 26)

## Methodology

- Descriptive statistics on order quantity, discount, and profit
- Frequency analysis (pie charts) for qualitative variables
- Compare-means analysis of profit across categories, visualized with bar charts
- Line-graph analysis of profit against order quantity and discount level
- Interpretation of results against prior research on discounting and regional profitability

## Key Insights

- Delivery Truck was the most profitable shipping mode (mean profit ≈ 235) despite being used in only 13.6% of orders, vs. Regular Air (74.7% of orders, mean profit ≈ 176)
- Northwest Territories had the highest mean profit by region (≈255) despite only 4.7% of order volume
- Technology was the most profitable product category (mean profit ≈ 429), far above Office Supplies (≈112) and Furniture (≈68)
- Profit rose with order quantity overall, and peaked around a 0.03 discount rate before declining at higher discounts

## Results / Outcome

Identified specific under-utilized but high-profit segments (Delivery Truck shipping, Northwest Territories, Technology category) and produced concrete recommendations: prioritize these segments, target corporate customers, and use moderate rather than deep discounts.

## Project Structure

```
profitability-analysis/
│
├── README.md
├── data/
│   └── ORDERS.csv
├── scripts/
│   └── profitability_analysis.sps
├── outputs/
│   └── Output1.spv
└── report/
    └── Profitability_Report.docx
```

The SPSS syntax script was extracted directly from the final report's "SPSS Codes" appendix — no commands or logic were altered.

## Skills Demonstrated

Statistical Analysis, Descriptive Statistics, Data Visualization, Data Interpretation, Business Reporting
