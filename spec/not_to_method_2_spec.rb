RSpec.describe 'not_to method' do
  it 'checks for the inverse of a matcher' do
    expect(5).not_to eq(10)
    expect([1, 2, 3]).not_to equal([1, 2, 3])
    expect(10).not_to be_odd
    expect([1, 2, 3]).not_to be_empty
    expect(false).not_to be_truthy
    expect('chocolate').not_to start_with('a')
    expect(5).not_to respond_to(:length)
    expect([1, 2, 3]).not_to include(4)
    expect { 2 + 3 }.not_to raise_error

  end
end
