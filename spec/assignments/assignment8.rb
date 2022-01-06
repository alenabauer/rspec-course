# What is an alternate way to write the assertion below?
# expect({}.empty?).to be(true)

expect({}).to be_empty

# Write an assertion that validates that every element in the array [10, 20, 30] is even.

expect([10, 20, 30]).to all(be_even)

# Write an assertion that validates that every element in the array [0, 1, 2] is greater than or equal to 0.

expect([0, 1, 2]).to all(be >= 0)
