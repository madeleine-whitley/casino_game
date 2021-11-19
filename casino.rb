# menu: login with name -> balance in wallet 
# menu with games 
  # slots
  # high / low
  # three cups games 
# player places bet and wins / loses 
# player's bankroll goes up and down with wins and losses 

require_relative 'Person.rb'

class App
  attr_accessor :Person

  def initialize
    @person = init_person
  end

  def init_person
    puts "Enter your name"
    name = gets.strip
    puts "Enter your balance"
    balance = gets.to_i
    @person = Person.new(name, balance)
  end
end

app = App.new 

