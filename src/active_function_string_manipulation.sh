#!/usr/bin/env bash
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
#to_lower "$@"
