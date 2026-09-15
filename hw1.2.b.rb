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

def rps_tournament_winner(tournament)
  if tournament[0][0].is_a?(String)
    return rps_game_winner(tournament)
  else
    left_winner = rps_tournament_winner(tournament[0])
    right_winner = rps_tournament_winner(tournament[1])
    return rps_game_winner([left_winner, right_winner])
  end
end

tournament = [
  [
    [["Kristen", "P"], ["Dave", "S"]],
    [["Richard", "R"], ["Michael", "S"]],
  ],
  [
    [["Allen", "S"], ["Omer", "P"]],
    [["David E.", "R"], ["Richard X.", "P"]],
  ],
]

puts rps_tournament_winner(tournament).inspect

#[
#[
#[ ["Kristen", "P"], ["Dave", "S"] ],
#[ ["Richard", "R"], ["Michael", "S"] ],
#],
#[
#[ ["Allen", "S"], ["Omer", "P"] ],
#[ ["David E.", "R"], ["Richard X.", "P"] ]
#]
#]
