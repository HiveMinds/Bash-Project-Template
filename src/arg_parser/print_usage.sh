#!/usr/bin/env bash

function print_usage() {
  printf "\nDefault usage, write:"
  printf "\nsrc/.main.sh -n <projectname>\n to create a private tor website (key) for your project."
  printf "\nsrc/.main.sh -p <port number>\n to specify the port on which your project is locally accessible."
  printf "\nsrc/.main.sh -ch\n              to check whether your private tor website is available on http."
  printf "\nsrc/.main.sh -cs\n              to check whether your private tor website is available on https."
  printf "\nsrc/.main.sh -g\n               to generate self signed SSL certificates for your private tor server."
  printf "\nsrc/.main.sh -a\n               to apply/copy your self signed SSL certificates for your private tor server into some destination."
  printf "\n"
}
