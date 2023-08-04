/* Create table about the people and what they do here */
-- Create the 'famous_people' table
CREATE TABLE famous_people (
    id INTEGER PRIMARY KEY,
    name TEXT,
    profession TEXT
);

-- Create the 'movies' table
CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title TEXT,
    release_year INTEGER
);

-- Create the 'movie_cast' table to represent the relationship between movie stars and movies
CREATE TABLE movie_cast (
    id INTEGER PRIMARY KEY,
    movie_id INTEGER,
    person_id INTEGER,
    role TEXT,
    FOREIGN KEY (movie_id) REFERENCES movies(id),
    FOREIGN KEY (person_id) REFERENCES famous_people(id)
);

-- Insert sample data into 'famous_people' table
INSERT INTO famous_people (id, name, profession)
VALUES
    (1, 'Tom Hanks', 'Actor'),
    (2, 'Julia Roberts', 'Actress'),
    (3, 'Rita Wilson', 'Actress'),
    (4, 'Brad Pitt', 'Actor'),
    (5, 'Angelina Jolie', 'Actress');

-- Insert sample data into 'movies' table
INSERT INTO movies (id, title, release_year)
VALUES
    (1, 'Forrest Gump', 1994),
    (2, 'Pretty Woman', 1990),
    (3, 'Sleepless in Seattle', 1993),
    (4, 'Fight Club', 1999),
    (5, 'Mr. & Mrs. Smith', 2005);

-- Insert sample data into 'movie_cast' table
INSERT INTO movie_cast (id, movie_id, person_id, role)
VALUES
    (1, 1, 1, 'Forrest Gump'),
    (2, 2, 2, 'Vivian Ward'),
    (3, 3, 3, 'Annie Reed'),
    (4, 4, 4, 'Tyler Durden'),
    (5, 5, 4, 'John Smith'),
    (6, 5, 5, 'Jane Smith');

-- Query: What movies are Tom Hanks and Julia Roberts in?
SELECT fp.name AS "Actor/Actress", m.title AS "Movie"
FROM famous_people fp
JOIN movie_cast mc ON fp.id = mc.person_id
JOIN movies m ON mc.movie_id = m.id
WHERE fp.name IN ('Tom Hanks', 'Julia Roberts');

-- Query: Are Tom Hanks and Rita Wilson in any movies together?
SELECT m.title AS "Movie"
FROM famous_people fp1
JOIN movie_cast mc1 ON fp1.id = mc1.person_id
JOIN movies m ON mc1.movie_id = m.id
JOIN movie_cast mc2 ON m.id = mc2.movie_id
JOIN famous_people fp2 ON mc2.person_id = fp2.id
WHERE fp1.name = 'Tom Hanks' AND fp2.name = 'Rita Wilson';