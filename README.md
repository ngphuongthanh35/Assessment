# Assessment
Question #1 Generate a query to get the sum of the clicks of the marketing data: 

>select count(clicks) from marketing_data;

Question #2 Generate a query to gather the sum of revenue by geo from the store_revenue table:

>select sum(revenue), store_location
>from store_revenue
>group by store_location;
