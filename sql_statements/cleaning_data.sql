-- Cleaning the data 
UPDATE
  `local-cogency-393915.nba_data.all_seasons`
SET
  college = "North Carolina"
WHERE
  college = "UNC"

-- Tony Snell had no college listed
/*
UPDATE
  `local-cogency-393915.nba_data.all_seasons`
SET
  college = "New Mexico"
WHERE
  player_name = "Tony Snell"
-- Enes Kanter had no college listed
UPDATE
  `local-cogency-393915.nba_data.all_seasons`
SET
  college = "None"
WHERE
  player_name = "Enes Kanter"  
*/