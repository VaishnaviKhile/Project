
Create Table Fun
(
ID int,
Name varchar(50),
Fee float
);

Select * from Fun

----- 1) String Function------

Select LEN(Name) as Len_Name from Fun
Select SUBSTRING(Name, 1,5) as Sub_name from Fun
Select REPLACE(Name, 'a','z') as Replace_name from Fun where ID=1;
Select CONCAT('Rengoku',' ','Kyojiro') as Concat_Str
Select TRIM('         Tatake       ') as trimStr

----- 2) Date Function------
 Select CURRENT_TIMESTAMP as Curr
 Select DATEADD(DD,5,'2023-4-5') as date_add
 Select DATEADD(MM,5,'2023-4-5') as date_add
 Select DATEADD(YEAR,5,'2023-4-5') as date_add
 Select DATEDIFF(Year,'2023-9-27','2001-11-2') as date_diff
 Select DATEName(YEAR,'2023-4-5') as date_name
 Select DATEPART(MM,'2023-4-5') as date_part
 Select DAY('2023-4-5') as date
 Select Month('2023-4-5') as date_Mon
 Select Year('2023-4-5') as  date_year
 Select GETDATE() as Date
 Select GetutcDate() as UTCDate

 ----- 3) Aggregate Function------
 
Select COUNT(Name) as Count_Name from Fun
Select Max(Fee)  from Fun
Select Min(Fee)  from Fun
Select Sum(Fee)  from Fun
Select Avg(Fee)  from Fun

----- 4) Mathematical Function------

Select ABS(403.540)
Select Power(Fee,2) from Fun
Select PI()
Select EXp(67565.767)
Select LOG(Fee) from Fun
Select CEILING(2447.767)
Select FLOOR(4287.676)
Select ROUND(Fee,1) from Fun
Select RAND(Fee) from Fun

---------5) Ranking Function-------

Select * , Rank() over (Order by Fee) from Fun;
Select (Select *, ROW_NUMBER() over (order by Fee) from Fun) -----//giving error due to exist is not in subquery
Select * ,  Dense_Rank() over (Order by Name) from Fun;
Select * , NTile(3) over (Order by Name) from Fun;



