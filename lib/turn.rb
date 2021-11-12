def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  
  # code your input_to_index and move method here!
  def input_to_index(user_entry)
    user_entry.to_i-1
  end
  
  def move (board, index, value = "X")
    board[index] = value
  
  end

  def valid_move? (board, index)
    if !position_taken?(board, index) && (index).between?(0,8)
    return true
    else 
        return false
    end
end
def position_taken? (board, index)
    if board[index]== " " || board[index] == "" || board[index] == nil
     return false 
    else 
     return true
    end
     
 end

 def move(board, index, current_player = "X")
 board[index] = current_player
 end
 def turn(board)
    puts "Please enter 1-9:"
    user_entry = gets.strip
    index = input_to_index(user_entry)
    if valid_move?(board, index)
        move(board, index)
        display_board(board)
    else
        turn(board)
    end
     end
  