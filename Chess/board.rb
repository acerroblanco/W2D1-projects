class Board
  
  def initialize(rows = Array.new(8) {Array.new(8)})
    
    @rows = rows
  end
  
  def move_piece(start_pos, end_pos)
      row, col = start_pos
      location = @rows[row][col]
      if location.nil?
        raise "No Piece at that position."
      elsif end_pos != nil
        raise "Can't Move to that position."
      end
    
      row2, col2 = end_pos
      piece_obj = @rows[row][col]
      @rows[row2][col2] = piece_obj
      @rows[row][col] = nil
      
  end 

end 