class Bet < Person
  attr_accessor :name, :balance

  def initialize (bet)
    puts "How much would you like to bet?"
    @bet = gets.to_i
    @balance
    p @bet
    # @balance - @bet
    puts "You bet #{@bet}, Your current balance is #{@balance}"
  end
end

