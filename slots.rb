def slots
  puts "--Welcome to slots! To win all the columns need to be the same number!--"
  puts "Your current balance is #{$balance}"
  betting
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
      # current_user = Person.new(@name, $balance)
  $current_user.increase_balance($balance, @bet)
      elsif winner == winning_key2
        puts "You won!"
        # current_user = Person.new(@name, $balance)
  $current_user.increase_balance($balance, @bet)
    else
      # p @bet
      puts "You Lost :( "
      # current_user = Person.new(@name, $balance)
      $current_user.decrease_balance($balance, @bet)
  end
  # how much you win if you win 
  # placing an intial bet
  puts 'Spin again? Y/N'
  user_choice = gets.strip
  if user_choice == 'y'
    slots
  else
    $current_user = Person.new(@name, $balance)
    menu
  end
end