def cups
puts "--Guess where the $ is in the three radomized cups!--"

myarray = [1 , 2 , 3]

result = []
search_for = rand(0..2)

myarray.each_with_index() { |index, element| result << index if element == search_for }

betting
winner = result[0]
# p winner
puts "What cup is the $ under?"
puts ' [1]  |  [2]  |  [3]  '

cups_choice = gets.to_i
  if cups_choice == winner
    puts "Winner!, Money was under cup #{result}"
    $current_user.increase_balance($balance, @bet)
  else
    puts "You lost! Money was under cup #{result}" 
    $current_user.decrease_balance($balance, @bet)
    p cups_choice
  end
puts "Would you like to play again? Y/N"
user_choice = gets.strip
if user_choice == 'y'
  cups
else
  $current_user = Person.new(@name, $balance)
  menu
end
end
