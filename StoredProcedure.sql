USE baseballcaard;

-- Get Players Procedure
DROP PROCEDURE IF EXISTS GetPlayers;
delimiter //
CREATE PROCEDURE GetPlayers()
BEGIN
	SELECT person_id, first_name, last_name FROM Person;
END //
DELIMITER ;
-- CALL GetPlayers();

DROP PROCEDURE IF EXISTS GetPlayerGames;
delimiter //
CREATE PROCEDURE GetPlayerGames(IN playerID varchar(255))
BEGIN
	SELECT DISTINCT(g.game_id), 
		g.game_date,
		g.game_start_hour,
		g.game_start_minute,
		s.name as season_name,
		s.year as season_year,
		ht.team_name as home_team_name,
		awt.team_name as away_team_name
	FROM GameHistory gh
	JOIN Game g
	ON gh.game_id = g.game_id
	JOIN Team ht
	ON ht.team_id = g.home_team_id
	JOIN Team awt
	ON awt.team_id = g.home_team_id
	JOIN Season s
	ON g.season_id = s.season_id
    WHERE gh.hitter_id = playerID OR gh.pitcher_id = playerID;
END //
DELIMITER ;

-- CALL GetPlayerGames("b0bf1ec6-0b89-11ec-8ea1-026121320b9c");

DROP PROCEDURE IF EXISTS GetPlayerBallFlight;
delimiter //
CREATE PROCEDURE GetPlayerBallFlight(IN playerID varchar(255))
BEGIN
	SELECT person_id, time, velocity, total_spin, true_spin, spin_eff, spin_dir_hour, 
		spin_dir_minute, horizontal_break, 
		vertical_break, is_strike, release_height, 
        release_side, release_angle, horizontal_angle, gyro, p.short_name, p.long_name
	FROM BallFlight bf
    JOIN Pitch p
    ON bf.pitch_type = p.pitch_id
    WHERE person_id = playerID;
END //
DELIMITER ;

CALL GetPlayerBallFlight("c2f75b91-09f1-11ec-8ea1-026121320b9c");

DROP PROCEDURE IF EXISTS UploadPlayerBallFlight;
delimiter //
CREATE PROCEDURE UploadPlayerBallFlight(IN person_id varchar(255), 
    IN time DATE,
    IN velocity DOUBLE,
    IN total_spin INT,
    IN true_spin INT,
    IN spin_eff DOUBLE,
    IN spin_dir_hour INT,
    IN spin_dir_minute INT,
    IN horizontal_break DOUBLE,
    IN vertical_break DOUBLE,
    IN is_strike BOOL,
    IN release_height DOUBLE,
    IN release_side DOUBLE,
    IN release_angle DOUBLE,
    IN horizontal_angle DOUBLE,
    IN gyro DOUBLE,
    IN pitch_type INT)
BEGIN
	INSERT INTO BallFlight (person_id, time, velocity, total_spin, true_spin, spin_eff, spin_dir_hour, spin_dir_minute, horizontal_break, vertical_break, is_strike, release_height, release_side, release_angle, horizontal_angle, gyro, pitch_type) 
		VALUES (person_id, time, velocity, total_spin, true_spin, spin_eff, spin_dir_hour, spin_dir_minute, horizontal_break, vertical_break, is_strike, release_height, release_side, release_angle, horizontal_angle, gyro, pitch_type);
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS GetTeam;
delimiter //
CREATE PROCEDURE GetTeam(IN teamID varchar(255))
BEGIN
	SELECT team_id, 
		team_name, abbreviation, location, nickname, 
		team_primary_color_hex, team_secondary_color_hex, 
		short_name as team_type_short, long_name as team_type_long
	FROM Team t JOIN TeamType tt ON t.team_type_id = tt.team_type_id WHERE t.team_id = teamID;
END //
DELIMITER ;

CALL GetTeam("bddfd124-0b97-11ec-8ea1-026121320b9c");

DROP PROCEDURE IF EXISTS GetTeamGames;
delimiter //
CREATE PROCEDURE GetTeamGames(IN teamID varchar(255))
BEGIN
	SELECT g.game_id,
		g.game_date,
		g.game_start_hour,
		g.game_start_minute,
        s.season_id,
		s.name as season_name,
		s.year as season_year,
        g.home_team_id as home_team_id,
        g.away_team_id as away_team_id,
        g.home_lineup_id as home_lineup_id,
        g.away_lineup_id as away_lineup_id,
		ht.team_name as home_team_name,
		awt.team_name as away_team_name
	FROM Game g
	JOIN Team ht
	ON ht.team_id = g.home_team_id
	JOIN Team awt
	ON awt.team_id = g.home_team_id
	JOIN Season s
	ON g.season_id = s.season_id
	WHERE g.home_team_id = teamID OR g.away_team_id = teamID;
END //
DELIMITER ;

CALL GetTeamGames("bddfd124-0b97-11ec-8ea1-026121320b9c");

DROP PROCEDURE IF EXISTS GetTeamRoster;
delimiter //
CREATE PROCEDURE GetTeamRoster(IN teamID varchar(255), IN seasonID INT)
BEGIN
	SELECT p.person_id,
		p.first_name,
		p.last_name,
		p.bio,
		p.height,
		p.home_town,
		p.nickname,
		p.weight,
		r.short_name as role_short_name,
		r.long_name as role_long_name,
		pH.short_name as throwing_hand_short_name,
		pH.long_name as throwing_hand_long_name,
		hH.short_name as hitting_hand_short_name,
		hH.long_name as hitting_hand_long_name
	FROM PersonTeam pt
	JOIN Person p
	ON pt.person_id = p.person_id
	JOIN Team t
	ON t.team_id = pt.team_id
	JOIN Hand h
	ON pt.throwing_hand_id = h.hand_id
	JOIN Role r
	ON pt.role_id = r.role_id
	JOIN Hand pH
	ON pH.hand_id = pt.throwing_hand_id
	JOIN Hand hH
	ON hH.hand_id = pt.hitting_hand_id 
	WHERE pt.team_id = teamID AND pt.season_id = seasonID;
END //
DELIMITER ;

CALL GetTeamRoster ("bddfd124-0b97-11ec-8ea1-026121320b9c", 1);

DROP PROCEDURE IF EXISTS CreateLineup;
delimiter //
CREATE PROCEDURE CreateLineup(IN game_id INT, IN team_id varchar(255))
BEGIN
	INSERT INTO Lineup (game_id, team_id) VALUES (game_id, team_id);
    SELECT LAST_INSERT_ID() as lineup_id;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS ClearLineup;
delimiter //
CREATE PROCEDURE ClearLineup(IN lineup_id INT, IN game_id INT, IN team_id varchar(255))
BEGIN
	DELETE lm
    FROM LineupMember lm
    WHERE lm.lineup_id = lineup_id AND lm.game_id = game_id AND lm.team_id = team_id;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS AddMemberToLineup;
delimiter //
CREATE PROCEDURE AddMemberToLineup(IN lineup_id INT, IN game_id INT, IN team_id varchar(255), 
	IN person_id varchar(255), IN number_in_lineup INT, IN position_id INT,IN dh_person_id varchar(255))
BEGIN
	INSERT INTO LineupMember (lineup_id, game_id, team_id, person_id, number_in_lineup, position_id, 
		dh_person_id) VALUES (lineup_id, game_id, team_id, person_id, number_in_lineup, position_id, 
		dh_person_id);
	SELECT LAST_INSERT_ID() as lineup_member_id;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS GetLineup;
delimiter //
CREATE PROCEDURE GetLineup(IN lineup_id INT, IN game_id INT, IN team_id varchar(255))
BEGIN
	SELECT lm.lineup_member_id,
		lm.number_in_lineup,
		lm.position_id, 
		lm.dh_person_id,
		lm.person_id,
		mainP.first_name as person_first_name,
		mainP.last_name as person_last_name,
		mainP.bio as person_bio,
		mainP.height as person_height,
		mainP.home_town as person_home_town,
		mainP.nickname as person_nickname,
		mainP.weight as person_weight,
		dhP.first_name as dh_first_name,
		dhP.last_name as dh_last_name,
		dhP.bio as dh_bio,
		dhP.height as dh_height,
		dhP.home_town as dh_home_town,
		dhP.nickname as dh_nickname,
		dhP.weight as dh_weight
	FROM Lineup l
	JOIN LineupMember lm
	ON l.game_id = lm.game_id AND l.team_id = lm.team_id AND l.lineup_id = lm.lineup_id
	JOIN Person mainP
	ON mainP.person_id = lm.person_id
	JOIN Person dhP
	ON dhP.person_id = dh_person_id
	ORDER BY lm.number_in_lineup;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS RemovePlayerFromLineup;
delimiter //
CREATE PROCEDURE RemovePlayerFromLineup(IN lineup_id INT, IN game_id INT, IN team_id varchar(255), IN lineup_member_id INT)
BEGIN
	DELETE lm
    FROM LineupMember lm
    WHERE lm.lineup_id = lineup_id AND lm.game_id = game_id AND lm.team_id = team_id AND lm.lineup_member_id = lineup_member_id;
END //
DELIMITER ;



DROP PROCEDURE IF EXISTS CreateGame;
delimiter //
CREATE PROCEDURE CreateGame(IN home_team_id varchar(255),
    IN away_team_id varchar(255),
    IN game_date date,
    IN game_start_hour INT,
    IN game_start_minute INT,
    IN season_id INT)
BEGIN
	INSERT INTO Game (home_team_id, away_team_id, game_date, game_start_hour, game_start_minute, season_id) 
		VALUES (home_team_id, away_team_id, game_date, game_start_hour, game_start_minute, season_id);
	SELECT game_id into @gameID FROM (SELECT last_insert_id() as game_id) t1;
	CALL CreateLineup(@gameID, home_team_id);
	SELECT home_lineup_id into @homeLineupID FROM (SELECT last_insert_id() as home_lineup_id) t1;
    CALL CreateLineup(@gameID, away_team_id);
	SELECT away_lineup_id into @awayLineupID FROM (SELECT last_insert_id() as away_lineup_id) t1;
	SELECT @gameID as game_id, @homeLineupID as home_lineup_id, @awayLineupID as away_lineup_id;
END //
DELIMITER ;

CALL CreateGame("bddfd124-0b97-11ec-8ea1-026121320b9c", "bddfd124-0b97-11ec-8ea1-026121320b9c", NOW(), 12, 0, 1);

DROP PROCEDURE IF EXISTS UpdateGame;
delimiter //
CREATE PROCEDURE UpdateGame(IN game_id INT, IN home_team_id varchar(255),
    IN away_team_id varchar(255), IN game_date date,
    IN game_start_hour INT, IN game_start_minute INT,
    IN season_id INT, IN home_lineup_id INT, IN away_lineup_id INT)
BEGIN
	UPDATE Game g
    SET g.home_team_id = home_team_id, g.away_team_id = away_team_id,
		g.game_date = game_date, g.game_start_hour = game_start_hour,
        g.game_start_minute = game_start_minute, g.season_id = season_id,
        g.home_lineup_id = home_lineup_id, g.away_lineup_id = away_lineup_id
    WHERE g.game_id = game_id;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS CreateGameHistory;
delimiter //
CREATE PROCEDURE CreateGameHistory(
    IN game_id INT,
    IN inning_id INT,
    IN hitter_id varchar(255),
    IN pitcher_id varchar(255),
    IN person_at_first varchar(255),
    IN person_at_second varchar(255),
    IN person_at_third varchar(255),
	IN number_outs ENUM ('0', '1', '2'),
    IN number_strikes ENUM ('0', '1', '2'),
    IN number_balls ENUM ('0', '1', '2', '3'),
    IN current_pa INT,
    IN pitch_number INT,
    IN pitch_thrown INT,
    IN pitch_strike_zone_location_rel_X float,
    IN pitch_strike_zone_location_rel_Y float,
    IN pitch_ball_field_location_rel_X float,
    IN pitch_ball_field_location_rel_Y float,
    IN pitcher_throwing_hand INT,
    IN hitter_hitting_hand INT,
    IN pitch_outcome_id INT,
    IN pitch_extra_info_1_id INT,
    IN pitch_extra_info_2_id INT,
    IN pitch_extra_info_3_id INT,
    IN event_type_id INT,
    IN person_involved_id varchar(255),
    IN person_base_at_id INT,
	IN person_base_going_id INT,
    IN nunber_errors INT,
    IN pitch_velo float,
    IN pitching_style_id INT,
    IN ball_exit_velocity float,
    IN home_team_id varchar(255),
    IN away_team_id varchar(255),
    IN home_team_lineup_id INT,
    IN away_team_lineup_id INT)
BEGIN 
	INSERT INTO GameHistory (game_id,
				inning_id,
				hitter_id,
				pitcher_id,
				person_at_first,
				person_at_second,
				person_at_third,
				number_outs,
				number_strikes,
				number_balls,
				current_pa,
				pitch_number,
				pitch_thrown,
				pitch_strike_zone_location_rel_X,
				pitch_strike_zone_location_rel_Y,
				pitch_ball_field_location_rel_X,
				pitch_ball_field_location_rel_Y,
				pitcher_throwing_hand,
				hitter_hitting_hand,
				pitch_outcome_id,
				pitch_extra_info_1_id,
				pitch_extra_info_2_id,
				pitch_extra_info_3_id,
				event_type_id,
				person_involved_id,
				person_base_at_id,
				person_base_going_id,
				nunber_errors,
				pitch_velo,
				pitching_style_id,
				ball_exit_velocity,
                home_team_lineup_id,
                away_team_lineup_id,
                home_team_id,
                away_team_id) 
		VALUES (game_id,
				inning_id,
				hitter_id,
				pitcher_id,
				person_at_first,
				person_at_second,
				person_at_third,
				number_outs,
				number_strikes,
				number_balls,
				current_pa,
				pitch_number,
				pitch_thrown,
				pitch_strike_zone_location_rel_X,
				pitch_strike_zone_location_rel_Y,
				pitch_ball_field_location_rel_X,
				pitch_ball_field_location_rel_Y,
				pitcher_throwing_hand,
				hitter_hitting_hand,
				pitch_outcome_id,
				pitch_extra_info_1_id,
				pitch_extra_info_2_id,
				pitch_extra_info_3_id,
				event_type_id,
				person_involved_id,
				person_base_at_id,
				person_base_going_id,
				nunber_errors,
				pitch_velo,
				pitching_style_id,
				ball_exit_velocity,
                home_team_lineup_id,
                away_team_lineup_id,
                home_team_id,
                away_team_id);
		SELECT LAST_INSERT_ID() as history_id;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS CreateGameInning;
delimiter //
CREATE PROCEDURE CreateGameInning(IN game_id INT, IN half_inning INT)
BEGIN
	INSERT INTO Inning (game_id, half_inning, home_total_unearned, home_total_earned, away_total_unearned, away_total_earned)
	VALUES (game_id, half_inning, home_total_unearned, home_total_earned, away_total_unearned, away_total_earned);
	SELECT LAST_INSERT_ID() as inning_id;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS UpdateGameInning;
delimiter //
CREATE PROCEDURE UpdateGameInning(IN inning_id INT, IN game_id INT, IN half_inning INT, IN home_total_unearned INT, 
	IN home_total_earned INT, IN away_total_unearned INT, IN away_total_earned INT)
BEGIN
	UPDATE Inning i
    SET i.half_inning = half_inning, i.home_total_unearned = home_total_unearned, i.home_total_earned = home_total_earned,
		i.away_total_unearned = away_total_unearned, i.away_total_earned = away_total_earned
    WHERE i.inning_id = inning_id AND i.game_id = game_id;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS GetPitches;
delimiter //
CREATE PROCEDURE GetPitches()
BEGIN
	SELECT 
		p.pitch_id,
		p.short_name,
		p.long_name
	FROM Pitch p;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS GetHands;
delimiter //
CREATE PROCEDURE GetHands()
BEGIN
	SELECT 
		h.hand_id,
		h.short_name,
		h.long_name
	FROM Hand h;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS GetOutcomes;
delimiter //
CREATE PROCEDURE GetOutcomes()
BEGIN
	SELECT po.pitch_outcome_id,
		po.short_name,
		po.long_name,
		po.strikes_to_add,
		po.balls_to_add,
		po.outs_to_add,
		po.stop_after_two_strikes
	FROM PitchOutcome po;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS GetOutcomeSection1;
delimiter //
CREATE PROCEDURE GetOutcomeSection1(IN outcomeID INT)
BEGIN
	SELECT 
		info.pitch_extra_info_id,
		info.short_name,
		info.long_name,
		info.mark_hitter_as_out,
		info.send_hitter_to_base_id,
		info.can_runner_advance
	FROM PitchOutcome po
	LEFT JOIN PitchExtraInfoSection1 p1
	ON p1.pitch_outcome_id = po.pitch_outcome_id
	LEFT JOIN PitchExtraInfo info
	ON p1.pitch_extra_info_id = info.pitch_extra_info_id
    WHERE po.pitch_outcome_id = outcomeID;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS GetOutcomeSection2;
delimiter //
CREATE PROCEDURE GetOutcomeSection2(IN outcomeID INT)
BEGIN
	SELECT 
		info.pitch_extra_info_id,
		info.short_name,
		info.long_name,
		info.mark_hitter_as_out,
		info.send_hitter_to_base_id,
		info.can_runner_advance
	FROM PitchOutcome po
	LEFT JOIN PitchExtraInfoSection2 p1
	ON p1.pitch_outcome_id = po.pitch_outcome_id
	LEFT JOIN PitchExtraInfo info
	ON p1.pitch_extra_info_id = info.pitch_extra_info_id
    WHERE po.pitch_outcome_id = outcomeID;
END //
DELIMITER ;
