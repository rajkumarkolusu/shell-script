#!/bin/bash

Movies("SALAR" "DARLING" "REBEL")
# size of above array is 3
# index are 0,1,2


# list always staets with 0

echo "first movie is: ${Movies[0]}"
echo "first movie is: ${Movies[1]}"
echo "first movie is: ${Movies[2]}"

# i need all movies to show at a time 

echo "first movie is: ${Movies[@]}"  # @ is the syble of all 




