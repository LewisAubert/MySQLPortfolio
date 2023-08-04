/* What does the app's SQL look like? */
-- CREATE a table to store player scores
CREATE TABLE player_scores (
    id INTEGER PRIMARY KEY,
    player_name TEXT,
    game_name TEXT,
    score INTEGER
);

-- INSERT a few example rows in the table
INSERT INTO player_scores (player_name, game_name, score)
VALUES
    ('Player1', 'Game1', 500),
    ('Player2', 'Game1', 750),
    ('Player1', 'Game2', 1200),
    ('Player3', 'Game1', 600);

-- UPDATE to emulate editing data in the app
UPDATE player_scores
SET score = 800
WHERE player_name = 'Player1' AND game_name = 'Game1';

-- DELETE to emulate deleting data in the app
DELETE FROM player_scores
WHERE player_name = 'Player3' AND game_name = 'Game1';

-- SELECT to retrieve and display the updated data
SELECT * FROM player_scores;

