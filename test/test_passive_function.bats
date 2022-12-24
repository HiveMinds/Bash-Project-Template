#!./test/libs/bats/bin/bats

load 'libs/bats-support/load'
load 'libs/bats-assert/load'

@test "running the file in /src/passive_function.sh." {

  # Load the function that is to be tested.
  source src/passive_function.sh

  # Run function that is tested.
  run some_passive_function

  # Verify result is as expected.
  assert_output "hello world"
}
