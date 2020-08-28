#!/usr/bin/env bash
#File guessinggame.sh

echo "How many files are there in the current directory?"
echo "Go on, make a guess!"

read input
count=$(ls -l | wc -l)
echo $count
