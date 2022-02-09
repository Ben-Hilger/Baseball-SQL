DROP DATABASE IF EXISTS baseballcaard;
CREATE DATABASE baseballcaard;
USE baseballcaard;
DROP TABLE IF EXISTS BallFlight CASCADE;
DROP TABLE IF EXISTS Pitch CASCADE;
DROP TABLE IF EXISTS Person CASCADE;

DROP TABLE IF EXISTS Season CASCADE;
CREATE TABLE Season (
	season_id INT AUTO_INCREMENT,
    year INT,
    name varchar(255),
    PRIMARY KEY (season_id)
);

DROP TABLE IF EXISTS PlateAppearanceCount CASCADE;
CREATE TABLE PlateAppearanceCount (
	count_id INT NOT NULL AUTO_INCREMENT,
	current_strikes INT,
	current_balls INT,
	PRIMARY KEY (count_id)
);

INSERT INTO PlateAppearanceCount (currentStrikes, currentBalls) VALUES (0, 0);
INSERT INTO PlateAppearanceCount (currentStrikes, currentBalls) VALUES (0, 1);
INSERT INTO PlateAppearanceCount (currentStrikes, currentBalls) VALUES (0, 2);
INSERT INTO PlateAppearanceCount (currentStrikes, currentBalls) VALUES (1, 0);
INSERT INTO PlateAppearanceCount (currentStrikes, currentBalls) VALUES (1, 1);
INSERT INTO PlateAppearanceCount (currentStrikes, currentBalls) VALUES (1, 2);
INSERT INTO PlateAppearanceCount (currentStrikes, currentBalls) VALUES (2, 0);
INSERT INTO PlateAppearanceCount (currentStrikes, currentBalls) VALUES (2, 1);
INSERT INTO PlateAppearanceCount (currentStrikes, currentBalls) VALUES (2, 2);
INSERT INTO PlateAppearanceCount (currentStrikes, currentBalls) VALUES (3, 0);
INSERT INTO PlateAppearanceCount (currentStrikes, currentBalls) VALUES (3, 1);
INSERT INTO PlateAppearanceCount (currentStrikes, currentBalls) VALUES (3, 2);

DROP TABLE IF EXISTS GameHistory CASCADE;
CREATE TABLE GameHistory (
	history_id INT AUTO_INCREMENT,
    game_id INT,
    current_pa INT,
	count_id INT,
    hitter_id varchar(255),
    is_end_of_at_bat Bool,
    number_outs INT,
    pitcher_id varchar(255),
    player_at_first_after varchar(255),
    player_at_second_after varchar(255),
    player_at_third_after varchar(255),
	season_id varchar(255),
	FOREIGN KEY (game_id) REFERENCES Game(game_id),
	FOREIGN KEY (count_id) REFERENCES PlateAppearanceCount(countID),
    FOREIGN KEY (hitter_id) REFERENCES Person(person_id),
    FOREIGN KEY (pitcher_id) REFERENCES Person(person_id),
	FOREIGN KEY (player_at_first_after) REFERENCES Person(person_id),
	FOREIGN KEY (player_at_second_after) REFERENCES Person(person_id),
	FOREIGN KEY (player_at_third_after) REFERENCES Person(person_id),
    FOREIGN KEY (season_id) REFERENCES Season(season_id),
    PRIMARY KEY (history_id, game_id)
);

DROP TABLE IF EXISTS GameHistoryPitchBIPOutcome CASCADE;
CREATE TABLE GameHistoryPitchBIPOutcome (
	bip_outcome_id INT NOT NULL,
   	outcome_name varchar(255),
    PRIMARY KEY (bip_outcome_id, outcome_name)
);

INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (0, 'Single');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (1, 'Double');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (2, 'Double Ground Rule');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (3, 'Triple');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (4, 'Home Run');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (5, 'In the Park Home Run');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (6, 'Out');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (7, 'Foul Ball');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (8, 'Fielders Choice');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (9, 'Double Play');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (10, 'Triple Play');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (12, 'Sac Fly');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (13, 'Sac Fly Error');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (14, 'Sac Bunt');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (15, 'Bunt Foul Ball');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (16, 'Sac Bunt Error');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (17, 'Fielder Choice Out');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (18, 'Advanced to Second Error');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (19, 'Advanced to Third Error');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (20, 'Advanced to Home Error');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (21, 'Caught Advancing to Second');
INSERT INTO GameHistoryPitchBIPOutcome (bip_outcome_id, outcomeName) VALUES (22, 'Caught Advancing to Third');
INSERT INTO GameHistoryPitchBIPOutcome (bipOutcomeID, outcomeName) VALUES (23, 'Caught Advancing to Home');
INSERT INTO GameHistoryPitchBIPOutcome (bipOutcomeID, outcomeName) VALUES (24, 'Error');
INSERT INTO GameHistoryPitchBIPOutcome (bipOutcomeID, outcomeName) VALUES (25, 'Foul Ball Caught');
INSERT INTO GameHistoryPitchBIPOutcome (bipOutcomeID, outcomeName) VALUES (26, 'Force Out');

DROP TABLE IF EXISTS BIPType CASCADE;
CREATE TABLE BIPType (
	bipTypeID SERIAL NOT NULL,
	bipTypeName varchar(255),
	PRIMARY KEY (biptypeID)
);

INSERT INTO BIPType (bipTypeID, bipTypeName) VALUES (0, 'Ground Ball');
INSERT INTO BIPType (bipTypeID, bipTypeName) VALUES (1, 'Hard Ground Ball');
INSERT INTO BIPType (bipTypeID, bipTypeName) VALUES (2, 'Fly Ball');
INSERT INTO BIPType (bipTypeID, bipTypeName) VALUES (3, 'Line Drive');
INSERT INTO BIPType (bipTypeID, bipTypeName) VALUES (4, 'Pop Fly');
INSERT INTO BIPType (bipTypeID, bipTypeName) VALUES (5, 'Bunt');
INSERT INTO BIPType (bipTypeID, bipTypeName) VALUES (6, 'Flare');

DROP TABLE IF EXISTS BasePathType CASCADE;
CREATE TABLE BasePathType (
	basePathID INT NOT NULL,
	basePathName varchar(255),
	PRIMARY KEY (basePathID)
);

INSERT INTO BasePathType (basePathID, basePathName) VALUES (0, 'Attempted Pickoff at First');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (1, 'Picked off at First');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (2, 'Attempted Pickoff at Second');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (3, 'Picked off at Second');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (4, 'Attempted Pickoff at Third');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (5, 'Picked off at Third');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (6, 'Caught Stealing Second');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (7, 'Caught Stealing Third');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (8, 'Caught Stealing Home');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (9, 'Stole Second');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (10, 'Stole Third');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (11, 'Stole Home');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (12, 'Out on Basepath');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (14, 'Advanced to Second on Error');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (15, 'Advanced to Third on Error');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (16, 'Advanced to Home on Error');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (17, 'Advanced to Second');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (18, 'Advanced to Third');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (19, 'Advanced to Home');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (20, 'Pitch');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (21, 'Caught in Double Play');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (22, 'Caught in Triple Play');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (23, 'Out on Interference');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (24, 'Removed from Base');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (25, 'None');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (26, 'Still on Base');
INSERT INTO BasePathType (basePathID, basePathName) VALUES (227, 'Attempted Pickoff at First');

DROP TABLE IF EXISTS GameHistoryPitch CASCADE;
CREATE TABLE GameHistoryPitch (
	pitchID SERIAL NOT NULL,    
    historyID INT NOT NULL,
    pitchNumber INT,
    pitchResult INT,
    pitchLocation INT,
    pitchThrown INT,
    pitchVelo INT,
    pitcherThrowingHand INT,
    pitchingStyle INT,
    bipType INT,
    FOREIGN KEY (historyID) REFERENCES GameHistory(historyID),
    PRIMARY KEY (pitchID, historyID)
);

DROP TABLE IF EXISTS GameHistoryBasePathEvent CASCADE;
CREATE TABLE GameHistoryBasePathEvent (
	basePathEventID SERIAL NOT NULL,
	historyID INT NOT NULL,
	basePathID INT NOT NULL,
	runnerID varchar(255),
	FOREIGN KEY (historyID) REFERENCES GameHistory(historyID),
	FOREIGN KEY (basePathID) REFERENCES BasePathType(basePathID),
	PRIMARY KEY (basePathEventID, historyID, runnerID)
);

DROP TABLE IF EXISTS PitchBIPOutcomes CASCADE;
CREATE TABLE PitchBIPOutcomes (
	outcomeID SERIAL NOT NULL,
	pitchID INT NOT NULL,    
    historyID INT NOT NULL,
    bipOutcomeID INT NOT NULL,
    FOREIGN KEY (pitchID, historyID) REFERENCES GameHistoryPitch(pitchID, historyID),
    FOREIGN KEY (bipOutcomeID) REFERENCES GameHistoryPitchBIPOutcome(bipOutcomeID),
    FOREIGN KEY (historyID) REFERENCES GameHistory(historyID),
    PRIMARY KEY (outcomeID, pitchID, historyID, bipOutcomeID)
);

DROP TABLE IF EXISTS PitchBIPType CASCADE;
CREATE TABLE PitchBIPType (
	pitchID INT NOT NULL,
	historyID INT NOT NULL,
	bipTypeID INT NOT NULL,
	FOREIGN KEY (pitchID, historyID) REFERENCES GameHistoryPitch(pitchID, historyID),
	FOREIGN KEY (bipTypeID) REFERENCES BIPType (bipTypeID),
    FOREIGN KEY (historyID) REFERENCES GameHistory(historyID),
	PRIMARY KEY (pitchID, historyID, bipTypeID)
);

CREATE TABLE Person (
	person_id varchar(255),
    first_name varchar(255),
    last_name varchar(255),
    PRIMARY KEY (person_id)
);

CREATE Table Pitch (
	pitch_id INT,
    pitch_name_long VARCHAR(255),
    pitch_name_short VARCHAR(255),
    PRIMARY KEY (pitch_id)
);

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
