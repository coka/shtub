#!/usr/bin/env sh

require()
{
  script_name=$1
  . $SCRIPT_DIRECTORY/../lib/$script_name
}

describe()
{
  print_indentation
  println "$1"
  indent
}

alias context=describe

it()
{
  print_indentation
  CURRENT_EXAMPLE="$1"
}

allow()
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

expect()
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

end() { unindent; }
