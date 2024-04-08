SQL

-- Query 1: Total sum of total_bill on Saturdays and Sundays
select sum(total_bill) from hotel where day in ('Sat','Sun');

-- Query 2: Total count of records in the hotel table
select count(*) from hotel;

-- Query 3: Average total_bill rounded to 2 decimal places
select round(avg(total_bill),2) from hotel;

-- Query 4: Total sum of tips
select sum(tip) from hotel;

-- Query 5: Maximum tip amount
select max(tip) from hotel;

-- Query 6: Total sum of total_bill
select sum(total_bill) from hotel;

-- Query 7: Total sum of total_bill grouped by day, showing top 4 days with highest sum
select round(sum(total_bill),2), day from hotel group by day order by sum(total_bill) desc limit 4;

-- Query 8: Average total_bill for the day with the highest average total_bill
select avg(total_bill), day from hotel group by day order by avg(total_bill) desc limit 1;

-- Query 9: Average tip amount on Sundays
select avg(tip) from hotel where day='Sun';

-- Query 10: Count of records where smoker is 'yes'
select count(*) from hotel where smoker='yes';

-- Query 11: Average size for dinner time
select avg(size) from hotel where time='dinner';

-- Query 12: Gender with the highest count
select count(gender), gender from hotel group by gender order by count(gender) desc limit 1;

-- Query 13: Percentage of lunches from total records
select (select count(*) from hotel where time='lunch') / (select count(*) from hotel) * 100 from hotel limit 1;

-- Query 14: Maximum total_bill and the corresponding day
select max(total_bill), day from hotel group by day order by max(total_bill) desc limit 1;

-- Query 15: Minimum total_bill
select min(total_bill) from hotel;

-- Query 16: Average tip amount for females
select round(avg(tip),2) from hotel where gender='Female';

-- Query 17: Count of records for dinner time
select count(size), time from hotel group by time order by count(size) desc limit 1;

-- Query 18: Count of records where size is 1
select count(*) from hotel where size=1;

-- Query 19: Total sum of tips grouped by day for Saturday and Sunday
select sum(tip), day from hotel group by day having day='Sat' or day='Sun';

-- Query 20: Average total_bill grouped by size
select round(avg(total_bill),2), size from hotel group by size;

-- Query 21: Average total_bill grouped by gender
select round(avg(total_bill),2), gender from hotel group by gender;

-- Query 22: Minimum tip amount
select min(tip) from hotel;

-- Query 23: Maximum tip amount for non-smokers
select max(tip) from hotel where smoker='no';

-- Query 24: Average tip amount for the day with the highest average tip amount
select avg(tip), day from hotel group by day order by avg(tip) desc limit 1;

-- Query 25: Average tip percentage of total_bill by day, showing the day with the highest average tip percentage
select avg((tip/total_bill)*100), day from hotel group by day order by avg((tip/total_bill)*100) desc limit 1;

-- Query 26: Maximum total_bill for size 4
select max(total_bill), size from hotel where size=4;

-- Query 27: Average tip amount for lunch excluding Saturdays and Sundays
select avg(tip), time, day from hotel where time='lunch' group by day having day not in ('Sat','Sun');

-- Query 28: Count of records where size is 1 and smoker is 'yes'
select count(*) from hotel where size=1 and smoker='yes';

-- Query 29: Percentage of male smokers
select (select count(*) from hotel where gender='Male' and smoker='yes') / (select count(*) from hotel) * 100 as percentage;

-- Query 30: Count of records where size is 3 or 4 and time is dinner
select count(*) from hotel where (size=3 or size=4) and time='dinner';

-- Query 31: Average tip amount for Friday
select avg(tip) from hotel where day='Fri';

-- Query 32: Retrieve records with the maximum total_bill where smoker is 'no'
select * from hotel where total_bill = (select max(total_bill) from hotel where smoker='no');

-- Query 33: Maximum total_bill where smoker is 'no'
select max(total_bill) from hotel where smoker='no';

-- Query 34: Gender-wise average total_bill, grouped by smoker
select gender, round(avg(total_bill),2), smoker from hotel group by gender, smoker order by gender;
```
