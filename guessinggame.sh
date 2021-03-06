#!/usr/bin/env bash

function guess_file_number_func(){
	correct_file_number=$(ls -l | wc -l)
	x=3
	while [[ $x -gt 1 ]]
	do
		echo "Please guess how many files are in the current directory"
		read  guess_file_number
		echo "You entered: $guess_file_number"

		integ='^[0-9]+$'
		if ! [[ $guess_file_number =~ $integ ]] 
		then
			echo "error: Please enter an integer, without decimals" >&2 
			exit 1
		fi

		if [ $guess_file_number -eq $correct_file_number ]
		then
			echo "Yayy! You have correctly guessed the number of files"
		elif [ $guess_file_number -gt $correct_file_number ]
		then
			echo "Your guess is greater than the correct number of files"
		else
			echo "Your guess is smaller than the correct number of files"
		fi
	break;
	done
}
    
guess_file_number_func


    
