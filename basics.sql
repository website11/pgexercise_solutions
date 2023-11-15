-- Question 1: Retrieve everything from a table
SELECT * FROM cd.facilities

--Question 2: Retrieve specific columns from a table
SELECT cd.facilities.name, cd.facilities.membercost FROM cd.facilities

--Question 3: Control which rows are retrieved
SELECT * FROM cd.facilities WHERE membercost != 0

--Question 4: Control which rows are retrieved - part 2
SELECT cd.facilities.facid, cd.facilities.name, cd.facilities.membercost,
cd.facilities.monthlymaintenance FROM cd.facilities WHERE membercost != 0 AND (membercost < (monthlymaintenance/50))
