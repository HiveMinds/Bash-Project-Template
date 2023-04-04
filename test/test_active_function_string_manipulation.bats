#!./test/libs/bats/bin/bats

load 'libs/bats-support/load'
load 'libs/bats-assert/load'

@test "running the file in /src/active_function_string_manipulation.sh." {
  # Specify input data for test.
  local test_input="This Is a TEST"

  # Load the function that is to be tested.
  source ./src/active_function_string_manipulation.sh

  # Run function that is tested.
  run to_lower "$test_input"

  # Verify result is as expected.
  assert_output "this is a test"
}
