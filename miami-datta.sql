USE baseballcaard;

-- Setup Team and Season Information 

INSERT INTO Team (team_id, team_name, abbreviation, location, nickname, team_primary_color_hex, team_secondary_color_hex, team_type_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "Miami University Redhawks", "MU", "Oxford, Ohio", "Redhawks", "", "", 1);    
INSERT INTO Season (name, year) VALUES ("Fall", 2021);

-- Load Player Information 
INSERT INTO Person VALUES ("b0bf1ec6-0b89-11ec-8ea1-026121320b9c","Tyler", "Wardwell", "", 74, "Cincinatti, Ohio", "Tyler", 195);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0bf1ec6-0b89-11ec-8ea1-026121320b9c", "Lasalle", "Cincinatti, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0bf1ec6-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);

INSERT INTO Person VALUES ("b0c21d52-0b89-11ec-8ea1-026121320b9c","Billy", "Kopicki", "", 73, "Grosse Pointe, Michigan", "Billy", 190);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0c21d52-0b89-11ec-8ea1-026121320b9c", "University Liggett", "Grosse Pointe, Michigan");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0c21d52-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);

INSERT INTO Person VALUES ("b0c46878-0b89-11ec-8ea1-026121320b9c","Zach", "Maxey", "", 75, "Avon, Ohio", "Zach", 195);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0c46878-0b89-11ec-8ea1-026121320b9c", "St. Edward", "Avon, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0c46878-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);

INSERT INTO Person VALUES ("b0c6ba55-0b89-11ec-8ea1-026121320b9c","Jax", "Wardwell", "", 71, "Cincinatti, Ohio", "Jax", 185);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0c6ba55-0b89-11ec-8ea1-026121320b9c", "Lasalle", "Cincinatti, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0c6ba55-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0c9414e-0b89-11ec-8ea1-026121320b9c","Martin", "Sosna", "", 70, "Chicago, Illinois", "Martin", 185);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0c9414e-0b89-11ec-8ea1-026121320b9c", "Fenwick", "Chicago, Illinois");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0c9414e-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0cb6282-0b89-11ec-8ea1-026121320b9c","Brian", "Zapp", "", 73, "Waterloo, Ontario", "Brian", 195);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0cb6282-0b89-11ec-8ea1-026121320b9c", "Sir John A Macdonald", "Waterloo, Ontario");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0cb6282-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0cda403-0b89-11ec-8ea1-026121320b9c","Cristian", "Tejada", "", 69, "Twinsburg, Ohio", "Cristian", 175);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0cda403-0b89-11ec-8ea1-026121320b9c", "Twinsburg", "Twinsburg, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0cda403-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0cff0fb-0b89-11ec-8ea1-026121320b9c","Tyler", "Ronevich", "", 77, "Columbus, OH", "Tyler", 187);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0cff0fb-0b89-11ec-8ea1-026121320b9c", "Central Crossing", "Columbus, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0cff0fb-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0d22553-0b89-11ec-8ea1-026121320b9c","Dalton", "Back", "", 70, "Columbus, Indiana", "Dalton", 200);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0d22553-0b89-11ec-8ea1-026121320b9c", "Columbus East", "Columbus, Indiana");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0d22553-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0d47443-0b89-11ec-8ea1-026121320b9c","Benji", "Brokemond", "", 72, "South Holland, Illinois", "Benji", 180);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0d47443-0b89-11ec-8ea1-026121320b9c", "Brother Rice", "South Holland, Illinois");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0d47443-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0d6b974-0b89-11ec-8ea1-026121320b9c","Nick", "Neibauer", "", 75, "Farmington Hills, Michigan", "Nick", 210);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0d6b974-0b89-11ec-8ea1-026121320b9c", "Detriot Country Day", "Farmington Hills, Michigan");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0d6b974-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0d8f9f0-0b89-11ec-8ea1-026121320b9c","Nick", "Clark", "", 73, "Willowick, Ohio", "Dalton", 205);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0d8f9f0-0b89-11ec-8ea1-026121320b9c", "Notre Dame Catheral Latin", "Willowick, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0d8f9f0-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0db433f-0b89-11ec-8ea1-026121320b9c","JJ", "Woolwine", "", 71, "Fishers, Indiana", "JJ", 170);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0db433f-0b89-11ec-8ea1-026121320b9c", "Fishers", "Fishers, Indiana");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0db433f-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0ddd2f3-0b89-11ec-8ea1-026121320b9c","Cole", "Andrews", "", 70, "Powell, Ohio", "Cole", 215);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0ddd2f3-0b89-11ec-8ea1-026121320b9c", "Bishop Watterson", "Powell, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0ddd2f3-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0e00e4f-0b89-11ec-8ea1-026121320b9c","Michael", "Spinozzi", "", 72, "Southlake, Texas", "Michael", 185);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0e00e4f-0b89-11ec-8ea1-026121320b9c", "Southlake", "Southlake, Texas");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0e00e4f-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0e25106-0b89-11ec-8ea1-026121320b9c","Tyler", "Galyean", "", 76, "Westfield, Indiana", "Tyler", 183);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0e25106-0b89-11ec-8ea1-026121320b9c", "University", "Westfield, Indiana");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0e25106-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0e48f5a-0b89-11ec-8ea1-026121320b9c","Aaron", "Massie", "", 74, "Evansville, Indiana", "Aaron", 206);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0e48f5a-0b89-11ec-8ea1-026121320b9c", "F.J. Reitz", "Evansville, Indiana");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0e48f5a-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0e6d629-0b89-11ec-8ea1-026121320b9c","Zach", "Macdonald", "", 73, "Portage, Michigan", "Zach", 180);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0e6d629-0b89-11ec-8ea1-026121320b9c", "Portage Central", "Portage, Michigan");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0e6d629-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0e91396-0b89-11ec-8ea1-026121320b9c","Stephen", "Krause", "", 75, "Wilmington, Ohio", "Stephen", 230);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0e91396-0b89-11ec-8ea1-026121320b9c", "Wilmington", "Wilmington, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0e91396-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0ebb2a8-0b89-11ec-8ea1-026121320b9c","Billy", "Blood", "", 74, "Westlake, Ohio", "Billy", 200);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0ebb2a8-0b89-11ec-8ea1-026121320b9c", "Westlake", "Westlake, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0ebb2a8-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0ee0767-0b89-11ec-8ea1-026121320b9c","Jacob", "Greer", "", 74, "Hicksville, Ohio", "Jacob", 200);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0ee0767-0b89-11ec-8ea1-026121320b9c", "Hicksville", "Hicksville, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0ee0767-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0f041ab-0b89-11ec-8ea1-026121320b9c","Jonathan", "Brand", "", 69, "Columbus, Georgia", "Jonathan", 200);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0f041ab-0b89-11ec-8ea1-026121320b9c", "Columbus", "Columbus, Georgia");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0f041ab-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0f27d76-0b89-11ec-8ea1-026121320b9c","Lawson", "Blackmore", "", 70, "Van Wert, Ohio", "Lawson", 205);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0f27d76-0b89-11ec-8ea1-026121320b9c", "Van Wert", "Van Wert, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0f27d76-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0f4ae51-0b89-11ec-8ea1-026121320b9c","Nick", "Demonica", "", 72, "Cortland, Ohio", "Jacob", 180);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0f4ae51-0b89-11ec-8ea1-026121320b9c", "Lakeview", "Cortland, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0f4ae51-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0f6f200-0b89-11ec-8ea1-026121320b9c","Easton", "Good", "", 72, "Walton, Indiana", "Easton", 176);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0f6f200-0b89-11ec-8ea1-026121320b9c", "Lewis Cass", "Walton, Indiana");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0f6f200-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0f9496c-0b89-11ec-8ea1-026121320b9c","Parker", "Lester", "", 76, "Calhoun, Ohio", "Parker", 200);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0f9496c-0b89-11ec-8ea1-026121320b9c", "Calhoun", "Calhoun, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0f9496c-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0fb70a6-0b89-11ec-8ea1-026121320b9c","Austin", "Greco", "", 69, "Mundelein, Illinois", "Austin", 175);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0fb70a6-0b89-11ec-8ea1-026121320b9c", "Mundelein", "Mundelein, Illinois");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0fb70a6-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b0fe2226-0b89-11ec-8ea1-026121320b9c","David", "Novak", "", 74, "Zionsville, Indiana", "David", 205);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b0fe2226-0b89-11ec-8ea1-026121320b9c", "Zionsville Community", "Zionsville, Indiana");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b0fe2226-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b10057d1-0b89-11ec-8ea1-026121320b9c","Ryan", "Starr", "", 73, "Avon, Ohio", "Austin", 190);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b10057d1-0b89-11ec-8ea1-026121320b9c", "Avon", "Avon, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b10057d1-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b102a9ab-0b89-11ec-8ea1-026121320b9c","Luke", "Leverton", "", 73, "Richmond, Indiana", "Luke", 215);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b102a9ab-0b89-11ec-8ea1-026121320b9c", "Seton Catholic", "Richmond, Indiana");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b102a9ab-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b104e9f7-0b89-11ec-8ea1-026121320b9c","Brady", "McLean", "", 72, "Lakewood, Ohio", "Brady", 200);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b104e9f7-0b89-11ec-8ea1-026121320b9c", "Columbine", "Lakewood, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b104e9f7-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b1079866-0b89-11ec-8ea1-026121320b9c","Kenten", "Egbert", "", 75, "Tipp City, Ohio", "Kenten", 205);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b1079866-0b89-11ec-8ea1-026121320b9c", "Tippecanoe", "Tipp City, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b1079866-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b10bb51a-0b89-11ec-8ea1-026121320b9c","Lazaro", "Marquez", "", 73, "St. Charles, Ohio", "Lazaro", 207);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b10bb51a-0b89-11ec-8ea1-026121320b9c", "Homeschooled", "St. Charles, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b10bb51a-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b10dfe86-0b89-11ec-8ea1-026121320b9c","Nate", "Stone", "", 74, "Granville, Ohio", "Nate", 210);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b10dfe86-0b89-11ec-8ea1-026121320b9c", "Granville", "Granville, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b10dfe86-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b1104cf8-0b89-11ec-8ea1-026121320b9c","Blake", "Buzzeo", "", 70, "Stow, Ohio", "Blake", 190);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b1104cf8-0b89-11ec-8ea1-026121320b9c", "St. Edward High School", "Stow, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b1104cf8-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b1129d23-0b89-11ec-8ea1-026121320b9c","Dom", "Magliocca", "", 70, "Canfield, Ohio", "Dom", 175);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b1129d23-0b89-11ec-8ea1-026121320b9c", "Canfield", "Canfield, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b1129d23-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b114d1ad-0b89-11ec-8ea1-026121320b9c","Colin", "Czajkowski", "", 76, "Browntown, Ohio", "Colin", 195);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b114d1ad-0b89-11ec-8ea1-026121320b9c", "Woodhaven", "Browntown, Ohio");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b114d1ad-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b117028f-0b89-11ec-8ea1-026121320b9c","William", "Escala", "", 71, "Miami, Florida", "William", 180);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b117028f-0b89-11ec-8ea1-026121320b9c", "South Dade", "Miami, Florida");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b117028f-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b1193feb-0b89-11ec-8ea1-026121320b9c","Patrick", "Mastrian", "", 71, "Indianapolis, Indiana", "Partick", 205);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b1193feb-0b89-11ec-8ea1-026121320b9c", "Bishop Chatard", "Indianapolis, Indiana");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b1193feb-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Person VALUES ("b11b745d-0b89-11ec-8ea1-026121320b9c","Sloan", "Thomsen", "", 79, "Lawrence, Kansas", "Sloan", 225);
INSERT INTO PersonSchool (person_id, school_name, school_location) VALUES ("b11b745d-0b89-11ec-8ea1-026121320b9c", "Lawrence Free State", "Lawrence, Kansas");
INSERT INTO PersonTeam (team_id, person_id, season_id, throwing_hand_id, hitting_hand_id, role_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "b11b745d-0b89-11ec-8ea1-026121320b9c", 1, 2, 2, 1);
    
INSERT INTO Game (home_team_id, away_team_id, game_date, game_start_hour, game_start_minute, season_id) 
	VALUES ("bddfd124-0b97-11ec-8ea1-026121320b9c", "bddfd124-0b97-11ec-8ea1-026121320b9c", NOW(), 12, 0, 1);