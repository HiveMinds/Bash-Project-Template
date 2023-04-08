#!/bin/bash

parse_args() {
  # The incoming function arguments are the cli arguments.

  # Specify default argument values.
  local apply_certs_flag='false'
  local check_http_flag='false'
  local check_https_flag='false'
  local generate_certs_flag='false'
  local project_name_flag='false'
  local port_flag='false'

  # $# gives the length/number of the incoming function arguments.
  # the shift command eats the first element of that array, making it shorter.
  while [[ $# -gt 0 ]]; do
    case $1 in
      -a | --apply-certs)
        apply_certs_flag='true'
        shift # past argument
        ;;
      -ch | --check-http)
        check_http_flag='true'
        shift # past argument
        ;;
      -cs | --check-https)
        check_https_flag='true'
        shift # past argument
        ;;
      -g | --generate-certs)
        generate_certs_flag='true'
        shift # past argument
        ;;
      -n | --project-name)
        project_name_flag='true'
        project_name="$2"
        assert_is_non_empty_string "${project_name}"
        shift # past argument
        shift
        ;;
      -p | --port)
        port_flag='true'
        port="$2"
        assert_is_non_empty_string "${project_name}"
        shift # past argument
        shift
        ;;
      -*)
        echo "Unknown option $1"
        print_usage
        exit 1
        ;;
    esac
  done

  process_apply_certs_flag "$apply_certs_flag"
  process_check_http_flag "$check_http_flag"
  process_check_https_flag "$check_https_flag"
  process_generate_certs_flag "$generate_certs_flag"
  process_project_name_flag "$project_name_flag" "$project_name"
  process_port_flag "$port_flag" "$port"
}
