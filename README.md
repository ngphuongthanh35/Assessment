# Assessment
Question #1 Generate a query to get the sum of the clicks of the marketing data: 

>select count(clicks) from marketing_data;

Question #2 Generate a query to gather the sum of revenue by geo from the store_revenue table:

>select sum(revenue), store_location
>from store_revenue
>group by store_location;

Question #3 Merge these two datasets so we can see impressions, clicks, and revenue together by date and geo. Please ensure all records from each table are accounted for.

