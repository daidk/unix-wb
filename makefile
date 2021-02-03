all: README.md

README.md: guessinggame.sh
    touch README.md
    date=$(shell date)
    num_lines=$(shell wc -l guessinggame.sh)
    echo "The title of the program is: Guessing Game - Bash, Make, Git, and GitHub" > README.md
    echo "The date and time at which \`make\` was run: $(date)  " >> README.md
    echo "The number of lines of code contained in \`guessinggame.sh\` is: $(n_lines)  " >> README.md
