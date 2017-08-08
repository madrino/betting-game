CREATE TABLE users (
    id INTEGER NOT NULL AUTO_INCREMENT,
    username VARCHAR(150) NOT NULL,
    email VARCHAR(255) NOT NULL,
    CONSTRAINT pk_user PRIMARY KEY (id)
);

CREATE TABLE teams (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    CONSTRAINT pk_teams PRIMARY KEY (id)
);

CREATE TABLE matches (
    id INTEGER NOT NULL AUTO_INCREMENT,
    starttime DATETIME NOT NULL,
    team_a_id INTEGER NOT NULL,
    team_b_id INTEGER NOT NULL,
    CONSTRAINT pk_matches PRIMARY KEY (id),
    CONSTRAINT fk_team_a FOREIGN KEY (team_a_id) REFERENCES teams(id),
    CONSTRAINT fk_team_b FOREIGN KEY (team_b_id) REFERENCES teams(id)
);