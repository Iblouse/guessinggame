#!/bin/bash
# Creating the guessinggame.sh  program

echo "Guess, how many files are there in the current directory?"
read guessed                # Reading the input

actual=$(ls | wc -l)        # The actual number of files in the directory

function guess {            # The function
  while [[ $guessed -ne $actual ]]
  do
     if [[ $guessed -lt $actual ]]
     then
        echo "Your guess is too low, please guess higher: "
        read guessed
     else
        echo "Your guess is too low, please guess lower: "
        read guessed
     fi
  done
  echo "Congratulation! your guess is correct."
}

guess guessed actual        # Calling the function

 
