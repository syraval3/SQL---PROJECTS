show databases;

create database blinkit;

use blinkit;

select* from grocery_sales;

#2
select Item_identifier from grocery_sales;

#3
select count(Item_identifier) from grocery_sales;

#4
select max(Item_weight) from grocery_sales;

#5
select min(Item_weight) from grocery_sales;

#6
select avg(item_weight) from grocery_sales;

#7
select count(item_fat_content) from grocery_sales where item_fat_content = 'low fat';

#8
select count(item_fat_content) from grocery_sales where item_fat_content = 'Regular';

#9
select max(item_MRP) from grocery_sales;

#10
select min(item_MRP) from grocery_sales;

#11
select Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP from grocery_sales where Item_MRP > 200;

#12
select max(item_MRP) from grocery_sales where item_fat_content = 'low fat';

#13
select min(item_MRP) from grocery_sales where item_fat_content = 'low fat';

#14
select* from grocery_sales where Item_MRP > 50 and Item_MRP < 100;

#15
select distinct(item_fat_content) from grocery_sales;

#16
select distinct(item_type) from grocery_sales;

#17
select* from grocery_sales order by Item_MRP desc;

#18
select* from grocery_sales order by Item_Outlet_Sales;

#19
select* from grocery_sales order by Item_type;

#20
select* from grocery_sales where Item_Type in ('Dairy','Meat');

#21
select distinct (outlet_size) from grocery_sales;

#22
select distinct (Outlet_Location_Type) from grocery_sales;

#23
select distinct (outlet_type) from grocery_sales;

#24
select item_type, count(item_identifier) from grocery_sales group by Item_Type order by count(item_identifier) desc;

#25
select Outlet_Size, count(item_identifier) from grocery_sales group by Outlet_Size order by count(item_identifier);

#26
select Outlet_Type, count(item_identifier) from grocery_sales group by Outlet_Type order by count(item_identifier) desc;

#27
select Outlet_Location_Type, count(item_identifier) from grocery_sales group by Outlet_Location_Type 
order by count(item_identifier) desc;

#28
select item_type, max(item_MRP) from grocery_sales group by Item_Type;

#29
select item_type, min(item_MRP) from grocery_sales group by Item_Type;

#30
select Outlet_Establishment_Year, min(item_MRP) from grocery_sales group by Outlet_Establishment_Year 
order by min(item_MRP) desc;

#31
select Outlet_Establishment_Year, max(item_MRP) from grocery_sales group by Outlet_Establishment_Year 
order by max(item_MRP) desc;

#32
select outlet_size, avg(item_MRP) Avg_MRP from grocery_sales group by Outlet_Size order by Avg_MRP desc;

#33
select outlet_TYPE, avg(item_MRP) Avg_MRP from grocery_sales group by Outlet_Type order by Avg_MRP;

#34
select Outlet_Type, max(item_MRP) from grocery_sales group by Outlet_Type;

#35
select Item_Type, max(Item_Weight) from grocery_sales group by Item_Type;

#36
select Outlet_Establishment_Year, max(Item_Weight) from grocery_sales group by Outlet_Establishment_Year;

#37
select outlet_type, min(item_weight) from grocery_sales group by Outlet_Type;

#38
select outlet_location_type, avg(item_weight) from grocery_sales group by outlet_location_type 
order by avg(item_weight) desc;

#39
select item_type, max(item_outlet_sales) from grocery_sales group by Item_type;

#40
select item_type, min(item_outlet_sales) from grocery_sales group by Item_type;

#41
select outlet_establishment_year, min(item_outlet_sales) from grocery_sales group by Outlet_Establishment_Year;

#42
select outlet_establishment_year, max(item_outlet_sales) from grocery_sales group by Outlet_Establishment_Year
order by max(item_outlet_sales) desc;

#43
select outlet_size, avg(item_outlet_sales) from grocery_sales group by Outlet_Size order by avg(item_outlet_sales) desc;

#44
select outlet_type, avg(item_outlet_sales) from grocery_sales group by Outlet_Type;

#45
select outlet_type, max(item_outlet_sales) from grocery_sales group by Outlet_Type;

#46
select item_type, sum(item_outlet_sales) from grocery_sales group by item_type;

#47
select item_fat_content, sum(item_outlet_sales) from grocery_sales group by Item_Fat_Content;

#48
select item_type, max(item_visibility) from grocery_sales group by Item_Type;

#49
select item_type, min(item_visibility) from grocery_sales group by Item_Type;

#50
select item_type, sum(item_outlet_sales) from grocery_sales where Outlet_Location_Type = 'Tier 1' group by Item_Type;

#51
select item_type, sum(item_outlet_sales) from grocery_sales where Item_Fat_Content in ('low fat','LF')
group by item_type;

















