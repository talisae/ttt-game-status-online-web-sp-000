def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

def won?(board)
  winner = nil
  WIN_COMBINATIONS.each do |combo|
    if combo.all? {|index| board[index] == "X"}
      winner = combo
    elsif combo.all? {|index| board[index] == "O"}
      winner = combo
    else
      false
    end
  end
  if winner != nil
    winner
  else
    false
  end
end

def full?(board)
  board.all?{|index| index == "X" || index == "O"}
end

def draw?(board)
  if full?(board) && won?(board) == false
    true
  else
    false
  end
end

def over?(board)
  draw?(board) || full?(board) || won?(board)
end

def winner(board)
  winner = nil
  WIN_COMBINATIONS.each do |combo|
    if combo.all? {|index| board[index] == "X"}
      winner = "X"
    elsif combo.all? {|index| board[index] == "O"}
      winner = "O"
    else
    end
  end
  winner
end
