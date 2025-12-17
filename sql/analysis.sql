-- analysis.sql
-- S&P 500 Stock Analysis (2014)

-- 1. Average closing price by stock
SELECT stock_symbol, AVG(closing_price) AS avg_price
FROM closing_prices
GROUP BY stock_symbol
ORDER BY avg_price DESC;

-- 2. Total trading volume by stock
SELECT stock_symbol, SUM(trading_volume) AS total_volume
FROM trading_volume
GROUP BY stock_symbol
ORDER BY total_volume DESC;

-- 3. Daily closing price and volume for each stock
SELECT c.date, c.stock_symbol, c.closing_price, v.trading_volume
FROM closing_prices c
JOIN trading_volume v
  ON c.date = v.date
  AND c.stock_symbol = v.stock_symbol
ORDER BY c.date;
