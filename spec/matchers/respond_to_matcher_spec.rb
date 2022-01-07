require_relative '../../lib/hot_chocolate.rb'

RSpec.describe 'respond_to matcher' do
  describe HotChocolate do
    it 'confirms that the object responds to a method' do
      expect(subject).to respond_to(:drink)
      expect(subject).to respond_to(:drink, :discard)
      expect(subject).to respond_to(:drink, :discard, :purchase)
    end

    it 'confirms that the object responds to a method with arguments' do
      expect(subject).to respond_to(:purchase).with(1).arguments
    end
  end
end
