-- 1. OVERALL BUSINESS KPIs
-- Calculates total revenue, total profit, and average profit margin.
SELECT 
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Avg_Profit_Margin_Pct
FROM SampleSuperstore;

-- 2. PROFITABILITY BY SUB-CATEGORY
-- Identifies high-revenue but negative-margin products (e.g., Bookcases).
SELECT 
    Sub_Category,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Pct
FROM SampleSuperstore
GROUP BY Sub_Category
ORDER BY Total_Revenue DESC;

-- 3. TOP 10 STATES BY REVENUE
-- Geolocation performance ranking.
SELECT 
    State,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM SampleSuperstore
GROUP BY State
ORDER BY Total_Revenue DESC
LIMIT 10;