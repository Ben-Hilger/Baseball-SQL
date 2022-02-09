USE baseballcaard;

INSERT INTO SpecificGroup (short_name, long_name) VALUES ("MAC","Mid Atlantic Conference");
INSERT INTO TeamType (short_name, long_name) VALUES ("D1", "Division 1");

-- Insert Position Information 
INSERT INTO Position (short_name, long_name, position_num) VALUES ("P", "Pitcher",1);
INSERT INTO Position (short_name, long_name, position_num) VALUES ("C", "Catcher", 2);
INSERT INTO Position (short_name, long_name, position_num) VALUES ("1B", "First Base", 3);
INSERT INTO Position (short_name, long_name, position_num) VALUES ("2B", "Second Base", 4);
INSERT INTO Position (short_name, long_name, position_num) VALUES ("3B", "Third Base", 5);
INSERT INTO Position (short_name, long_name, position_num) VALUES ("SS", "Short Stop", 6);
INSERT INTO Position (short_name, long_name, position_num) VALUES ("LF", "Left Field", 7);
INSERT INTO Position (short_name, long_name, position_num) VALUES ("2B", "Center Field", 8);
INSERT INTO Position (short_name, long_name, position_num) VALUES ("2B", "Right Field", 9);
INSERT INTO Position (short_name, long_name, position_num) VALUES ("DH", "Designated Hitter", 10);
INSERT INTO Position (short_name, long_name, position_num) VALUES ("EH", "Extra Hitter", 11);
INSERT INTO Position (short_name, long_name, position_num) VALUES ("INF", "Infield", 12);
INSERT INTO Position (short_name, long_name, position_num) VALUES ("OF", "Outfield", 13);

-- Insert Pitch Information 
INSERT INTO Pitch (short_name, long_name) VALUES ("CH", "Changeup");
INSERT INTO Pitch (short_name, long_name) VALUES ("CU", "Curveball");
INSERT INTO Pitch (short_name, long_name) VALUES ("CT", "Cutter");
INSERT INTO Pitch (short_name, long_name) VALUES ("EP", "Eephus");
INSERT INTO Pitch (short_name, long_name) VALUES ("FO", "Forkball");
INSERT INTO Pitch (short_name, long_name) VALUES ("FB", "Fastball");
INSERT INTO Pitch (short_name, long_name) VALUES ("FA", "Four-Seam Fastball");
INSERT INTO Pitch (short_name, long_name) VALUES ("KN", "Knuckleball");
INSERT INTO Pitch (short_name, long_name) VALUES ("KC", "Knuckle-curve");
INSERT INTO Pitch (short_name, long_name) VALUES ("SC", "Screwball");
INSERT INTO Pitch (short_name, long_name) VALUES ("SI", "Sinker");
INSERT INTO Pitch (short_name, long_name) VALUES ("SL", "Slider");
INSERT INTO Pitch (short_name, long_name) VALUES ("FS", "Splitter");
INSERT INTO Pitch (short_name, long_name) VALUES ("FT", "Two-Seam Fastball");
INSERT INTO Pitch (short_name, long_name) VALUES ("BB", "Breaking Ball");

-- Insert Hand Information
INSERT INTO Hand (short_name, long_name) VALUES ("LH", "Left Handed");
INSERT INTO Hand (short_name, long_name) VALUES ("RH", "Right Handed");
INSERT INTO Hand (short_name, long_name) VALUES ("SW", "Switch");

-- Insert Role Information 
INSERT INTO Role (short_name, long_name) VALUES ("P", "Player");
INSERT INTO Role (short_name, long_name) VALUES ("C", "Coach");
INSERT INTO Role (short_name, long_name) VALUES ("M", "Manager");

-- Base Information
INSERT INTO Base (short_name, long_name) VALUES ("1B", "First Base"); -- 1
INSERT INTO Base (short_name, long_name) VALUES ("2B", "Second Base"); -- 2
INSERT INTO Base (short_name, long_name) VALUES ("3B", "Third Base"); -- 3
INSERT INTO Base (short_name, long_name) VALUES ("H", "Home"); -- 4

-- Pitch Outcome Information
INSERT INTO PitchOutcome (short_name, long_name, strikes_to_add, balls_to_add, outs_to_add) VALUES ("STR", "Strike", 1, 0, 0);
INSERT INTO PitchOutcome (short_name, long_name, strikes_to_add, balls_to_add, outs_to_add) VALUES ("B", "Ball", 0, 1, 0);
INSERT INTO PitchOutcome (short_name, long_name, strikes_to_add, balls_to_add, outs_to_add, stop_after_two_strikes) VALUES ("FB", "Foul Ball", 1, 0, 0, true);
INSERT INTO PitchOutcome (short_name, long_name, strikes_to_add, balls_to_add, outs_to_add) VALUES ("BIPS", "Ball In Play (Safe)", 0, 0, 0);
INSERT INTO PitchOutcome (short_name, long_name, strikes_to_add, balls_to_add, outs_to_add) VALUES ("BIPO", "Ball In Play (Out)", 0, 0, 0);
INSERT INTO PitchOutcome (short_name, long_name, strikes_to_add, balls_to_add, outs_to_add) VALUES ("INT", "Interference", 0, 0, 1);

-- Pitch Extra Info Information
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("SW","Swinging",false, NULL);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("LK","Looking",false, NULL);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("PB","Passed Ball",false, NULL);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("WP","Wild Pitch",false, NULL);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("PO","Pitch Out",false, NULL);

INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("1B","Single",false, 1);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("2B","Double",false, 2);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("2B","Triple",false, 3);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("HR","Home Run",false, 4);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("HRInP","Home Run (In Park)",false, 4);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("FC","Fielder's Choice",false, 1);

INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("HO","Hitter Out",false, NULL);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("DP","Double Play",false, NULL);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("TP","Triple Play",false, NULL);

INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("GB","Ground Ball",false, NULL);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("FB","Fly Ball",false, NULL);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("LD","Line Drive",false, NULL);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("PF","Pop Fly",false, NULL);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("BT","Bunt",false, NULL);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("FL","Flare",false, NULL);

INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("BINF","Batter Interference",true, NULL);
INSERT INTO PitchExtraInfo (short_name, long_name, mark_hitter_as_out, send_hitter_to_base_id) VALUES ("CINF","Catcher Interference",false, 1);

-- Pitch Outcome and Pitch Extra Info Relationship

-- Strike
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (1, 1);
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (1, 2);

INSERT INTO PitchExtraInfoSection2 (pitch_outcome_id, pitch_extra_info_id) VALUES (1, 3);
INSERT INTO PitchExtraInfoSection2 (pitch_outcome_id, pitch_extra_info_id) VALUES (1, 4);
INSERT INTO PitchExtraInfoSection2 (pitch_outcome_id, pitch_extra_info_id) VALUES (1, 5);

-- Ball
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (2, 1);
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (2, 2);
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (2, 5);

-- Foul Ball
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (3, 1);
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (3, 2);

-- BIP Safe
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (4, 15);
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (4, 16);
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (4, 17);
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (4, 18);
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (4, 19);
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (4, 20);

INSERT INTO PitchExtraInfoSection2 (pitch_outcome_id, pitch_extra_info_id) VALUES (4, 6);
INSERT INTO PitchExtraInfoSection2 (pitch_outcome_id, pitch_extra_info_id) VALUES (4, 7);
INSERT INTO PitchExtraInfoSection2 (pitch_outcome_id, pitch_extra_info_id) VALUES (4, 8);
INSERT INTO PitchExtraInfoSection2 (pitch_outcome_id, pitch_extra_info_id) VALUES (4, 9);
INSERT INTO PitchExtraInfoSection2 (pitch_outcome_id, pitch_extra_info_id) VALUES (4, 10);
INSERT INTO PitchExtraInfoSection2 (pitch_outcome_id, pitch_extra_info_id) VALUES (4, 11);

-- BIP Out
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (5, 15);
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (5, 16);
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (5, 17);
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (5, 18);
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (5, 19);
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (5, 20);

INSERT INTO PitchExtraInfoSection2 (pitch_outcome_id, pitch_extra_info_id) VALUES (5, 12);
INSERT INTO PitchExtraInfoSection2 (pitch_outcome_id, pitch_extra_info_id) VALUES (5, 13);
INSERT INTO PitchExtraInfoSection2 (pitch_outcome_id, pitch_extra_info_id) VALUES (5, 14);

-- Interference
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (6, 21);
INSERT INTO PitchExtraInfoSection1 (pitch_outcome_id, pitch_extra_info_id) VALUES (6, 22);
