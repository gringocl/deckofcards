require "minitest/spec"
require "minitest/autorun"
require "deckOfCards"

describe "A deck of cards" do
  rank_array = ['Ace',2,3,4,5,6,7,8,9,10,'Jack','Queen','King']
  suit_array = ['Clubs','Hearts','Diamonds','Spades']

  it "has 52 unique cards" do
    deck = Decks.new(rank_array, suit_array)
    deck.show.count.must_equal 52
    # deck.show.
  end
end
