def menu
  puts '1. Player Information'
  puts '2. Slots'
  puts '3. High / Low'
  puts '4. Cups'
  puts '5. Check/Edit Balance'
  puts '6. Exit'
  menu_choice = gets.strip.to_i
  if menu_choice == 1
    # app = App.new 
    init_person
    $current_user = Person.new(@name, $balance)
    menu
  elsif menu_choice == 2
    # puts 'Here are your available items'
    
    # food_list
    
    slots
    
    # menu
  elsif menu_choice == 3
    hilo

  elsif menu_choice == 4
    cups
  
  elsif menu_choice == 5
  increase

elsif menu_choice == 6
  Exit
    else 
      puts 'Not a reconized command!'
    menu
  end
end

  # elsif menu_choice == 5
  #   checkout
  #   menu
  


