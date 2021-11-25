def hilo
# puts "Here are your cards:
    $deck = Deck.new
    # $deck.display_cards
    betting
    puts "--Welcome to High/Low! You will guess if the next card will be higher or lower than the current face up card.--"
    puts '-----current face up card-----'
    # p $scard1
    # p $rcard1
    # p $ccard1
    $card1 = Card.new($rcard1, $scard1, $ccard1)
    # $card2 = Card.new($rcard2, $scard2, $ccard2)
    puts 'Is your next card going to be higher or lower than your face up card? H/L'
    hilo_choice = gets.strip
    $card1 = Card.new($rcard1, $scard1, $ccard1)
    $card2 = Card.new($rcard2, $scard2, $ccard2)
    # if $rcard1 == "J"
    #   $rcard1 = "11"
    #   elsif $rcard == "Q"
    #     $rcard1 = "12"
    #   elsif $rcard == ''
    #     $rcard1 = "13"
    #   elsif  $rcard1 =="A"
    #     $rcard1 = "14"
    #   else
    # end

    
    if $rcard2 > $rcard1 && hilo_choice == 'h'
      puts " High Winner!"
      $current_user.increase_balance($balance, @bet)
    elsif $rcard2 < $rcard1 && hilo_choice == 'l'
      puts " Low Winner!"
      $current_user.increase_balance($balance, @bet)
    elsif $rcard2 == $rcard1
      puts "Same value card! you received your original bet back!"
      @bet + $balance
      puts "Your balance is #{$balance}"
    else
      puts "You lost :("
      $current_user.decrease_balance($balance, @bet)
    end
    puts 'Play again? Y/N'
  user_choice = gets.strip
  if user_choice == 'y'
    hilo
  else
    $current_user = Person.new(@name, $balance)
    menu
  end
end