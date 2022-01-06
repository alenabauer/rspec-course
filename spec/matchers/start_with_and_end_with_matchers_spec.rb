RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'should check for a substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('ar')
    end

    it { is_expected.to start_with('c') }
    it { is_expected.to end_with('pillar') }
  end

  describe %w(a b c d) do
    it 'should check for elements at the beginning or end of the array' do
      expect(subject).to start_with('a')
      expect(subject).to start_with('a', 'b')
      expect(subject).to end_with('d')
    end

    it { is_expected.to start_with('a') }
  end
end
