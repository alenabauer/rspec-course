RSpec.describe Array do
  it 'should start off empty and have a length of 1 when some element is pushed to the array' do
    expect(subject.length).to eq(0)
    subject.push('apple')
    expect(subject.length).to eq(1)
  end
end
