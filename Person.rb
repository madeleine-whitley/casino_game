class Person 
  attr_accessor :name, :balance

  def initialize (name, balance)
    name = name
    balance = balance 
    puts "Hello #{name}, Your current balance is #{balance}"
  end

  def increase_balance(balance, bet)
    bet = bet * 2
    $balance = balance + bet
    puts 'You have won $#{bet}, Your balance is @balance'
  end

  def decrease_balance(balance, bet)
   $balance = balance - bet
  #  p @balance #this is working!!
  end
end 


# class Player
#   attr_accessor :name, :hand, :bankroll, :total

#   def
#     @name = name
#     @hand = []
#     @bankroll = bankroll
#     @total = total
#   end


# human = Player.new "Human", [], 100, 0
# computer = Player.new "Dealer", [], 10000, 0



