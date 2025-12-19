# 📊 S&P 500 Stock Analysis Mini Project (2014)

## Summary
This project explores the historical performance of S&P 500 stocks for the year 2014. Using **SQL for data analysis** and **Tableau for visualization**, it examines trends in **closing prices** and **trading volumes** across multiple companies.  

## Disclaimer
This project was created for educational and portfolio purposes only. It uses publicly available historical S&P 500 stock data from 2014. The analysis and visualizations are not intended to provide financial, investment, or trading advice.

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
This chart displays the daily trading volume for each stock, helping to identify periods of high market activity and investor interest.
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


Next Steps

This project provides a foundation for analyzing the relationship between trading volume and price movement using historical S&P 500 data. The next phase focuses on expanding analytical depth and translating insights into business- and finance-relevant decisions.

Analytical Enhancements

Extend the analysis beyond 2014 to compare volume–price behavior across different market environments.

Apply rolling averages and volatility metrics to distinguish short-term noise from sustained price movements.

Segment results by sector to evaluate whether volume signals vary across industries and risk profiles.

Business & Financial Insight Development

Translate analytical findings into stakeholder-focused insights, such as implications for market monitoring, risk assessment, or trend identification.

Frame results in the context of financial decision-making (e.g., how volume patterns may inform short-term analysis or longer-term positioning).

Refine visualizations to emphasize clarity, comparability, and actionable takeaways.

Capstone Alignment

Build on the methods and insights from this project as a foundation for an upcoming capstone, with a stronger emphasis on financial interpretation, business impact, and narrative clarity.






