class Game
    WINNING_COMBO = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
      [1, 4, 7],
      [2, 5, 8],
      [3, 6, 9],
      [1, 5, 9],
      [3, 5, 7]
    ].freeze
    attr_accessor :player1, :player2, :game_array
    def initialize
      @player1 = Player.new('', 'X')
      @player2 = Player.new('', 'O')
      @game_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end
  
    def game_start
      position = 0
      i = 0
      while i < 9
        move(@player1, position)
        gameboard(game_array)
        return win(@player1.name) if check_win?(WINNING_COMBO, @player1.array)
        
        i += 1
        break if i >= 9
  
        move(@player2, position)
        gameboard(game_array)
        return win(@player2.name) if check_win?(WINNING_COMBO, @player2.array)
  
        i += 1
        break if i >= 9
  
      end
      return tie
    end
  
    def check_win?(arr1, arr2)
      arr1.length.times do |item|
        return true if arr1[item].all? { |x| arr2.include?(x) }
      end
      false
    end
  
    
  
    
  end