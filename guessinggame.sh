function guess_file_number_func(){
    correct_file_number=$(ls -l | wc -l)
    while true;
    do
        echo "Please guess how many files are in the current directory"
        read  guess_file_number
        if [ $guess_file_number -eq $correct_file_number ]
        then
            echo "Congratulations! You have correctly guessed the number of files"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is greater than the correct number of files"
        else
            echo "Your guess is smaller than the correct number of files"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
    
guess_file_number
    
