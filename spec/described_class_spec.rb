require_relative '../lib/king.rb'

RSpec.describe King do
  subject(:louis) { described_class.new('Louis' )}
  let(:boris) { described_class.new('Boris') }

  it 'represents a great person' do
    expect(subject.name).to eq('Louis')
  end
end
