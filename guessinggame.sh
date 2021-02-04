#!/usr/bin/env bash

function guess_file_number_func(){
	correct_file_number=$(ls -l | wc -l)
	while true;
	do
		echo "Please guess how many files are in the current directory"
		read  guess_file_number
		if [ $guess_file_number -eq $correct_file_number ]
		then
			echo "Congratulations! You have correctly guessed the number of files"
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


    
