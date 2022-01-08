class Deck
  def self.build; end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can implement only class methods that are defined on the class' do
    deck = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const # as_stubbed_const: whenever Deck is encountered, it's replaced with the class_double
    expect(deck).to receive(:build)
    subject.start
    expect(subject.cards).to eq(['Ace', 'Queen'])
  end
end
