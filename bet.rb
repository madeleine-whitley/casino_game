# class Bet < Person
#   attr_accessor :name, :balance

  def betting
    puts "How much would you like to bet?"
    @bet = gets.to_i
    # @balance - @bet
    puts "You bet $#{@bet}. Good Luck!"
  end
# end

