1. Change the query shown so that it displays Nobel prizes for 1950.

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;

2. Show who won the 1962 prize for Literature.

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature';
   
3. 

SELECT yr, subject 
FROM nobel 
WHERE winner = 'Albert Einstein';

4. 

SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr >=2000;

5. 

SELECT * 
FROM nobel
WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989;'

6.

SELECT *
FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson','Jimmy Carter', 'Barack Obama');

7. 

SELECT winner
FROM nobel
WHERE winner LIKE 'John %';

8. 

SELECT yr, subject, winner
FROM nobel
WHERE (subject = 'Physics' AND yr = 1980) OR (subject = 'Chemistry' AND yr = 1984);

9. 

SELECT yr, subject, winner 
FROM nobel 
WHERE yr = 1980 AND subject NOT IN ('Chemistry', 'Medicine');

10. 

SELECT *
FROM nobel
WHERE (subject = 'Medicine' AND yr <1910) OR (subject = 'Literature' AND yr>2003);

11. 

SELECT *
FROM nobel
WHERE winner = 'PETER GRÜNBERG';

12. 

SELECT *
FROM nobel 
WHERE winner = 'EUGENE O''NEILL';

13. 

SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir %'
ORDER BY yr DESC, winner;

14. 

SELECT winner, subject
FROM nobel
WHERE yr = 1984
ORDER BY subject IN ('Physics','Chemistry') , subject, winner;    // subject IN ('Physics','Chemistry') creates a boolean array, ordering them with that array causes ones to go at the last.
