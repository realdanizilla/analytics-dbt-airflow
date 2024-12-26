{{config(materialized='table', schema='gold', alias='percentage_freight')}}

WITH Total AS (
    SELECT SUM(count) AS total_count
    FROM (
    	SELECT 
			"If_you_are_executing_any_of_the_freight_tasks_mentioned_before_",
			count(*) as count
		FROM {{source('bronze', 'google_sheetsSheet1')}}
		group by "If_you_are_executing_any_of_the_freight_tasks_mentioned_before_")
)
SELECT 
    "If_you_are_executing_any_of_the_freight_tasks_mentioned_before_",
    count,
    (count::numeric / total.total_count * 100) AS percentage
FROM 
    (SELECT 
		"If_you_are_executing_any_of_the_freight_tasks_mentioned_before_",
		count(*) as count
	FROM {{source('bronze', 'google_sheetsSheet1')}}
	group by "If_you_are_executing_any_of_the_freight_tasks_mentioned_before_"),
    Total
