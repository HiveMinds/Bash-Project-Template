#!./test/libs/bats/bin/bats

load 'libs/bats-support/load'
load 'libs/bats-assert/load'

# Load the functions that are to be tested.
source src/two_functions.sh

@test "Test some_active_function in two_functions.sh." {

  # Run function that is tested.
  run some_active_function 21 21

  # Verify result is as expected.
  assert_output 42
}

@test "Test to_lower in two_functions.sh." {

  # Specify input data for test.
  local test_input="This Is a TEST"

  # Run function that is tested.
  run to_lower "$test_input"

  # Verify result is as expected.
  assert_output "this is a test"
}
