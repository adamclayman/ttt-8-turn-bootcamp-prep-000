def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] = nil)
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if (index >= 0 && index <= 8)
    if position_taken?(board, index) == false
      return true
    else
      return false
    end
  end
end

def move(board, index, player_char="X")
  board[index] = player_char
end

def turn(board)
=begin
  temp_board = board
=end

  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if (valid_move?(board, index))
      break
    end
  end


=begin

  while board == temp_board
    if valid_move? == true
      move(board, index)
      display_board(board)
    else
      "Please enter an unused 1-9:"
    end
  end
=end
end
