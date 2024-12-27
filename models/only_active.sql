{{config(materialized='table', schema='gold', alias='active_freight')}}

with percentage_freight as(
	select * from {{ref('percentage_freight')}}
    where "If_you_are_executing_any_of_the_freight_tasks_mentioned_before_" NOT LIKE '%execute%'
)

select * from percentage_freight
--where porcentagem >= 20