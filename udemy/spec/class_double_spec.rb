# class Deck
#   # class method is defined with self.method
#   def self.build
#     # logic to build a bunch of cards
#   end
# end

class Deck
  # class method is defined with self.method
  def self.build
    # logic to build a bunch of cards
  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    # use string 'Deck' if Deck class is not yet manualy defined
    # deck = class_double('Deck', build: ['Ace', 'Queen']).as_stubbed_const

    # as_stubbed_const will replace all calls to Deck with this class_double
    deck_klass = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const

    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq ['Ace', 'Queen']
  end
end
