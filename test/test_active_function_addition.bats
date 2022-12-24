#!./test/libs/bats/bin/bats

load 'libs/bats-support/load'
load 'libs/bats-assert/load'

@test "running the file in /src/active_function_addition.sh." {
  # Load the function that is to be tested.
  source src/active_function_addition.sh

  # Run function that is tested.
  run some_active_function 9 33

  # Verify result is as expected.
  assert_output 42
}
