#Create hangman game

#Business logic
	#create method to store a string as an array of letters
	#create method to store guesses
	#create method to iterate through array and compare guess to the letters
		#if guess matches letter, print letter
		#if guess doesn't match letter, print "_ "
	#create method to loop through game
		#repeat guesses do not count
		#stop when guesses are twice length of word or word guessed correctly
		#stop if word is guessed 


#User interface
	#write congratulatory message if win
	#write taunting message if lose 

#Test code 

#Business logic

class Hangman
	attr_accessor :secret_word, :guess, :guesses

    def initialize
    	puts "Initializing new game"
    	@guesses = []
    	@kill_program = false
    end
    
    def store_word(secret_word)
    	@secret_word = secret_word.split(//)
    	@secret_word
    end

    
    def store_guesses(guess)
        @guesses << guess
        compare_guesses(@secret_word, guess)
    end 
        
        def compare_guesses(secret_word, guess)
        	@secret_word.each do |letter|
        		if guess == letter
        			print letter
        		else 
        			print "_ "
        		end
        		@guesses
        	end
        	if @guesses.include?(@secret_word) == true
        		puts "Congrats you guessed correctly!"
        		@endgame_flag = true
            end 	
        endgame_finale
        end
        
        def endgame_finale
            if @guesses.length >= @secret_word.length * 2
            	puts "FAILURE"
            	@kill_program = true
            elsif @endgame_flag == true
            	puts "VICTORY"
            	@kill_program = true
            end
        end
    # end

end


game = Hangman.new
#Test code
p game.store_word("code")
# game.guesses = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]
# game.guesses = ["c", "d", "e"]
p game.guesses
p game.store_guesses("c")
p game.store_guesses("o")
p game.store_guesses("d")
p game.store_guesses("e")

p game.guesses

