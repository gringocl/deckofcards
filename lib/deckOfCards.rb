require_relative 'cards'

class Decks
  def initialize(ranks, suits)
    @ranks = ranks
    @suits = suits
    make_cards
  end

  def show
    @box.each { | c | puts "I am the #{c.rank} of #{c.suit}" }
  end
  
  def shuffle
    @box.shuffle!
  end

  private
    def make_cards
      @box = @ranks.product(@suits).collect { | r, s | Cards.new(r,s) }
    end
end
