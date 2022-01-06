require_relative '../../lib/wrestler.rb'

RSpec.describe 'have_attributes matcher' do
  describe Wrestler.new('Stone Cold Steve Austin', 'Stunner') do
    it 'checks for object attributes and proper values' do
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin')
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner')
    end

    it { is_expected.to have_attributes(name: 'Stone Cold Steve Austin') }
  end
end
