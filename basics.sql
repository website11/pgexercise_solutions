-- Question 1: Retrieve everything from a table
SELECT * FROM cd.facilities

--Question 2: Retrieve specific columns from a table
SELECT cd.facilities.name, cd.facilities.membercost FROM cd.facilities

--Question 3: Control which rows are retrieved
SELECT * FROM cd.facilities WHERE membercost != 0

--Question 4: Control which rows are retrieved - part 2
SELECT cd.facilities.facid, cd.facilities.name, cd.facilities.membercost,
cd.facilities.monthlymaintenance FROM cd.facilities WHERE membercost != 0 AND (membercost < (monthlymaintenance/50))

--Question 5: Basic string searches
SELECT * FROM cd.facilities WHERE cd.facilities.name LIKE '%Tennis%'

--Question 6: Matching against multiple possible values
SELECT * FROM cd.facilities WHERE facid in (1,5)

--Question 7: Classify results into buckets
SELECT NAME,
CASE WHEN (monthlymaintenance > 100) 
THEN 'expensive'
ELSE 'cheap'
END AS cost
FROM cd.facilities

  --Question 8: Working with dates
SELECT memid,surname,firstname,joindate FROM cd.members WHERE joindate > '2012-09-01'

--Question 9: Removing duplicates, and ordering results
SELECT DISTINCT surname FROM cd.members ORDER BY surname limit 10
