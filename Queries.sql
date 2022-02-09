USE baseballcaard;
#SELECT player_id FROM Player;
# SELECT * From BallFlight WHERE player_id = '97c7914c-0938-11ec-8ea1-026121320b9c';
# SELECT * FROM BallFlight
# SELECT * FROM Person;
# SELECT * FROM BallFlight;
# SELECT * FROM Person;
-- SELECT team_id,
-- 	team_name,
--     abbreviation,
--     location,
--     nickname,
--     team_primary_color_hex,
--     team_secondary_color_hex,
--     short_name as team_type_short,
--     long_name as team_type_long FROM Team t
-- JOIN TeamType tt
-- ON t.team_type_id = tt.team_type_id;

-- SELECT p.person_id,
-- 	p.first_name,
--     p.last_name,
--     p.bio,
--     p.height,
--     p.home_town,
--     p.nickname,
--     p.weight,
--     r.short_name as role_short_name,
--     r.long_name as role_long_name,
--     pH.short_name as throwing_hand_short_name,
--     pH.long_name as throwing_hand_long_name,
--     hH.short_name as hitting_hand_short_name,
--     hH.long_name as hitting_hand_long_name
-- FROM PersonTeam pt
-- JOIN Person p
-- ON pt.person_id = p.person_id
-- JOIN Team t
-- ON t.team_id = pt.team_id
-- JOIN Hand h
-- ON pt.throwing_hand_id = h.hand_id
-- JOIN Role r
-- ON pt.role_id = r.role_id
-- JOIN Hand pH
-- ON pH.hand_id = pt.throwing_hand_id
-- JOIN Hand hH
-- ON hH.hand_id = pt.hitting_hand_id;

-- SELECT g.game_id,
-- 	g.game_date,
--     g.game_start_hour,
--     g.game_start_minute,
--     s.name as season_name,
--     s.year as season_year,
-- 	ht.team_name as home_team_name,
--     awt.team_name as away_team_name
-- FROM Game g
-- JOIN Team ht
-- ON ht.team_id = g.home_team_id
-- JOIN Team awt
-- ON awt.team_id = g.home_team_id
-- JOIN Season s
-- ON g.season_id = s.season_id;

-- Zone 1
-- SELECT gh.history_id,
-- 	gh.game_id
-- 	pitch_strike_zone_location_rel_X,
-- 	pitch_strike_zone_location_rel_Y
-- FROM GameHistory gh
-- WHERE gh.pitch_strike_zone_location_rel_X < 0.33
-- 	AND gh.pitch_strike_zone_location_rel_Y < 0.33;

-- Zone 2
-- SELECT
-- 	COUNT(gh.history_id),
-- FROM GameHistory gh
-- WHERE gh.pitch_strike_zone_location_rel_X > 0.33 AND gh.pitch_strike_zone_location_rel_X < 0.66
-- 	AND gh.pitch_strike_zone_location_rel_Y < 0.33;

-- SELECT DISTINCT(g.game_id), 
--  	g.game_date,
--     g.game_start_hour,
--    g.game_start_minute,
--      s.name as season_name,
--      s.year as season_year,
--  	ht.team_name as home_team_name,
--      awt.team_name as away_team_name
-- FROM GameHistory gh
-- JOIN Game g
-- ON gh.game_id = g.game_id
-- JOIN Team ht
-- ON ht.team_id = g.home_team_id
-- JOIN Team awt
-- ON awt.team_id = g.home_team_id
-- JOIN Season s
-- ON g.season_id = s.season_id;

-- INSERT INTO GameHistory (game_id, pitch_strike_zone_location_rel_X, pitch_strike_zone_location_rel_Y, hitter_id) VALUES (1,  0.8,  0.7, "b0bf1ec6-0b89-11ec-8ea1-026121320b9c");
SELECT * 
FROM BallFlight;