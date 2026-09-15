class WrongNumberOfPlayersError < StandardError; end
class NoSuchStrategyError < StandardError; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless game.all? { |player| %w[R P S].include?(player[1].upcase) }

  if (game[0][1].upcase == game[1][1].upcase)
    return game[0]
  elsif (game[0][1].upcase == "R" && game[1][1].upcase == "S") ||
        (game[0][1].upcase == "S" && game[1][1].upcase == "P") ||
        (game[0][1].upcase == "P" && game[1][1].upcase == "R")
    return game[0]
  else
    return game[1]
  end
end

# [ [ "Kristen", "P" ], [ "Pam", "S" ] ]
# => returns the list ["Pam", "S"] wins since S>P

game = [["Kristen", "P"], ["Pam", "S"]]
puts rps_game_winner(game).inspect
