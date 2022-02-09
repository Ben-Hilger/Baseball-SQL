SELECT * FROM Game;

-- INSERT INTO GameHistory (game_id, pitch_strike_zone_location_rel_X, pitch_strike_zone_location_rel_Y, hitter_id) VALUES (1,  0.3,  0.2, "b0bf1ec6-0b89-11ec-8ea1-026121320b9c");
-- INSERT INTO GameHistory (game_id, pitch_strike_zone_location_rel_X, pitch_strike_zone_location_rel_Y, hitter_id) VALUES (1,  0.5,  0.2, "b0bf1ec6-0b89-11ec-8ea1-026121320b9c");
-- INSERT INTO GameHistory (game_id, pitch_strike_zone_location_rel_X, pitch_strike_zone_location_rel_Y, hitter_id) VALUES (1,  0.8,  0.2, "b0bf1ec6-0b89-11ec-8ea1-026121320b9c");
-- INSERT INTO GameHistory (game_id, pitch_strike_zone_location_rel_X, pitch_strike_zone_location_rel_Y, hitter_id) VALUES (1,  0.3,  0.5, "b0bf1ec6-0b89-11ec-8ea1-026121320b9c");
-- INSERT INTO GameHistory (game_id, pitch_strike_zone_location_rel_X, pitch_strike_zone_location_rel_Y, hitter_id) VALUES (1,  0.5,  0.5, "b0bf1ec6-0b89-11ec-8ea1-026121320b9c");
-- INSERT INTO GameHistory (game_id, pitch_strike_zone_location_rel_X, pitch_strike_zone_location_rel_Y, hitter_id) VALUES (1,  0.8,  0.5, "b0bf1ec6-0b89-11ec-8ea1-026121320b9c");
-- INSERT INTO GameHistory (game_id, pitch_strike_zone_location_rel_X, pitch_strike_zone_location_rel_Y, hitter_id) VALUES (1,  0.3,  0.7, "b0bf1ec6-0b89-11ec-8ea1-026121320b9c");
-- INSERT INTO GameHistory (game_id, pitch_strike_zone_location_rel_X, pitch_strike_zone_location_rel_Y, hitter_id) VALUES (1,  0.5,  0.7, "b0bf1ec6-0b89-11ec-8ea1-026121320b9c");
-- INSERT INTO GameHistory (game_id, pitch_strike_zone_location_rel_X, pitch_strike_zone_location_rel_Y, hitter_id) VALUES (1,  0.8,  0.7, "b0bf1ec6-0b89-11ec-8ea1-026121320b9c");

SELECT gh.hitter_id, 
	COUNT(gh.history_id) as zone_1_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X < 0.2
	AND gh.pitch_strike_zone_location_rel_Y < 0.2
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_2_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X >= 0.2 AND gh.pitch_strike_zone_location_rel_X <= 0.4
	AND gh.pitch_strike_zone_location_rel_Y < 0.2
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_3_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.4 AND gh.pitch_strike_zone_location_rel_X <= 0.6
	AND gh.pitch_strike_zone_location_rel_Y < 0.2
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_4_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.6 AND gh.pitch_strike_zone_location_rel_X <= 0.8
	AND gh.pitch_strike_zone_location_rel_Y < 0.2
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_5_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.8
	AND gh.pitch_strike_zone_location_rel_Y < 0.2
GROUP BY 1;

SELECT gh.hitter_id, 
	COUNT(gh.history_id) as zone_6_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X < 0.2
	AND gh.pitch_strike_zone_location_rel_Y < 0.4
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_7_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X >= 0.2 AND gh.pitch_strike_zone_location_rel_X <= 0.4
	AND gh.pitch_strike_zone_location_rel_Y < 0.4
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_8_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.4 AND gh.pitch_strike_zone_location_rel_X <= 0.6
	AND gh.pitch_strike_zone_location_rel_Y < 0.4
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_9_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.6 AND gh.pitch_strike_zone_location_rel_X <= 0.8
	AND gh.pitch_strike_zone_location_rel_Y < 0.4
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_10_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.8
	AND gh.pitch_strike_zone_location_rel_Y < 0.2
GROUP BY 4;
    
SELECT gh.hitter_id, 
	COUNT(gh.history_id) as zone_11_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X < 0.2
	AND gh.pitch_strike_zone_location_rel_Y < 0.6
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_12_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X >= 0.2 AND gh.pitch_strike_zone_location_rel_X <= 0.4
	AND gh.pitch_strike_zone_location_rel_Y < 0.6
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_13_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.4 AND gh.pitch_strike_zone_location_rel_X <= 0.6
	AND gh.pitch_strike_zone_location_rel_Y < 0.6
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_14_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.6 AND gh.pitch_strike_zone_location_rel_X <= 0.8
	AND gh.pitch_strike_zone_location_rel_Y < 0.6
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_15_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.8
	AND gh.pitch_strike_zone_location_rel_Y < 0.6
GROUP BY 1;

SELECT gh.hitter_id, 
	COUNT(gh.history_id) as zone_16_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X < 0.2
	AND gh.pitch_strike_zone_location_rel_Y < 0.8
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_17_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X >= 0.2 AND gh.pitch_strike_zone_location_rel_X <= 0.4
	AND gh.pitch_strike_zone_location_rel_Y < 0.8
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_18_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.4 AND gh.pitch_strike_zone_location_rel_X <= 0.6
	AND gh.pitch_strike_zone_location_rel_Y < 0.8
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_19_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.6 AND gh.pitch_strike_zone_location_rel_X <= 0.8
	AND gh.pitch_strike_zone_location_rel_Y < 0.8
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_20_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.8
	AND gh.pitch_strike_zone_location_rel_Y < 0.8
GROUP BY 1;

SELECT gh.hitter_id, 
	COUNT(gh.history_id) as zone_21_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X < 0.2
	AND gh.pitch_strike_zone_location_rel_Y > 0.8
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_22_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X >= 0.2 AND gh.pitch_strike_zone_location_rel_X <= 0.4
	AND gh.pitch_strike_zone_location_rel_Y > 0.8
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_23_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.4 AND gh.pitch_strike_zone_location_rel_X <= 0.6
	AND gh.pitch_strike_zone_location_rel_Y > 0.8
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_24_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.6 AND gh.pitch_strike_zone_location_rel_X <= 0.8
	AND gh.pitch_strike_zone_location_rel_Y > 0.8
GROUP BY 1;

SELECT gh.hitter_id, COUNT(gh.history_id) as zone_25_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.8
	AND gh.pitch_strike_zone_location_rel_Y > 0.8
GROUP BY 1;

SELECT 
	z1.hitter_id,
    z1.zone_1_count,
	z2.zone_2_count,
    z3.zone_3_count,
    z4.zone_4_count,
    z5.zone_5_count,
    z6.zone_6_count,
    z7.zone_7_count,
    z8.zone_8_count,
    z9.zone_9_count
FROM (SELECT gh.hitter_id, 
	COUNT(gh.history_id) as zone_1_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X < 0.2
	AND gh.pitch_strike_zone_location_rel_Y < 0.2
GROUP BY 1) as z1
JOIN (SELECT gh.hitter_id, COUNT(gh.history_id) as zone_2_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X >= 0.2 AND gh.pitch_strike_zone_location_rel_X <= 0.4
	AND gh.pitch_strike_zone_location_rel_Y < 0.2
GROUP BY 1) as z2
ON z1.hitter_id = z2.hitter_id
JOIN (SELECT gh.hitter_id, COUNT(gh.history_id) as zone_3_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.4
	AND gh.pitch_strike_zone_location_rel_Y < 0.2
GROUP BY 1) as z3
ON z1.hitter_id = z3.hitter_id
JOIN (SELECT gh.hitter_id, COUNT(gh.history_id) as zone_4_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X < 0.2
	AND gh.pitch_strike_zone_location_rel_Y >= 0.2 AND gh.pitch_strike_zone_location_rel_Y <= 0.4
GROUP BY 1) z4
ON z1.hitter_id = z4.hitter_id
JOIN (SELECT gh.hitter_id, COUNT(gh.history_id) as zone_5_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X >= 0.2 AND gh.pitch_strike_zone_location_rel_X <= 0.4
	AND gh.pitch_strike_zone_location_rel_Y >= 0.2 AND gh.pitch_strike_zone_location_rel_Y <= 0.4
GROUP BY 1) z5
ON z1.hitter_id = z5.hitter_id
JOIN (SELECT gh.hitter_id, COUNT(gh.history_id) as zone_6_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X  > 0.4
	AND gh.pitch_strike_zone_location_rel_Y >= 0.2 AND gh.pitch_strike_zone_location_rel_Y <= 0.4
GROUP BY 1) z6
ON z1.hitter_id = z6.hitter_id
JOIN (SELECT gh.hitter_id, COUNT(gh.history_id) as zone_7_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X < 0.2
	AND gh.pitch_strike_zone_location_rel_Y > 0.4
GROUP BY 1) z7
ON z1.hitter_id = z7.hitter_id
JOIN (SELECT gh.hitter_id, COUNT(gh.history_id) as zone_8_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X >= 0.2 AND gh.pitch_strike_zone_location_rel_X <= 0.2
	AND gh.pitch_strike_zone_location_rel_Y > 0.4
GROUP BY 1) z8
ON z1.hitter_id = z8.hitter_id
JOIN (SELECT gh.hitter_id, COUNT(gh.history_id) as zone_9_count
FROM GameHistory gh
WHERE gh.pitch_strike_zone_location_rel_X > 0.4
	AND gh.pitch_strike_zone_location_rel_Y > 0.4
GROUP BY 1) z9
ON z1.hitter_id = z9.hitter_id;