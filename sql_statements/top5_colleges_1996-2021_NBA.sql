-- Top 5 colleges that has the highest NBA average score and at least 50 draftees from 1996-2021
WITH avg_player_pts AS(
  SELECT
    college,
    player_name,
    ROUND(AVG(pts)) as avg_pts
  FROM 
    `local-cogency-393915.nba_data.all_seasons` 
  WHERE 
    college != "None" 
  GROUP BY
    college, player_name
)

SELECT 
  college,
  ROUND(AVG(avg_pts)) as avg_pts_college,
  COUNT (DISTINCT player_name) as num_players
FROM 
  avg_player_pt
GROUP BY 
  college
HAVING  
  COUNT(DISTINCT player_name) > 49
ORDER BY
  avg_pts_college DESC
