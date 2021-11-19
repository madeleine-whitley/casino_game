def menu
  puts '1. Player Information'
  puts '2. Slots'
  puts '3. High / Low'
  puts '4. Three Card Monte'
  puts '5. Check Balance'
  puts '6. Exit'
  menu_choice = gets.strip.to_i
  if menu_choice == 1
    food_list
    menu
  elsif menu_choice == 2
    # puts 'Here are your available items'
    
    # food_list
    if @cond_cart_view == 0
      @in_cart_items.delete_at(0)
    end
    select_item
    menu
  elsif menu_choice == 3
    cart_items
    menu
  elsif menu_choice == 4
    if @cond_cart_view >= 1
    puts "What item would you like to remove from your cart?"
    @in_cart_items
    index = gets.to_i
    remove_item(index - 1)
    else 
      puts 'There is nothing in your cart to remove.'
    menu
  end
  elsif menu_choice == 5
    checkout
    menu