DROP DATABASE IF EXISTS baseballcaard;
CREATE DATABASE baseballcaard;
USE baseballcaard;

DROP TABLE IF EXISTS Person CASCADE;
CREATE TABLE Person (
	person_id varchar(255),
    first_name varchar(255),
    last_name varchar(255),
    bio varchar(255),
    height INT,
    home_town varchar(255),
    nickname varchar(255),
    weight INT,
    -- owner_account_uid varchar(255),
    PRIMARY KEY (person_id)
);

DROP TABLE IF EXISTS PersonSchool;
CREATE TABLE PersonSchool (
	person_id varchar(255),
    person_school_id INT AUTO_INCREMENT,
    school_name varchar(255),
    school_location varchar(255),
    PRIMARY KEY (person_school_id, person_id)
);

DROP TABLE IF EXISTS SpecificGroup;
CREATE TABLE SpecificGroup (
	group_id INT AUTO_INCREMENT,
    short_name varchar(255),
    long_name varchar(255),
    PRIMARY KEY (group_id)
);

DROP TABLE IF EXISTS TeamType;
CREATE TABLE TeamType (
	team_type_id INT AUTO_INCREMENT,
    short_name varchar(255),
    long_name varchar(255),
    PRIMARY KEY (team_type_id)
);

DROP TABLE IF EXISTS Team;
CREATE TABLE Team (
	team_id varchar(255),
    team_name varchar(255),
    abbreviation varchar(255),
    location varchar(255),
    nickname varchar(255),
    team_primary_color_hex varchar(255),
    team_secondary_color_hex varchar(255),
    team_type_id INT,
    FOREIGN KEY (team_type_id) REFERENCES TeamType (team_type_id),
    PRIMARY KEY (team_id)
);

DROP TABLE IF EXISTS TeamGroup;
CREATE TABLE TeamGroup (
	team_id varchar(255),
    group_id INT,
	FOREIGN KEY (team_id) REFERENCES Team (team_id),
    FOREIGN KEY (group_id) REFERENCES SpecificGroup (group_id),
	PRIMARY KEY (team_id, group_id)
);

DROP TABLE IF EXISTS Season;
CREATE TABLE Season (
	season_id INT AUTO_INCREMENT,
    name varchar(255),
    year INT,
    PRIMARY KEY (season_id)
);


DROP TABLE IF EXISTS Position;
CREATE TABLE Position (
	position_id INT AUTO_INCREMENT,
    short_name varchar(255),
    long_name varchar(255),
    position_num ENUM ('1','2','3','4','5','6','7','8','9','10','11','12','13'),
    PRIMARY KEY (position_id)
);


DROP TABLE IF EXISTS Game CASCADE;
CREATE TABLE Game (
	game_id INT AUTO_INCREMENT,
    home_team_id varchar(255),
    away_team_id varchar(255),
    game_date date,
    game_start_hour INT,
    game_start_minute INT,
    season_id INT,
    game_status ENUM ('0', '1', '2') default '0',
    home_lineup_id INT,
    away_lineup_id INT,
    FOREIGN KEY (home_team_id) REFERENCES Team (team_id),
    FOREIGN KEY (away_team_id) REFERENCES Team (team_id),
    FOREIGN KEY (season_id) REFERENCES Season (season_id),
--     FOREIGN KEY (game_id, home_team_id, home_lineup_id) REFERENCES Lineup (game_id, team_id, lineup_id),
--     FOREIGN KEY (game_id, away_team_id, away_lineup_id) REFERENCES Lineup (game_id, team_id, lineup_id),
    PRIMARY KEY (game_id)
);


DROP TABLE IF EXISTS Lineup;
CREATE TABLE Lineup (
	game_id INT,
    team_id varchar(255),
    lineup_id INT auto_increment,
    FOREIGN KEY (team_id) REFERENCES Team (team_id),
    FOREIGN KEY (game_id) REFERENCES Game (game_id),
    PRIMARY KEY (lineup_id, game_id, team_id)
);

DROP TABLE IF EXISTS LineupMember;
CREATE TABLE LineupMember (
	game_id INT,
    team_id varchar(255),
    lineup_id INT,
    lineup_member_id INT auto_increment,
    person_id varchar(255),
    number_in_lineup INT,
    position_id INT,
    dh_person_id varchar(255),
    FOREIGN KEY (lineup_id, game_id, team_id) REFERENCES Lineup(lineup_id, game_id, team_id),
    FOREIGN KEY (person_id) REFERENCES Person (person_id),
    FOREIGN KEY (dh_person_id) REFERENCES Person (person_id),
    FOREIGN KEY (position_id) REFERENCES Position (position_id),
    PRIMARY KEY (lineup_member_id, lineup_id, team_id, game_id)
);


DROP TABLE IF EXISTS GameGroup;
CREATE TABLE GameGroup (
	game_id INT,
    group_id INT,
    FOREIGN KEY (game_id) REFERENCES Game (game_id),
    FOREIGN KEY (group_id) REFERENCES SpecificGroup (group_id),
	PRIMARY KEY (game_id, group_id)
);

DROP TABLE IF EXISTS Inning CASCADE;
CREATE TABLE Inning (
    inning_id INT AUTO_INCREMENT,
	game_id INT,
    half_inning INT,
    home_total_unearned INT default 0,
    home_total_earned INT default 0,
    away_total_unearned INT default 0,
    away_total_earned INT default 0,
    FOREIGN KEY (game_id) REFERENCES Game (game_id),
    PRIMARY KEY (inning_id, game_id)
);

DROP TABLE IF EXISTS EventType CASCADE;
CREATE TABLE EventType (
	event_type_id INT AUTO_INCREMENT,
    short_name varchar(255),
    long_name varchar(255),
    PRIMARY KEY (event_type_id)
);

DROP TABLE IF EXISTS Base CASCADE;
CREATE TABLE Base (
	base_id INT AUTO_INCREMENT,
    short_name varchar(255),
    long_name varchar(255),
    PRIMARY KEY (base_id)
);

DROP TABLE IF EXISTS Pitch;
CREATE Table Pitch (
	pitch_id INT AUTO_INCREMENT,
    short_name varchar(255),
    long_name varchar(255),
    PRIMARY KEY (pitch_id)
);

DROP TABLE IF EXISTS Hand;
CREATE TABLE Hand (
	hand_id INT AUTO_INCREMENT,
    short_name varchar(255),
    long_name varchar(255),
    PRIMARY KEY (hand_id)
);

DROP TABLE IF EXISTS PitchOutcome;
CREATE TABLE PitchOutcome (
	pitch_outcome_id INT auto_increment,
    short_name varchar(255),
    long_name varchar(255),
    strikes_to_add INT default 0,
    balls_to_add INT default 0,
    outs_to_add INT default 0,
    stop_after_two_strikes BOOL default false,
    PRIMARY KEY (pitch_outcome_id)
);

DROP TABLE IF EXISTS PitchExtraInfo;
CREATE TABLE PitchExtraInfo (
	pitch_extra_info_id INT auto_increment,
    short_name varchar(255),
    long_name varchar(255),
    mark_hitter_as_out bool default false,
    send_hitter_to_base_id INT,
    can_runner_advance bool default false,
    FOREIGN KEY (send_hitter_to_base_id) REFERENCES Base(base_id),
    PRIMARY KEY (pitch_extra_info_id)
);

DROP TABLE IF EXISTS PitchExtraInfoSection1;
CREATE TABLE PitchExtraInfoSection1 (
	pitch_outcome_id INT,
    pitch_extra_info_id INT,
    PRIMARY KEY (pitch_outcome_id, pitch_extra_info_id)
);

DROP TABLE IF EXISTS PitchExtraInfoSection2;
CREATE TABLE PitchExtraInfoSection2 (
	pitch_outcome_id INT,
    pitch_extra_info_id INT,
    PRIMARY KEY (pitch_outcome_id, pitch_extra_info_id)
);


DROP TABLE IF EXISTS PitchExtraInfoExtra;
CREATE TABLE PitchExtraInfoExtra (
	pitch_extra_info_id INT,
    pitch_extra_info_id_extra INT,
    PRIMARY KEY (pitch_extra_info_id, pitch_extra_info_id_extra)
);

DROP TABLE IF EXISTS PitchingStyle;
CREATE TABLE PitchingStyle (
	pitching_style_id INT AUTO_INCREMENT,
    short_name varchar(255),
    long_name varchar(255),
    PRIMARY KEY (pitching_style_id)
);

DROP TABLE IF EXISTS Role;
CREATE TABLE Role (
	role_id INT AUTO_INCREMENT,
    short_name varchar(255),
    long_name varchar(255),
    PRIMARY KEY (role_id)
);

DROP TABLE IF EXISTS PersonTeam;
CREATE TABLE PersonTeam (
	team_id varchar(255),
    person_id varchar(255),
    season_id INT,
    throwing_hand_id INT,
    hitting_hand_id INT,
    role_id INT,
	FOREIGN KEY (person_id) REFERENCES Person(person_id),
    FOREIGN KEY (throwing_hand_id) REFERENCES Hand (hand_id),
    FOREIGN KEY (hitting_hand_id) REFERENCES Hand (hand_id),
    FOREIGN KEY (team_id) REFERENCES Team (team_id),
    FOREIGN KEY (role_id) REFERENCES Role (role_id),
    FOREIGN KEY (season_id) REFERENCES Season (season_id),
    PRIMARY KEY (team_id, person_id)
);

DROP TABLE IF EXISTS PersonTeamPosition;
CREATE TABLE PersonTeamPosition (
	team_id varchar(255),
    person_id varchar(255),
    position_id INT,
    FOREIGN KEY (team_id, person_id) references PersonTeam (team_id, person_id),
    FOREIGN KEY (position_id) REFERENCES Position (position_id),
    PRIMARY KEY (position_id, team_id, person_id)
);

DROP TABLE IF EXISTS PersonPlayerPitch;
CREATE TABLE PersonTeamPitch (
	team_id varchar(255),
    person_id varchar(255),
    pitch_id INT,
    FOREIGN KEY (team_id, person_id) REFERENCES PersonTeam (team_id, person_id),
    FOREIGN KEY (pitch_id) REFERENCES Pitch (pitch_id),
    PRIMARY KEY (team_id, person_id, pitch_id)
);

DROP TABLE IF EXISTS GameHistory;
CREATE Table GameHistory (
	game_id INT,
    history_id INT auto_increment,
    inning_id INT,
    hitter_id varchar(255),
    pitcher_id varchar(255),
    person_at_first varchar(255),
    person_at_second varchar(255),
    person_at_third varchar(255),
	number_outs ENUM ('0', '1', '2'),
    number_strikes ENUM ('0', '1', '2'),
    number_balls ENUM ('0', '1', '2', '3'),
    current_pa INT,
    pitch_number INT,
    pitch_thrown INT,
    pitch_strike_zone_location_rel_X float,
    pitch_strike_zone_location_rel_Y float,
    pitch_ball_field_location_rel_X float,
    pitch_ball_field_location_rel_Y float,
    pitcher_throwing_hand INT,
    hitter_hitting_hand INT,
    pitch_outcome_id INT,
    pitch_extra_info_1_id INT,
    pitch_extra_info_2_id INT,
    pitch_extra_info_3_id INT,
    event_type_id INT,
    person_involved_id varchar(255),
    person_base_at_id INT,
	person_base_going_id INT,
    nunber_errors INT,
    pitch_velo float,
    pitching_style_id INT,
    ball_exit_velocity float,
    home_team_lineup_id INT,
    home_team_id varchar(255),
    away_team_lineup_id INT,
    away_team_id varchar(255),
    FOREIGN KEY (game_id) REFERENCES Game (game_id),
    FOREIGN KEY (inning_id) REFERENCES Inning (inning_id),
    FOREIGN KEY (hitter_id) REFERENCES Person (person_id),
    FOREIGN KEY (pitcher_id) REFERENCES Person (person_id),
    FOREIGN KEY (person_at_first) REFERENCES Person (person_id),
    FOREIGN KEY (person_at_second) REFERENCES Person (person_id),
    FOREIGN KEY (person_at_third) REFERENCES Person (person_id),
    FOREIGN KEY (pitch_thrown) REFERENCES Pitch (pitch_id),
    FOREIGN KEY (pitcher_throwing_hand) REFERENCES Hand (hand_id),
    FOREIGN KEY (hitter_hitting_hand) REFERENCES Hand (hand_id),
    FOREIGN KEY (pitch_outcome_id) REFERENCES PitchOutcome (pitch_outcome_id),
    FOREIGN KEY (pitch_extra_info_1_id) REFERENCES PitchExtraInfo (pitch_extra_info_id),
    FOREIGN KEY (pitch_extra_info_2_id) REFERENCES PitchExtraInfo (pitch_extra_info_id),
    FOREIGN KEY (pitch_extra_info_3_id) REFERENCES PitchExtraInfo (pitch_extra_info_id),
    FOREIGN KEY (event_type_id) REFERENCES EventType (event_type_id),
    FOREIGN KEY (person_involved_id) references Person (person_id),
    FOREIGN KEY (person_base_at_id) REFERENCES Base (base_id),
    FOREIGN KEY (person_base_going_id) REFERENCES Base (base_id),
    FOREIGN KEY (pitching_style_id) REFERENCES PitchingStyle (pitching_style_id),
    FOREIGN KEY (home_team_lineup_id, game_id, home_team_id) REFERENCES Lineup (lineup_id, game_id, team_id),
    FOREIGN KEY (away_team_lineup_id, game_id, away_team_id) REFERENCES Lineup (lineup_id, game_id, team_id),
    PRIMARY KEY (history_id, game_id)
);

DROP TABLE IF EXISTS GameHistoryAction;
CREATE TABLE GameHistoryAction (
	action_id INT AUTO_INCREMENT,
    short_name varchar(255),
    long_name varchar(255),
    PRIMARY KEY (action_id)
);

DROP TABLE IF EXISTS GameHistoryActionPerformed;
CREATE TABLE GameHistoryActionPerformed (
	game_id INT,
    history_id INT,
    action_id INT,
    number_in_sequence INT,
    FOREIGN KEY (game_id) REFERENCES Game (game_id),
    FOREIGN KEY (history_id) REFERENCES GameHistory (history_id),
    FOREIGN KEY (action_id) REFERENCES GameHistoryAction (action_id),
    PRIMARY KEY (game_id, history_id, action_id, number_in_sequence)
);

DROP TABLE IF EXISTS BallFlight CASCADE;
CREATE TABLE BallFlight (
	ball_flight_id INT AUTO_INCREMENT,
	person_id varchar(255), 
    time DATE,
    velocity DOUBLE,
    total_spin INT,
    true_spin INT,
    spin_eff DOUBLE,
    spin_dir_hour INT,
    spin_dir_minute INT,
    horizontal_break DOUBLE,
    vertical_break DOUBLE,
    is_strike BOOL,
    release_height DOUBLE,
    release_side DOUBLE,
    release_angle DOUBLE,
    horizontal_angle DOUBLE,
    gyro DOUBLE,
    pitch_type INT,
    FOREIGN KEY (pitch_type) REFERENCES Pitch (pitch_id),
    FOREIGN KEY (person_id) REFERENCES Person (person_id),
    PRIMARY KEY (ball_flight_id)
);
