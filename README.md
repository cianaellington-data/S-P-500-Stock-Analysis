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
5. [Key Insights](#key-insights)

---

## Tools Used
- **Tableau** – for interactive dashboards and visualizations  
- **SQL** – for querying, aggregating, and analyzing data  
- **GitHub** – for version control and project presentation  

---

## Dashboard Screenshots

### Dashboard Overview
![Dashboard Overview](dashboard/dashboard_overview.png)

### Closing Prices
![Closing Prices Chart](dashboard/closing_prices_chart.png)

### Trading Volume
![Trading Volume Chart](dashboard/trading_volume_chart.png)

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




--| Insight Category                  | Details                                                                                                     |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **High-performing stocks**        | Identified top stocks with the highest average closing prices in 2014.                                      |
| **Trading activity trends**       | Highlighted the most actively traded stocks, revealing market liquidity.                                    |
| **Volume vs. price relationship** | Observed correlations between trading volume spikes and price changes, indicating market activity impact.   |
| **Monthly market behavior**       | Detected seasonal/monthly trends in stock performance, useful for short-term analysis.                      |
| **Volatility indicators**         | Noted periods of increased price fluctuation, highlighting risk and stability factors.                      |
| **Visualization impact**          | Tableau dashboards provide a clear, interactive overview to quickly spot patterns.                          |
| **Data-driven decision-making**   | Demonstrates how raw financial data can be transformed into actionable insights for strategy and reporting. |









