# menu: login with name -> balance in wallet 
# menu with games 
  # slots
  # high / low
  # three cups games 
# player places bet and wins / loses 
# player's bankroll goes up and down with wins and losses 



# require_relative 'Person.rb'


# class App
#   attr_accessor :Person

#   def initialize
#     @person = init_person
#   end
require_relative 'Person'
require_relative 'Bet'
require_relative 'Card'
require_relative 'Deck'
require_relative 'hilo'
require_relative 'slots'
require_relative 'menu'
require_relative 'increase'
require_relative 'cups'

  def init_person
    puts "Enter your name"
    @name = gets.strip
    puts "Enter your balance"
    $balance = gets.to_i
  end

  init_person
  puts "--House Rules! The payout on all games is 1:1! Good Luck!--"
  $current_user = Person.new(@name, $balance)
  menu