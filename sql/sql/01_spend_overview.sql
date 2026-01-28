-- 01_spend_overview.sql
-- Objective: Analyze total and category-level spending

SELECT
    category,
    SUM(actual_spend) AS total_actual_spend,
    SUM(budget_spend) AS total_budget_spend
FROM spend_data
GROUP BY category
ORDER BY total_actual_spend DESC;
