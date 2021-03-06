
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} " 
end 

def input_to_index(position)
  position.to_i - 1
  end

def move(board, position, player = "X")
  board[position] = player
  end

def valid_move?(board, position)
 if position.between?(1,9)
 if !position_taken?(board, position)
  true
  end
end

  position.between?(0,8) && !position_taken?(board, position)
end

def position_taken?(board, position)
 
  if board[position] ==  " " || board[position] == "" || board[position] == nil
    false
  else
    true
  end
  end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  position = input_to_index(input)
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end


