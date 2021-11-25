class Person 
  attr_accessor :name, :balance

  def initialize (name, balance)
    name = name
    $balance = balance 
    puts "Hello #{name}, Your current balance is $#{balance}"
  end

  def increase_balance(balance, bet)
    bet = bet * 2
    $balance = balance + bet
    puts "You have won $#{bet}, Your balance is $#{$balance}!"
  end

  def decrease_balance(balance, bet)
   $balance = balance - bet
   puts "You lost $#{bet}, your current balance is $#{$balance}"
  #  p @balance #this is working!!
  end

  def increase_balance_player(balance, bet)
    $balance = balance + bet
    puts "You have added $#{bet}, Your balance is $#{$balance}!"
    menu
  end
end 






