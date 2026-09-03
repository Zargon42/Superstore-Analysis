# Superstore Sales & Profit Analysis

Portfolio project using SQL (SQLite) and Power BI to analyse the [Sample Superstore Dataset](https://powerbidocs.com/2019/11/28/power-bi-sample-data-set-for-practice/). The goal was to take raw sales data and convert it into clear insights, answering business questions.

## Dashboard

[dashboard screenshot](powerbi/Superstore_dashboard.png)
Final dashboard showing revenue by sub-category, profit by geographical region, profit over time, and monthly profit per year, overall profit per sub-category. The profit by country chart features drill down functionality to investigate geographic trends at the state and city level. A slicer is also included for filtering by year.

## Business Questions

1. Which sub-categories generate the most revenue?
2. Which countries and states are most/least profitable?
3. Is profit increasing or decreasing over time?
4. Are there recurring seasonal patterns?
5. Where are losses concentrated?

## Key Findings

- Phones generated the highest revenue among sub-categories.
- USA, China and India were the three most profitable countries, while Turkey had the lowest total profit.
- Labels generated the lowest revenue.
- Profit increased every year from 2012 to 2015.
- July showed a recurring profit trough across the four years.
- Losses were concentrated primarily in Tables, followed by Bookcases and Phones.
- Individual product losses occurred across several sub-categories, with the largest identified loss coming from a Machines product.

## Methodology

### Data preparation
- Imported the Superstore dataset into SQLite.
- Converted Sales and Profit from text to numeric values. (Removed "$" and "," characters.)
- Converted dates into SQLite-compatible date values. (dd/mm/yyyy -> YYYY-mm-dd)
- Checked the cleaned data before analysis.

### SQL analysis
SQL analyses were performed corresponding to each business question.
- Revenue (sales) was aggregated by sub-category
- Profit was aggregated by country and state respectively
- Annual profit was calculated along with year over year percentage change
- Monthly profit was extracted for each year to analyse seasonal changes
- Net profit per Sub-Category was extracted as well as analysis of individual loss making products
- Sub-categories contributing greatest gross loss were also identified.

### Power BI
Cleaned data table was imported into Power BI for visualisation.
- 5 charts produced corresponding to each of the business
  - Revenue by Sub-Category (drill down-> product name)
  - Profit by country (drill down -> State -> City)
  - Profit over time
  - Profit per month, divided by year
  - Profit by Sub-Category (drill down -> product name)
 - Slicer filter per year, quarter, month, day
 - Interactive cross filtering between visuals

### Python Analysis (Suplementary)
Brief Correlation analysis between discount and profits among the table sub-category


## Project Structure
```
superstore-analysis/
└── README.md
```


## Tools

- SQL / SQLite
- Power BI
- Python (Marimo) / Pandas
- Git / GitHub

## Dataset

Brief description and source/licensing information.
