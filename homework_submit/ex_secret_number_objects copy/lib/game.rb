require 'lib/person'
require 'lib/secret_number'

class Game
  attr_accessor :secret, :player, :guesses_left

  def initialize(player_name)
    @secret = SecretNumber.new
    @player = Person.new(player_name)
    @guesses_left = 2
  end

  def start
    puts "\n Welcome #{@player.name}! You get 3 changes to guess the Secret Number between 1 and 10. \n"

    while @guesses_left != 0
      get_guess
      break if @guess == @secret.number
    end
  end

  private

  def get_guess
    puts "What is your number guess??"
    @guess = gets.to_i
    @guesses_left -= 1
    puts 'clear'
    check_guess(@guess)
  end

  def checks_guess(guess)
    if guess == @secret.number
      puts "HOORAY! YOU GUESSED IT!"
    elsif guess != @secret.number && guesses_left > 0
      if guess < @secret.number
        puts "You guessed #{guess}, Guess higher! Number of guesses left: #{guessses_left}"
      elsif guess > @secret.number
        puts "You guessed #{guess}, Guess lower! Number of #{guesses_left}"
      end
    else
      puts "GAME OVER!  The secret number was #{secret_number}"
    end
  end
end
