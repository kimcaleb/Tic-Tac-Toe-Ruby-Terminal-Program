class Game

    def initialize
        initialize_game_board 
        initialize_hash
        player_one
        player_two
    end
    
    def initialize_game_board
        @multi_array_game_board = [
            ["_____","_____","_____"],
            ["_____","_____","_____"],
            ["_____","_____","_____"]
          ]
    end
    
    def initialize_hash
        @hash_possible_moves = {
            "A1" => "00",
            "B1" => "01",
            "C1" => "02",
            "A2" => "10",
            "B2" => "11",
            "C2" => "12",
            "A3" => "20",
            "B3" => "21",
            "C3" => "22"
        }
    end

    def display_board 
        puts "      A     B     C"
        puts ""
        i = 1
        for x in @multi_array_game_board
            print i.to_s + "   "
            for y in x
                print y + " "
            end
            2.times {puts ""}
            i += 1
        end
    end


    def player_one
        @player_one_moves = []
    end

    def player_two
        @player_two_moves = []
    end

    def player_one_win?
        win_condtions = [
            ["A1","B1","C1"],["A2","B2","C2"],["A3","B3","C3"],
            ["A1","A2","A3"],["B1","B2","B3"],["C1","C2","C3"],
            ["A1","B2","C3"],["A3","B2","C1"]
        ]
        if win_condtions.any? { |line| line.all? { |moves| @player_one_moves.include? moves } }  
            return true
        else
            return false
        end
    end

    def player_two_win?
        win_condtions = [
            ["A1","B1","C1"],["A2","B2","C2"],["A3","B3","C3"],
            ["A1","A2","A3"],["B1","B2","B3"],["C1","C2","C3"],
            ["A1","B2","C3"],["A3","B2","C1"]
        ]
        if win_condtions.any? { |line| line.all? { |moves| @player_two_moves.include? moves } }  
            return true
        else
            return false
        end
    end

    def board_full?
        
    end


 
end
