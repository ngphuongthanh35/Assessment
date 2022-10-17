# Assessment
Question #1 Generate a query to get the sum of the clicks of the marketing data: 

>select sum(clicks) from marketing_data;

> The sum of clicks of the marketing data is 1792

Question #2 Generate a query to gather the sum of revenue by geo from the store_revenue table:

>select sum(revenue), store_location from store_revenue group by store_location;

Question #3 Merge these two datasets so we can see impressions, clicks, and revenue together by date and geo. Please ensure all records from each table are accounted for.
>select sum(S.revenue), sum(M.impressions), sum(M.clicks), M.geo, M.date from store_revenue S join marketing_data M on right(S.store_location,2) = M.geo and S.date = M.date group by M.geo, M.date;

Question #4 In your opinion, what is the most efficient store and why?

>Based on the question 3 script, I found out that store in United States-CA has the highest revenue but not the highest number of clicks and impression. This show that the CA store is most the most efficient because they can generate the highest revenue without having to produce a lot of clicks and impressions. Assuming the marketing is equal across all stores, the date implies that the CA store has the highest rate of return. 

Question #5 (Challenge) Generate a query to rank in order the top 10 revenue producing states

>select *
>from (select store_location,revenue,date,
>dense_rank() over (order by revenue desc) as rank
>from store_revenue)
>where rank<=10;
>
