RSpec.describe 'nested hooks' do
  before(:context) do
    puts "Before context (outer)"
  end

  before(:example) do
    puts "Before example (outer)"
  end

  it 'does basic math' do
    expect(1+1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts "Before context (inner)"
    end

    before(:example) do
      puts "Before example (inner)"
    end

    it 'does basic math' do
      expect(2*2).to eq(4)
    end
  end
end
