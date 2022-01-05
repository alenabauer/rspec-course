# Create an example group using ​RSpec.describe​ with an argument of ​Array​.

RSpec.describe Array do
# Invoke the ​subject​ method outside of any example.
#   Give the subject a name of ​:sally.
#   Inside the block, declare a 2-element array with bracket syntax.
  subject(:sally) do
    ['Sally', 'Smith']
  end

  # Add an example that tests that the ​subject​ has a length of 2.
  it 'has a length of 2' do
    expect(sally.length).to eq(2)
    # Invoke the ​pop method to remove an element from the ​subject​ array.
    sally.pop
    # In the same example, write another assertion to check that the length of the array is now 1.
    expect(sally.length).to eq(1)
  end

  # In a second, separate example, write an assertion to confirm that ​sally​ is equal to the original array.
  it 'is equal to the original array' do
    expect(sally).to eq(['Sally', 'Smith'])
  end
end
