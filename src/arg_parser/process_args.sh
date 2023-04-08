#!/usr/bin/env bash

process_apply_certs_flag() {
  local apply_certs_flag="$1"

  if [ "$apply_certs_flag" == "true" ]; then
    echo "applying certs"
  fi
}

process_check_http_flag() {
  local check_http_flag="$1"

  if [ "$check_http_flag" == "true" ]; then
    echo "Checking your tor domain is available over http."
  fi
}

process_check_https_flag() {
  local check_https_flag="$1"

  if [ "$check_https_flag" == "true" ]; then
    echo "Checking your tor domain is available over https."
  fi
}

process_generate_certs_flag() {
  local generate_certs_flag="$1"
  local organisation="$2"

  if [ "$generate_certs_flag" == "true" ]; then
    echo "Generating your self-signed SSL certificates for:$organisation"
  fi
}

process_project_name_flag() {
  local project_name_flag="$1"
  local project_name="$2"

  if [ "$project_name_flag" == "true" ]; then
    echo "Verified project name:$project_name consists of valid characters."
  fi
}

process_port_flag() {
  local port_flag="$1"
  local port="$2"

  if [ "$port_flag" == "true" ]; then
    echo "Verified the port:$port is in valid range and unused."
  fi
}
