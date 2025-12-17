# 📊 S&P 500 Stock Analysis Mini Project (2014)

## Summary
This project explores the historical performance of S&P 500 stocks for the year 2014. Using **SQL for data analysis** and **Tableau for visualization**, it examines trends in **closing prices** and **trading volumes** across multiple companies.  

The goal is to transform raw financial data into actionable insights, identify patterns in stock behavior, and present findings in a clear, interactive dashboard format. This project demonstrates how structured analysis and visualizations can support financial decision-making.

---
## Table of Contents
1. [Summary](#summary)
2. [Tools Used](#tools-used)
3. [Dashboard Screenshots](#dashboard-screenshots)
4. [Representative SQL Analysis](#representative-sql-analysis)

---

## Tools Used
- **Tableau** – for interactive dashboards and visualizations  
- **SQL** – for querying, aggregating, and analyzing data  
- **GitHub** – for version control and project presentation  

---

## Dashboard Screenshots

### Dashboard Overview
![Dashboard Overview](dashboard/dashboard_overview.png)
*This overview dashboard presents the key metrics for S&P 500 stocks in 2014, showing trends in both closing prices and trading volume across all tracked companies.*
### Closing Prices
![Closing Prices Chart](dashboard/closing_prices_chart.png)
*This chart visualizes the closing prices for individual stocks over time, highlighting trends, peaks, and dips in stock performance throughout the year.*
### Trading Volume
![Trading Volume Chart](dashboard/trading_volume_chart.png)
*This chart displays the daily trading volume for each stock, helping to identify periods of high market activity and investor interest*
---

## Representative SQL Analysis

See the [`analysis.sql`](sql/analysis.sql) file for full queries:

```sql
-- Average closing price by stock
SELECT stock_symbol, AVG(closing_price) AS avg_price
FROM closing_prices
GROUP BY stock_symbol
ORDER BY avg_price DESC;

-- Total trading volume by stock
SELECT stock_symbol, SUM(trading_volume) AS total_volume
FROM trading_volume
GROUP BY stock_symbol
ORDER BY total_volume DESC;

-- Daily closing price and volume for each stock
SELECT c.date, c.stock_symbol, c.closing_price, v.trading_volume
FROM closing_prices c
JOIN trading_volume v
  ON c.date = v.date
  AND c.stock_symbol = v.stock_symbol
ORDER BY c.date;









