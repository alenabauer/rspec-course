# How do you define a custom subject? Provide a code example.

RSpec.describe Hash do
  subject(:custom_hash) { {a: 1, b: 2, c: 3} }
end

# Write an RSpec test for an array with 2 elements.
# Declare the subject to be [1, 2].
# Write an example that uses expect(subject) to test whether the array is equal to [1, 2].
# Write an example that uses the one-liner is_expected syntax.

RSpec.describe Array do
  subject { [1, 2] }

  it 'equals to the original array' do
    expect(subject).to eq([1, 2])
  end

  context 'with one-liner syntax' do
    it { is_expected.to eq([1, 2]) }
  end
end
