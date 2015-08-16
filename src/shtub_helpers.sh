#!/usr/bin/env sh

# print helpers

_shtub_println() { printf "$1\n"; }

_shtub_print_indentation()
{
  spaces=$(($SHTUB_DEPTH*2))
  while [ $spaces -gt 0 ]; do
    printf " "
    spaces=$((spaces-1))
  done
}

_shtub_print_ok()
{
  println "\r$(print_indentation)\033[32m$CURRENT_EXAMPLE"
  tput sgr0
  indent
}

_shtub_print_failed()
{
  println "\r$(print_indentation)\033[31m$CURRENT_EXAMPLE"
  tput sgr0
  indent
}

_shtub_print_skip()
{
  println "$CURRENT_EXAMPLE - Invalid use of $1. Skipping..."
  tput sgr0
}

# indentation helpers

_shtub_indent()   { SHTUB_DEPTH=$((SHTUB_DEPTH+1)); }

_shtub_unindent() { SHTUB_DEPTH=$((SHTUB_DEPTH-1)); }
