-- Design a schema for a simple sports league. Your schema should keep track of:
-- - All of the teams in the league
-- - All of the goals scored by every player for each game
-- - All of the players in the league and their corresponding teams
-- - All of the referees who have been part of each game
-- - All of the matches played between teams
-- - All of the start and end dates for season that a league has
-- - The standings/rankings of each team in the league 
--     (This doesn’t have to be its own table if the data can be captured somehow).

Tables: 
    teams, players, referees, matches, seasons, rankings;

- teams: 
    id, 
    name;
- players: 
    id, 
    first_name,
    last_name, 
    team_id, 
    goals;
- referees: 
    id, 
    first_name, 
    last_name;
- matches: 
    id, 
    team_id_home, 
    team_id_away, 
    referee_id, 
    season_id; 
- seasons: 
    id, 
    start_date, 
    end_date
- rankings: 
    id, 
    team_id