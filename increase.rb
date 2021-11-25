def increase
  $current_user = Person.new(@name, $balance)
  puts "Would you like to increase your balance? Y/N"
  increase_choice = gets.strip
  if increase_choice == "y"
    puts "how much would you like to add?"
  increase_add = gets.to_i
  $current_user.increase_balance_player($balance, increase_add)
  else
    menu
  end
end