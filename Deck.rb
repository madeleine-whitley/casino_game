class Deck
  # Getter and Setter methods for rank, suit and color
  attr_accessor :cards
 
  # Gets called when you call the new method to create an instance
  # deck = Deck.new
  def initialize
    @ranks = %w(2 3 4 5 6 7 8 9 10 J Q K A)
    @suits = %w(Spades Diamonds Clubs Hearts)
    @cards = []
    generate_deck
  end
 
  def shuffle_cards
   @cards.shuffle
  end
  
  def generate_deck
    @suits.each do |suit|
      @ranks.size.times do |i|
        # Ternary Operator
        color = (suit == 'Spades' || suit == 'Clubs') ? 'Black' : 'Red' 
        @cards << Card.new(@ranks[i], suit, color)
      end
      $scard1 = @suits[rand(4)]
      $rcard1 = @ranks[rand(0..12)]
      $ccard1 = (@suits == 'Spades' || suit == 'Clubs') ? 'Black' : 'Red' 
      $scard2 = @suits[rand(4)]
      $rcard2 = @ranks[rand(0..12)]
      $ccard2 = (@suits == 'Spades' || suit == 'Clubs') ? 'Black' : 'Red' 
      # $hilo.unshift($card1)
      
      
    end
  end
 
   def display_cards
     @cards.shuffle.each do |card|
       puts "#{card.rank} #{card.suit} (#{card.color})"
     end
   end
 end

 


#  def card1_display
#     $card1
#       puts "#{card.rank} #{card.suit} (#{card.color})"
#     end
 
 

 

