#!/usr/bin/env sh

greet() { printf "Hello, world!"; }

bid_farewell()
{
  if [ "$(has_cake)" = "Yes." ]; then
    printf "Yum!"
  else
    printf "Goodbye, cruel world!"
  fi
}
