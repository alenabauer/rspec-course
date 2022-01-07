RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('col')
      expect(subject).to include('late')
    end

    it { is_expected.to include('chocolate') }
  end

  describe [10, 20, 30] do
    it 'checks for the inclusion in the array, regardless of order' do
      expect(subject).to include(20, 30, 10)
    end

    it { is_expected.to include(10, 30) }
  end

  describe ({a: 1, b: 2}) do
    it 'checks for key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:a, :b)
    end

    it 'checks for key-value pair existence' do
      expect(subject).to include(a: 1)
    end

    it { is_expected.to include(b: 2) }
  end
end
