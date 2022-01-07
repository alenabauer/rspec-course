require_relative '../../lib/movie/actor.rb'
require_relative '../../lib/movie/movie.rb'

# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
  let(:stuntman) { double(
    'Mr. Danger',
    ready?: true,
    act: "Some string",
    fall_off_ladder: "Another string",
    light_on_fire: false
  ) }
  subject { described_class.new(stuntman) }

  describe 'start_shooting method' do
    it 'expects an actor to do three actions' do
      # expect(stuntman).to receive(:light_on_fire).once
      # expect(stuntman).to receive(:light_on_fire).exactly(1).times
      expect(stuntman).to receive(:ready?).at_most(1).times
      # expect(stuntman).to receive(:act).at_most(2).times
      expect(stuntman).to receive(:act).at_least(2).times
      expect(stuntman).to receive(:fall_off_ladder).once
      expect(stuntman).to receive(:light_on_fire).once
      subject.start_shooting
    end
  end
end
