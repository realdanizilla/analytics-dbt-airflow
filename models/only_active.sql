{{config(materialized='table', schema='gold', alias='active_freight')}}

with percentage_freight as(
	select * from {{ref('percentage_freight')}}
    where percentage >= 20
)

select * from percentage_freight
--where porcentagem >= 20