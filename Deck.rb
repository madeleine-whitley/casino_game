class Deck
  # Getter and Setter methods for rank, suit and color
  attr_accessor :cards
 
  # Gets called when you call the new method to create an instance
  # deck = Deck.new
  def initialize
    @ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
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
    end
  end
 
   def display_cards
     @cards.shuffle.each do |card|
       puts "#{card.rank} #{card.suit} (#{card.color})"
       
     end
   end
 end

 

# class Deck 
#   def initialize 
#     @faces = [*(2..10), 'Jack', "Quenn", "king", "Ace"]
#     @suits = ['clubs', 'spades', 'hearts, diamonds']
#     @cards []

#     @faces.each do |face|
#       if face.class == Integer
#         value = face
#       elsif face == 'Ace'
#         value = 11
#       else
#         value =10
#       end
#       @suits.each do |suit|
#         @cards << Card.new (face,suit,value)
#       end
#     end
#   end

#   @suits.each do |suit|
#     @cards << Card.new(face,suit,value)
#   end

#   def generate_card (player)
#     new_card = Card.new face, suit, value
#     player.hand << new_card
#     player.total = player.total + new_card.value
#   end

#   def deal (num, player)
#     num.times {@cards.shift.generate_card(player)}
#   end
# end