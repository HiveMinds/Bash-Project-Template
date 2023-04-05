#!/usr/bin/env bash
POSITIONAL_ARGS=()


# Specify default argument values.
apply_certs='false'
check_http='false'
check_https='false'
generate_certs_flag='false'
project_name_flag='false'
port_flag='false'

# print the usage if no arguments are given
[ $# -eq 0 ] && { print_usage; exit 1; }


while [[ $# -gt 0 ]]; do
  case $1 in
    -a|--apply-certs)
	    apply_certs='true'
      shift # past argument
      ;;
    -ch|--check-http)
	    check_http='true'
      shift # past argument
      ;;
    -cs|--check-https)
	    check_https='true'
      shift # past argument
      ;;
    -g|--generate-certs)
      generate_certs_flag='true'
      shift # past argument
      ;;
    -n|--project-name)
      project_name_flag='true'
      project_name="$2"
      assert_is_non_empty_string "${project_name}"
      shift # past argument
      shift
      ;;
    -p|--port)
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

set -- "${POSITIONAL_ARGS[@]}" # restore positional parameters

some_active_function() {
  sum=$(("$1" + "$2"))
  echo "$sum"
}
#some_active_function "$@"
