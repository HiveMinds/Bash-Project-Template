#!/usr/bin/env bash
some_active_function() {
  sum=$(("$1" + "$2"))
  echo "$sum"
}

##################################################################
# Purpose: Converts a string to lower case
# Arguments:
#   $@ -> String to convert to lower case
##################################################################
function to_lower() {
  local str="$*"
  local output
  output=$(tr '[:upper:]' '[:lower:]' <<<"${str}")
  echo "$output"
}
