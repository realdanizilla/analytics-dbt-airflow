with filtered as(
	select * from {{ref('percentage_freight')}}
	where "If_you_are_executing_any_of_the_freight_tasks_mentioned_before_"  <> "I don't execute freight-related tasks"
)

select * from filtered