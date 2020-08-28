#!/usr/bin/env bash
#File guessinggame.sh

function check {
  if [[ $input -eq $count ]]
  then
    return 0
  elif [[ $input -gt $count ]]
  then
    echo "***You guessed too HIGH! Try again***"
    return 1
  else
    echo "***You guessed too LOW! Try again***"
    return 2
  fi
}

echo "How many files are there in the current directory?"
echo "Go on, make a guess!"

flag=1
while [[ $flag -ne 0 ]]
do
  read input
  count=$(ls -l | wc -l)
  check
  let flag=$?
done
