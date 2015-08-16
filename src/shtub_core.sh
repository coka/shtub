#!/usr/bin/env sh

. $SCRIPT_DIRECTORY/../src/shtub_helpers.sh
. $SCRIPT_DIRECTORY/../src/shtub_helper_aliases.sh

_shtub_require()
{
  script_name=$1
  . $SCRIPT_DIRECTORY/../lib/$script_name
}

_shtub_describe()
{
  print_indentation
  println "$1"
  indent
}

_shtub_it()
{
  print_indentation
  CURRENT_EXAMPLE="$1"
}

_shtub_allow()
{
  case "$2" in
    --to-return)
      eval "$1() { printf $3; }"
      ;;
    *)
      print_skip "allow()"
      ;;
  esac
}

_shtub_expect()
{
  expected_value="$3"
  actual_value="$1"
  case "$2" in
    --to-eql)
      if [ "$expected_value" = "$actual_value" ]; then
        print_ok
      else
        print_failed
      fi
      ;;
    --not-to-eql)
      if [ "$expected_value" != "$actual_value" ]; then
        print_ok
      else
        print_failed
      fi
      ;;
    *)
      print_skip "expect()"
      ;;
  esac
}
