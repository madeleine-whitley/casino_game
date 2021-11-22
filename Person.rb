class Person 
  attr_accessor :name, :balance

  def initialize (name, balance)
    name = name
    balance = balance 
    puts "Hello #{name}, Your current balance is #{balance}"
  end

  def increase_balance(number)
    @balance += @bet
  end

  def decrease_balance(number)
    @balance -= @bet
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



