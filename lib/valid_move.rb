# code your #valid_move? method here

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


def valid_move?(board, index)
  move = index.to_i - 1
  if position_taken?(board, index) == false
    return true
  elsif move >= 9 
    return false
  elsif move < 0 && move >= 9 && position_taken?(board, index) == false
    return true 
  else position_taken?(board, index) == true
    return false
  
 end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  move = index.to_i - 1 
  if board[index] == " " || board[index] == "" || board[index] = nil 
    return false 
  else board[index] != "" || board[index] != " " 
    return true   
  end
end
