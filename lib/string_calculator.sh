#!/usr/bin/env sh

add()
{
  if [ "$1" = "" ]; then
    printf 0
  else
    sum=0
    numbers=$(printf $1 | tr "," "\n")
    for number in $numbers; do
      sum=$((sum+$number))
    done
    printf $sum
  fi
}
