require_relative 'card'

class Deck
  
  attr_reader :suits, :ranks
  
  def initialize(suits, ranks)
    @deck = []
    @suits = suits
    @ranks = ranks
  end
  
end