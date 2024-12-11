show databases;

create database Airbnb;

use Airbnb;

select* from listings;

select* from booking;

#2
select name from booking;

#3
select count(listing_id) from listings;

#4
select count(id) from booking;

#5
select host_id from booking;

#6
select distinct(host_name) from booking;

#7
select distinct (neighbourhood_group) from booking;

#8
select distinct (neighbourhood) from booking;

#9
select distinct (room_type)  from booking;

#10
select* from booking where neighbourhood_group in ('Brooklyn', 'Manhattan');

#11
select max(price) from listings;

#12
select min(price) from listings;

#13
select avg(price) from listings;

#14
select min(minimum_nights) from listings;

#15
select max(minimum_nights) from listings;

#16
select avg(availability_365) from listings;

#17
select listing_id, availability_365 from listings where availability_365 > 300;

#18
select count(listing_id)  from listings where price > 300 and price <400;

#19
select count(listing_id) from listings where minimum_nights < 5;

#20
select count(listing_id) from listings where minimum_nights > 100;

#21
select * from booking inner join listings;

#22
select b.host_name, l.price
from booking b inner join listings l 
on b.id = l.listing_id;

#23
select b.room_type, l.price
from booking b inner join listings l 
on b.id = l.listing_id;

#24
select b.neighbourhood_group, l.minimum_nights 
from booking b inner join listings l 
on b.id = l.listing_id;

#25
select b.neighbourhood, l.availability_365 
from booking b inner join listings l 
on b.id = l.listing_id;

#26
select sum(l.price)
from booking b inner join listings l 
on b.id = l.listing_id
group by b.neighbourhood_group;

#27
select b.neighbourhood_group , max(l.price)
from booking b inner join listings l 
on b.id = l.listing_id
group by b.neighbourhood_group;

#28
select b.neighbourhood_group , max(l.minimum_nights)
from booking b inner join listings l 
on b.id = l.listing_id
group by b.neighbourhood_group;

#29
select b.neighbourhood, max(l.reviews_per_month)
from booking b inner join listings l 
on b.id = l.listing_id
group by b.neighbourhood;

#30
select b.room_type, max(l.price)
from booking b inner join listings l 
on b.id = l.listing_id
group by b.room_type;

#31
select b.room_type , avg(l.number_of_reviews)
from booking b inner join listings l 
on b.id = l.listing_id
group by b.room_type;

#32
select b.room_type , avg(l.price)
from booking b inner join listings l 
on b.id = l.listing_id
group by b.room_type;

#33
select b.room_type, avg(l.minimum_nights)
from booking b inner join listings l 
on b.id = l.listing_id
group by b.room_type;

#34
select b.room_type , avg(l.price)
from booking b inner join listings l 
on b.id = l.listing_id
group by b.room_type
having avg(l.price) < 100;

#35
select b.neighbourhood , avg(l.minimum_nights) Avg_nights
from booking b inner join listings l 
on b.id = l.listing_id
group by b.neighbourhood
having Avg_nights > 5;

#36 DOUBT
select* from listings where 

#37
DOUBT

#38 DOUBT
select distinct(id) , distinct(host_id) from booking where id = host_id;

#39
select name from booking where name regexp 'cozy';
                      OR
select name from booking where name like '%cozy%';

#40
select l.price, b.host_id, b.neighbourhood_group
from listings l inner join booking b 
on l.listing_id = b.id 
where neighbourhood_group = 'Manhattan';

#41
select l.price, b.id, b.host_name, b.neighbourhood
from listings l inner join booking b 
on l.listing_id = b.id 
where b.neighbourhood in ('Upper west side','Williamsburg') and l.price > 100;

#42
select l.price, b.id, b.host_name, b.neighbourhood
from listings l inner join booking b 
on l.listing_id = b.id 
where b.neighbourhood = 'Bedford-Stuyvesant' and b.host_name = 'Elise';

#43
select b.host_name, l.availability_365, l.minimum_nights 
from listings l inner join booking b 
on l.listing_id = b.id 
where l.availability_365 > 100 and l.minimum_nights > 100;

#44
select b.host_name, l.number_of_reviews, l.reviews_per_month 
from listings l inner join booking b 
on l.listing_id = b.id 
where l.number_of_reviews > 500 and l.reviews_per_month > 5;

#45
select b.neighbourhood_group, sum(l.number_of_reviews) Total_reviews
from booking b inner join listings l 
on b.id = l.listing_id 
group by b.neighbourhood_group
order by Total_reviews limit 1;

#46
select b.host_name, sum(l.price) Total_price
from booking b inner join listings l 
on b.id = l.listing_id 
group by b.host_name 
order by Total_price limit 1;

#47
select b.host_name, sum(l.price) Total_price
from booking b inner join listings l 
on b.id = l.listing_id 
group by b.host_name 
order by Total_price desc limit 1;

#48
select b.host_name, l.price 
from booking b inner join listings l 
on b.id = l.listing_id 
where l.price in (select max(price) from listings);

select n1.host_name ,n2.price
from listings n1 inner join booking_details n2 on n1.id = n2.listing_id
where n2.price in (select max(price) from booking_details);

#49
select b.neighbourhood_group, l.price
from booking b inner join listings l 
on b.id = l.listing_id 
where l.price < 100;

#50
select b.room_type, max(l.price), avg(l.availability_365) 
from booking b inner join listings l 
on b.id = l.listing_id 
group by b.room_type 
order by max(l.price) asc;

