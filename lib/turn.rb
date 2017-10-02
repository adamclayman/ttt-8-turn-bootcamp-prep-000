def input_to_index(input)
  index = input.to_i - 1
  return index
end

def valid_move?(board, index)
  if (index >= 0 && index <= 8)
    if (position_taken?)
      return false
    else
      return true
    end
  else
    puts "Please enter a position between 1 and 9."
  end
end

def position_taken?(board, index)
  if (board[index] == "X" || board[index] == "O")
    return true
  elsif (board[index] == " " || board[index] == "")
    return false
end

def turn
  board_temp = board
  while (board_temp == board)
    "What square would you like? Choose 1 - 9."
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
      board[index] = "X"
    else
      puts "Please enter a valid choice of square, 1-9"
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} |  #{board[2]}"
  puts "-----------"
  puts " #{board[3]} | #{board[4]} |  #{board[5]}"
  puts "-----------"
  puts " #{board[6]} | #{board[7]} |  #{board[8]}"
end
