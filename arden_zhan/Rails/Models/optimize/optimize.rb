# 1
# Retrieve all players, loop through each player and display their team name, mascot, and stadium. 
# How many queries? 1 query for all players, then N queries for each team of player = N+1 queries
players = Player.all
players.each do |player|
    team = player.team
    puts "Player: #{player.name}, Team: #{team.name}, Mascot: #{team.mascot}, Stadium: #{team.stadium}"
end

# ---

# 2
# Retrieve all players and loop through each player, team name, mascot and stadium using .includes. 
# How many queries? 
# Eager loads team with player query, so only 2 queries needed
players = Player.includes(:team)
players.each do |player|
    puts "Player: #{player.name}, Team: #{player.team.name}, Mascot: #{player.team.mascot}, Stadium: #{player.team.stadium}"
end

# 3
# Retrieve all players from 'Chicago Bulls' by using .includes
Player.includes(:team).where("teams.name = 'Chicago Bulls'").references(:team)

# 4
# Retrieve all players along with team name that play at 'Staples Center'
# teams.name needs an as because it's same .name as players.name
Player.joins(:team).select('players.*', 'teams.name as team_name', 'teams.stadium').where("teams.stadium = 'Staples Center'")

# 5
# Retrieve all teams that have any player that start their name with the letter 'Z' by using .includes and .joins
Team.includes(:players).where("players.name LIKE 'Z%'").references(:players)

Team.joins(:players).where("players.name LIKE 'Z%'").select("teams.name as team_name", "teams.*", "players.*")



