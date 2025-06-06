--Creates a leaderboard table with the top 100 entries
DROP TABLE IF EXISTS `leaderboard`;
CREATE TABLE leaderboard AS
SELECT player_login.uid, player_login.player_name, player_game_info.player_score
FROM player_login
INNER JOIN player_game_info ON player_game_info.user_id = player_login.uid
ORDER BY player_game_info.player_score DESC
LIMIT 100;

SELECT * FROM `player_login` WHERE player_name = "player_name" --(Fill quotes with players login name) 

SELECT * FROM `player_game_info` WHERE user_id = "user_id" --(Fill quote with player's user ID)
