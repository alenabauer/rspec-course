# falsy values --- false, nil
# truthy values --- everything else

RSpec.describe 'be matcher' do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect(0).to be_truthy
    expect([]).to be_truthy
    expect('Hello').to be_truthy
    expect(23).to be_truthy
    expect(:symbol).to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil' do
    expect(0).not_to be_nil
    expect(nil).to be_nil
    expect({ a: 1 }[1]).to be_nil
  end
end
