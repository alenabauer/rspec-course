RSpec.describe 'comparison matchers' do
  it 'allows for comparison with built-in Ruby operators' do
    expect(10).to be > 5
    expect(5).to be < 10
    expect(10).to be <= 12
    expect(10).to be >= 10
  end

  context 100 do # 100 will be a subject in this example group
    it { is_expected.to be > 99 }
    it { is_expected.to be < 101 }
    it { is_expected.to be <= 200 }
    it { is_expected.to be >= 50 }
    it { is_expected.not_to be > 105 }
  end
end
