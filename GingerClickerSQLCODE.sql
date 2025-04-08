DROP TABLE IF EXISTS `leaderboard`;
CREATE TABLE leaderboard AS
SELECT player_login.uid, player_login.player_name, player_game_info.player_score
FROM player_login
INNER JOIN player_game_info ON player_game_info.user_id = player_login.uid;

