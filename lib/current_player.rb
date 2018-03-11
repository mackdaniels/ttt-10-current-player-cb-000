#keeps track of whos turn it is on the board
#maximum amount of turns for both players is 9
#even numbers should return X otherwise O
def turn_count(board)
  count = 0
  board.each do |occupied|
    if occupied == "X" || occupied == "O"
      #if count is =< to 9
      count = count + 1
    end
  end
  return count
end

def current_player(board)
  if turn_count(board) % 2 == 0
    return "X"
  else
    return "O"
  end
end
