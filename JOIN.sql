1.

SELECT matchid, player 
FROM goal 
WHERE teamid = 'GER';
  
2. 

SELECT id,stadium,team1,team2
FROM game
WHERE id = 1012;

3.

SELECT y.player, y.teamid, x.stadium, x.mdate
FROM game x
JOIN goal y
ON x.id = y.matchid
WHERE y.teamid = 'GER';

4. 

SELECT x.team1, x.team2, y.player
FROM game x
JOIN goal y
ON x.id = y.matchid
WHERE y.player LIKE 'Mario%';

5. 

SELECT x.player, x.teamid, y.coach, x.gtime
FROM goal x
JOIN eteam y
ON x.teamid = y.id
WHERE x.gtime <= 10;

6.

SELECT x.mdate, z.teamname
FROM game x
JOIN eteam z ON x.team1 = z.id
WHERE z.coach = 'Fernando Santos' 

7. 

SELECT y.player
FROM game x
JOIN goal y ON x.id = y.matchid
WHERE x.stadium = 'National Stadium, Warsaw';

8. 

SELECT DISTINCT y.player
FROM goal y
JOIN game x ON x.id = y.matchid
WHERE (x.team1 = 'GER' OR x.team2 = 'GER') AND y.teamid != 'GER';

9. 

SELECT y.teamname, COUNT(x.gtime)
FROM goal x
JOIN eteam y on y.id = x.teamid
GROUP BY y.teamname;

10. 

SELECT x.stadium, COUNT(y.gtime)
FROM goal y
JOIN game x ON x.id = y.matchid
GROUP BY x.stadium;

11. 

SELECT x.matchid, y.mdate, COUNT(x.gtime)
FROM goal x
JOIN game y on y.id = x.matchid
WHERE (y.team1 = 'POL' or y.team2 = 'POL') 
GROUP BY x.matchid, y.mdate;


12. 

SELECT x.matchid, y.mdate, COUNT(x.gtime)
FROM goal x
JOIN game y ON x.matchid = y.id
WHERE x.teamid = 'GER'
GROUP BY x.matchid, y.mdate;

13. 


SELECT x.mdate, 
MAX(x.team1) as team1,
SUM(CASE WHEN y.teamid=x.team1 THEN 1 ELSE 0 END) as score1,
MAX(x.team2) as team2,
SUM(CASE WHEN y.teamid = x.team2 THEN 1 ELSE 0 END) as score2
FROM game x LEFT JOIN goal y ON y.matchid = x.id
GROUP BY x.id, x.mdate
ORDER BY x.mdate, y.matchid, x.team1, x.team2;

'WE need to LEFT JOIN game with goal because it is possible that in a game NO goal is scored by any of the teams. 
Such entries won''t be present in the goals table hence would not appear in normal JOIN.'

