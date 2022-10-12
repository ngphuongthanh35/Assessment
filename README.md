# Assessment
Question #1 Generate a query to get the sum of the clicks of the marketing data: 

>select sum(clicks) from marketing_data;

Question #2 Generate a query to gather the sum of revenue by geo from the store_revenue table:

>select sum(R.revenue),S.geo from store_revenue R join marketing_data S on S.id=R.id group by S.geo;

Question #3 Merge these two datasets so we can see impressions, clicks, and revenue together by date and geo. Please ensure all records from each table are accounted for.
>select sum(R.revenue),S.impressions ,S.clicks,S.date, S.geo from store_revenue R join marketing_data S on S.id=R.id group by S.geo,S.date;

