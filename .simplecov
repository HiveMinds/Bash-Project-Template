# frozen_string_literal: true

SimpleCov.start do
  minimum_coverage 15
  add_filter "test/libs"
  add_filter "/.git/"
  add_filter "install-bats-libs.sh"
  add_filter "main.sh"
  add_filter "test.sh"
end
