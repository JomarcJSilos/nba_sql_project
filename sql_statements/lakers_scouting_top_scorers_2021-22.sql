-- Helping the Lakers find the top scorers from each team in 2021-22
SELECT
  p.team_abbreviation,
  p.player_name,
  p.pts
FROM 
  `local-cogency-393915.nba_data.all_seasons` AS p
JOIN (
    SELECT 
      team_abbreviation,
      season,
      MAX(pts) AS top_score
    FROM 
      `local-cogency-393915.nba_data.all_seasons`
    WHERE
      team_abbreviation != "LAL" and 
      season = "2021-22" 
    GROUP BY 
      team_abbreviation,
      season
) top_scorers ON p.team_abbreviation = top_scorers.team_abbreviation 
    AND p.pts = top_scorers.top_score
    AND p.season = top_scorers.season;



