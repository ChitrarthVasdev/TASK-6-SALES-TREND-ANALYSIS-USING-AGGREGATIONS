USE data;

-- Step 1: Select the year and month from the order_date using EXTRACT
-- This allows us to group results by month and year
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,         -- Extracts year from order_date
    EXTRACT(MONTH FROM order_date) AS order_month,       -- Extracts month from order_date

    -- Step 2: Calculate total monthly revenue by multiplying quantity with price
    SUM(quantity * price) AS total_revenue,              -- Total revenue for each month

    -- Step 3: Count distinct orders to measure order volume
    COUNT(DISTINCT order_id) AS total_orders             -- Number of unique orders for each month

-- Step 4: Specify the source table
FROM
     `online retail data (1)`

-- Step 5: Filter data to include only orders from a specific time range
WHERE
    order_date BETWEEN '2024-01-01' AND '2024-12-31'     -- Limit analysis to the year 2024

-- Step 6: Group the results by year and month for aggregation
GROUP BY
    order_year, order_month

-- Step 7: Sort results chronologically
ORDER BY
    order_year, order_month;
    
    
    




