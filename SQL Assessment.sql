create table store_revenue ( id integer primary key autoincrement, date datetime, brand_id int, store_location varchar(250), revenue float
);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/1/2016',1,'United States-CA',100);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/1/2016',1,'United States-TX',420);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/1/2016',1,'United States-NY',142);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/2/2016',1,'United States-CA',231);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/2/2016',1,'United States-TX',2342);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/2/2016',1,'United States-NY',232);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/3/2016',1,'United States-CA',100);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/3/2016',1,'United States-TX',420);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/3/2016',1,'United States-NY',3245);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/4/2016',1,'United States-CA',34);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/4/2016',1,'United States-TX',3);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/4/2016',1,'United States-NY',54);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/5/2016',1,'United States-CA',45);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/5/2016',1,'United States-TX',423);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/5/2016',1,'United States-NY',234);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/1/2016',2,'United States-CA',234);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/1/2016',2,'United States-TX',234);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/1/2016',2,'United States-NY',142);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/2/2016',2,'United States-CA',234);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/2/2016',2,'United States-TX',3423);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/2/2016',2,'United States-NY',2342);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/3/2016',2,'United States-CA',234234);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/6/2016',3,'United States-TX',3);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/3/2016',2,'United States-TX',3);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/3/2016',2,'United States-NY',234);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/4/2016',2,'United States-CA',2);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/4/2016',2,'United States-TX',2354);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/4/2016',2,'United States-NY',45235);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/5/2016',2,'United States-CA',23);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/5/2016',2,'United States-TX',4);
INSERT INTO store_revenue(date,brand_id,store_location,revenue) VALUES ('1/5/2016',2,'United States-NY',124);
select*from store_revenue;

create table marketing_data ( id integer not null primary key autoincrement, date datetime, geo varchar(2), impressions float, clicks float );
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/1/2016','TX',2532,45);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/1/2016','CA',3425,63);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/1/2016','NY',3532,25);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/1/2016','MN',1342,784);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/2/2016','TX',3643,23);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/2/2016','CA',1354,53);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/2/2016','NY',4643,85);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/2/2016','MN',2366,85);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/3/2016','TX',2353,57);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/3/2016','CA',5258,36);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/3/2016','NY',4735,63);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/3/2016','MN',5783,87);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/4/2016','TX',5783,47);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/4/2016','CA',7854,85);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/4/2016','NY',4754,36);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/4/2016','MN',9345,24);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/5/2016','TX',2535,63);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/5/2016','CA',4678,73);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/5/2016','NY',2364,33);
INSERT INTO marketing_data(date,geo,impressions,clicks) VALUES ('1/5/2016','MN',3452,25);
select*from marketing_data;

select sum(clicks) from marketing_data;

select sum(R.revenue) as revenue,S.geo from store_revenue R join marketing_data S on S.id=R.id group by S.geo;

select sum(R.revenue) as revenue,S.impressions ,S.clicks,S.date, S.geo from store_revenue R join marketing_data S on S.id=R.id group by S.geo,S.date;

select sum(R.revenue),S.impressions ,S.clicks, R.store_location from store_revenue R join marketing_data S on S.id=R.id group by S.geo;


SELECT store_location, revenue,date FROM store_revenue order by revenue desc Limit 10;




