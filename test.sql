USE baseballcaard;
#SELECT player_id FROM Player;
# SELECT * From BallFlight WHERE player_id = '97c7914c-0938-11ec-8ea1-026121320b9c';
# SELECT * FROM BallFlight
# SELECT * FROM Person;
# SELECT * FROM BallFlight;
# SELECT * FROM Person;
SELECT team_id,
	team_name,
    abbreviation,
    location,
    nickname,
    team_primary_color_hex,
    team_secondary_color_hex,
    short_name as team_type_short,
    long_name as team_type_long FROM Team t
JOIN TeamType tt
ON t.team_type_id = tt.team_type_id;

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
ON hH.hand_id = pt.hitting_hand_id;
