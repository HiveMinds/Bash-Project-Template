#!/usr/bin/env bash
some_active_function() {
	sum=$(expr "$1" + "$2")
	echo $sum
}
some_active_function "$@"
