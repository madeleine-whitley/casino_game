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

  def init_person
    puts "Enter your name"
    @name = gets.strip
    puts "Enter your balance"
    @balance = gets.to_i
  end
# end


class Person 
  attr_accessor :name, :balance

  def initialize (name, balance)
    name = name
    balance = balance 
    puts "Hello #{name}, Your current balance is #{balance}"
  end

  def increase_balance(number)
    @balance += number 
  end

  def decrease_balance(number)
    @balance -= number 
  end
end 

class Bet < Person
  attr_accessor :name, :balance

  def initialize (bet)
    puts "How much would you like to bet?"
    bet = gets.to_i
    bet.Person.new(decrease_balance)
    puts "You bet #{bet}, Your current balance is #{@balance}"
  end
end

def slots
  Bet.new(@balance)
    sym1 = rand(1..2) 
    sym2 =  rand(1..2)
    sym3 =  rand(1..2)
    winner = "#{sym1}#{sym2}#{sym3}"
    winning_key1 = "111"
    winning_key2 = "222"
    puts "Click 1 to pull the lever!"
    lever = gets.to_i
    puts "| #{sym1} || #{sym2} || #{sym3} |"
    # puts winner
    if winner == winning_key1
      puts "You won!"
      elsif winner == winning_key2
        puts "You won!"
    else
      puts "You Lost :( "
  end
  # how much you win if you win 
  # placing an intial bet
end

def menu
  puts '1. Player Information'
  puts '2. Slots'
  puts '3. High / Low'
  puts '4. Three Card Monte'
  puts '5. Check Balance'
  puts '6. Exit'
  menu_choice = gets.strip.to_i
  if menu_choice == 1
    # app = App.new 
    init_person
    current_user = Person.new(@name, @balance)
    menu
  elsif menu_choice == 2
    # puts 'Here are your available items'
    
    # food_list
    
    slots
    # menu
  # elsif menu_choice == 3
  #   cart_items
  #   menu
  # elsif menu_choice == 4
  #   if @cond_cart_view >= 1
  #   puts "What item would you like to remove from your cart?"
  #   @in_cart_items
  #   index = gets.to_i
  #   remove_item(index - 1)
  #   else 
  #     puts 'There is nothing in your cart to remove.'
  #   menu
  # end
  # elsif menu_choice == 5
  #   checkout
  #   menu
  
  end
end

menu 