# Assessment
# Assessment
Question #1 Generate a query to get the sum of the clicks of the marketing data: 

>select sum(clicks) from marketing_data;

Question #2 Generate a query to gather the sum of revenue by geo from the store_revenue table:

>select sum(R.revenue) as revenue,S.geo from store_revenue R join marketing_data S on S.id=R.id group by S.geo;

Question #3 Merge these two datasets so we can see impressions, clicks, and revenue together by date and geo. Please ensure all records from each table are accounted for.
>select sum(R.revenue) as revenue,S.impressions ,S.clicks,S.date, S.geo from store_revenue R join marketing_data S on S.id=R.id group by S.geo,S.date;

Question #4 In your opinion, what is the most efficient store and why?
>select sum(R.revenue),S.impressions ,S.clicks, R.store_location from store_revenue R join marketing_data S on S.id=R.id group by S.geo;

>
>Based on the above script, I found out that store in United States-CA has the highest revenue but not the highest number of clicks and impression. This show that the CA store is most the most efficient because they can generate the highest revenue without having to produce a lot of clicks and impressions. Assuming the marketing is equal across all stores, the date implies that the CA store has the highest rate of return. 

Question #5 (Challenge) Generate a query to rank in order the top 10 revenue producing states

>SELECT store_location, revenue,date FROM store_revenue order by revenue desc Limit 10;
