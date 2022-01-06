# predicate methods

puts 0.zero? # true
puts 10.zero? # false

puts 4.even? # true
puts 3.even? # false

puts 15.odd? # true
puts 20.odd? # false

puts [].empty? # true
puts [1, 2].empty? # false

# predicate matchers

RSpec.describe 'predicate methods and predicate matchers' do
  let(:result) { 16 / 2 }

  it 'can be tested with Ruby methods' do
    expect(result.even?).to eq(true)
  end

  it 'can be tested with predicate matchers' do
    expect(result).to be_even
    expect(15).to be_odd
    expect([]).to be_empty
    expect(result).not_to be_zero
  end
end
