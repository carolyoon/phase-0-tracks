
class Hangman
    attr_reader :current_state, :guesses
    attr_accessor :secret_word, :guess, :kill_program

    def initialize
        @kill_program = false 
        @guesses = []
    end 

    def store_word(secret_word)
        @secret_word = secret_word.split(//)
        @secret_word
        @current_state = "_" * @secret_word.length
    end

    def store_guess(guess)
        if !@guesses.include?(guess)
            @guesses << guess
        end
    end 

    def compare_guess(guess)
        @secret_word.each do |letter|
            if guess == letter
            @current_state[@secret_word.index(letter)] = letter            
            end
        end
        @current_state

    end 
end 

#user interface


puts "Welcome to Hangman! Please enter your (secret) word to be guessed: "
game = Hangman.new
secret_word = gets.chomp 

game.store_word(secret_word)

while !game.kill_program 
    puts "Please enter your guess (limited one letter per guess): "
    guess = gets.chomp

    game.store_guess(guess)

    puts game.compare_guess(guess)
    
    if game.guesses.length >= game.secret_word.length * 2 
        game.kill_program = true 
        puts "No more guesses left! You suck at this!"
    elsif game.current_state == game.secret_word.join("")
        game.kill_program = true 
        puts "Congratulations, you guessed correctly!"
    end 

end



#driver code 
# p game.store_word("code")
# p game.store_guess("d")
# p game.compare_guess("d")
# p game.compare_guess("c")
# p game.current_state


